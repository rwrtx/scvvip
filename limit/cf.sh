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
BZh91AY&SY*��  �߀ }������~����PoP�� 0����Fd�i���A��b4��A��L!��4h4����#@��  � �0�@hфh1bd��a@2`s	�4�F��&LM�d&Id�mLh��G�z����C�ƚ�Cɦ��(%N�"j��e�ɏj��Ę��е2Ljz������hDi=�>�W�gw��s
�^��uB�>�xlHi�I�b%�� �Y���&pЧK��%�uiϯ(�c�3X�y�G`�Bay�H�Kx���>q��,hf����z}4�R�o��Q��mx<@���K�tG�M�T����Q���.���L>��D��^�b���h�s�ĕ[f����<��c�}�����n1q�� �k�L��q�+�YsK�r;��P��C��`u�0�;���l�!���>�%�!��|iGb��8�av@�
7 ��g�����<IL-;nu�G�(D8�\n<i�nX�$SJ��^��Nw|R<Dq$o��v��n���%,e⒍li�!�p1�I�����who�@8DŪ�s0�: ��x!*�tF�"�+N׈���~@�z���c2�S�a`�r��q����!�!	�P�n	�8��[:�$����ӫ�C�}&_+]刼�n�G l�fG*�8/º2!n1A��g
$m�d��aN/� 𵁍���dk�A�E`�+k�(��")�y��mv9/^P�5�C�C;ւ��Zn���,M���t\?�G�>�B�=�~C���m�\��)��]$�����>HȨT�)=����4��.��Y�a��@���DT�dQ�c5l7�4��ʼ*X���E\4���:,(	�0L����rwT�j�,�]P*�����rE8P�*��