#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY��0  ��� }���oޮ����    P����wn7m��	D�FS�i�3Q�24�4 f��41 5&O P=@h� F��� D�&�Q��'��Q��z@��� � ʡ� ��  �    �$e)���S���h� 44�z�=��K,68�6�8[��4?���8ֱ	�qH�%>�/x�*��T�LJp����qlk�C
Hy��"Hdv�f��}�g����K'Њ�	�4��*��Y��i[�SZ"�E������Ar�(t"�Q������(��Kl�����O��}F�m�
��r�Q&�m�e��U$��e��M��Y�q,����)�ͯ�Ȃ)k��x�Ss"�E-�g���]��H���+�����u��tP:s�/M4�9)��"gFZ��S��I�^�(��סy5Œ���0٤�M��h�ل��r��E�!����rȳ�< ����b&��U]�%���3�X�4��;����E�SXz,��>A�&m���qO\�'$��!�&'���4���S��L ���I�����s�\4�&[6���hRsɌ�W�iK�Gu�n�>9_�AsV輬��崊c��iN�lN3��L�X��sy��6�cC^Y�2h\��y�g:�!�x�����l�cy_�͈B���R��~��EJ�ߑ�Pb�'Q�e���$�s䇶��P����3����ji���SV4��Bni]�.-���Y�x�Be#�$���^�2�	E�c�*�k����߉A[��v�dFje���r���z�-4Tl;���C���Y�TD#����(%8h"�LxN�P��;��:cH������Y!���<l�ɠd�d+ m�HD�aLH�c[R��Cf�`/�T��*��4Ժ��X+c��#�s9"��t�F���k2�����s���h�D �B- %",�?A$���NbA&�.�p�!��`