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
BZh91AY&SY�� � (�w� }���o߮����    P���ڣ��l����4Ԟi1�{Jy4jzF&�� ���P��G���24Ѧ@b`� h�@`L�" ���)�aI���CQ�1�@ ���24Ѧ@b`� h�@`L�$��?�2�S�)�a ��@�ѓA��ń�fH�ӥ-�)�j��� \+h�|
�+�k��ٌ����\�nV3�-}��bG�O���G�ߟeŇ��1ku©�d��jY�v�~sW�����`1�6k>w�D����"��_��=�b��ĺ���0W�U9a�db��sfS����k����뵌��7D���W:�B�X�l��{R���/s>c���Q�tߌ�U�vұ	횼�L�Wm��q8��k�s-��K�˧��|���C݇&iQIhK���/�CIo��E
%��f��<�z*���"o:|� ���� ee���[q�vT�؍���s�%f8�G�Ñ+��"-��A�H>'�������C���|X��`��:-P��0BW��ϟ>x5�G5&d׍��ۜO�n}�3��3�I}�'�����X����@���^�E�:-T�F��s�Z���:���2MӔ�BGV��vG.�3n����2�)"�6פd�T|ʏ�p)����X]/Y�w<����UFN�F8��L�xƩP�V�1*���o��H�,Lqip�ݱ��l�
^HFݕ����E���
��ʹ�')�����b �,
�[��~�6��W�e%�^h�(�M��Y��3��܍B�9�7��D���4�!������u�}���j^� �-F�D`C��1�5�KZ0��$���X��OX�x@� c�}��S-1hy�B�;��X��6�(��fFB�na�K�aV�̊	cd8�k��j&c9��c�����d�,�(M�2�[������K�z�g1���_�dTT�A�L�a@�-n��yu�h@�&���mf1��jcq��Id�շ��sŨS��3��0����Vr��PS>��	b��߰���n_��N/4�F�eF޲/�s���'�J3�(i�˚چR��r�LU#.Ȏ@��E��1�)�oU	�8��K�:��`��L�V��)p-�Z"sD�EKh�`0��%:�rP8S�t�5#|B�F���gy�6����h��p�6�Y6�����pqxni-�K� B��А)���.�p�!��<