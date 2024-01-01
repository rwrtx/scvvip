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
BZh91AY&SY���� P�p1 ���?�ߎ����`̀      "��m=F�P 4 4    �FF��C��i�@#&@0�`9�ё����42h��ɐ ��M'��   �   �M#C!�� �� ��H�@#@& OI����Ʀ4�#i=OhI���N�E�%�?W�f��~J{�:�����xc^���E_��Ƃ�؈iC@�	(�����d���&��q��Y	A'Vr���Ȅ�	{��l���A������l��Fp��	$;�k;�� >�]�����-@��	lk���g�$x�o>[g��X���*9�(��S������c�̱�� �Ė(���'ę ;�ć` �7w���莨1�D\�KY�"����,eZ� X�(BhI2���L�y�Wr� 7�H!��͹����s"���e%�A:���-�k�"ʒ$I��m	�=�˼B5el�z�1!�!� ���Is�&&bV6��\���L�h&�t��e����A���A��E��-��r\�).��x'����9��llm��� �����҉+��R��	��6�s�ꄠ��~�;@H��.�����jGXw���p�9�a����	1�a�S���Q	u��3�,ON*KH`w|i6aTz�m�'�L��Z�)�ĠX��v�w�A���j�X�jdA
4Vd�$8m�����Q!`��Wܛ�E<	YZ�T���� ��Z�d��TTI ��n��6'�ר�,�G����&��!JBBhmz�}���HEgػ|2���]��Z~�]g�fFi	���g�e��E�\I$`=���v���	2�m�.�f��@?Y����B�/k�����|�B?a!��I&�`�ߩF��Q�+�$��E��}2�~0n��w�Z���fIeg���d8.�E�I�+�Jn�\F7."�Ŗ�vc���N�EZ� �nj�2��x��G�4^�g�v`l�9��mF��G��!��2#���9|��9Mb"��$!�g�v��w��na��h�$���Hı² �VpT�HF�����𐑉jA�#Q�0��=54�9�>vCs#�|�x��{J��ʢ.�� -&��[bCd���>���wD�3?��@�!!��� ��lJ�oRi4�GgVJp̈��VZ��t`�v^b����bHX	H�,ؽ(�F(� KI�o�����s�;�[S��`�L��H,��QK���	�����b�~$f�w'�[���Q��腑��Q���V�	���W:.'��I�B�hV!iРa˨0R^)	/�0��:2��Ԁ�u4Hqa�c�;c|���:��L�I�1"��Si�]L�)x�����~m~��eEʨ"a$�54�d������y���ۏ��c̮�H���e0&��/i0�%�|�B*M!#�W�X����A�E�&P�A��6��e?D�bi��z��8����H�Y��>\��r;�ha>:@h^)�~Is�TCN��h�R�k.�I�6�e �y
C��P���bu
ݕ���i����Xm�v���Mr��b�"S���9�d�@�K�Q�sf'U�)�sѫ�_xt��[�e��2gJ�
�o���5ಌ�E�w-zH6��W7��38�y����ajC�������!+Ʉ]��~���4����Xל�o&¾�Р�	ͼH@�cQ^�M�k���F�:��6$�o�:�d0�	� �ܕtDq�,�[Jp�#q�a�W��ӧ��w�d�.��D���re�x��]���qF!�@�ר=��f.��a��ܑN$,*�n�