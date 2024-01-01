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
BZh91AY&SY�Q5  �߀ }��?7ߎ?���Pxyxb�!� &L &�0� & 	�a H�52eM �  4�h�CSS1
z��z����4�Pi��JS&LL��H�OS�h=#OS@������<�O;�Jm\��U�J�uP(������m^�4݈(���
f���A0Ђ/�ϲ�Km��NR�jƚu����YTx!Z*�:�DAE	��ۈ��e8��m"A��"��
!q?���צ4�HT~�;A��K�����t�1HFm`��੶۶��U����%D�SQ&��G������\�h)׃��<�a�M�T9G��̥���Cn�����(THK��d�22-u��$�1&��.���^g<�d�/4<�T�^�C��'5�5q7�p�N�f�?W�ls�1���U+Z:�`iB��cu<���<�
�-+c 7���3$�I$�KWsҮJ����84��>T4ڦt>��A�~ �P�y �Z�0�+q&�JU�bRI_X`�"��%`X	kW��mG��$��2H�488ȱrH,�TjF�Cj6�� ̃"з���q���k��e�1�ox<���s�j�Q؆9=��� ���2�GPlu�F�8�����,~�"BBBBB@�>�@던n�p1hWGZ��Y��IŹ
�0(�LB�R�ƸL$81s7�0kW����0��&HB1f; :���X�s{+���2BE��IB�&6��t!7��:!-�`w5�7ŋ�@�C��w$S�	EP`