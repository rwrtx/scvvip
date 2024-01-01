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
BZh91AY&SY\�� i��t����/�߮����    Py�j��b����M5M3bzA�O��Q���!�� hi�P�@�	������@ �     "B)����6P4�F@Pd�ѣM24�24Ѧ@b`� h�@`L�$I�E0�꟩���=Cj=A��C&���G�� <���m$��`�N��O�v�,}��ەc�rnM��Km��G3�uo�x���."�1�4T��
�~,�]Ţ�B� �ݢÕ�m�T���W��&X@8JUb�9�ml|Qh�H̄
(
+_���Hǚ�^�� qS��/#�}���ڹYNo����R����f"��[Z���~Y0��X���y�����%k���ШZ�9�AUJ���il����K��)J���w��q�``S�ˡron�J�39h3 ;��4�EH����Լ^�m۩�y����12v�������n,�"���ͽ;Đ��IEɗ b�%炘~[Yn9LŖ�ۿO4:>H@�0�
���s����G�&�����&����V ���i���.��"�L]��\�0%������M��7[`ܢHZd㌳�0K�� C!P����Ӟ�g�OF�φG���(xE[�x~�����z@h��^��n��ӹ�C�N�1mH�4��O�8Db�Na-p�1��<��c��������Z��ߋFt�i�.�6M�ڶ�,iuubI���Z��� ��&؄Ш��%Jn�*cRK�AZ�D9bc��ÿ���x�yj4��l-�U7څQ���e��|)�"�Ĥd���%x4�x�6"���/U��k�ېmMI�a�k\�
�@&����)(FU�=�Ai���v-LoF����D�_���@�B�²!���a-�M�q��$`$Ŷ��6��8I��^�h��x���� {WF5a=f)���8�C,ؼP�Xc)΢7/�
�t����^��,�iZ��C[��&;�,+�(UD��D�t���.�!��+uys�j ]k"�Ɖ��,�x��@/ 
�y��d� ��ԗ�W*��I��(Q�*QlIDύ���X]y�&��A�X\V��<Ũ1�dY�ׄpNi
�d#`�s�vER`�V �3�N��!)p�� ZP��Mff��m����D%,���*�l%׎��h�8
�Y�"�p-C�r�D_�*P]�rE8P�\��