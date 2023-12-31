#!/bin/bash
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
BZh91AY&SY^^@^Mt                ^?b^T !^D@^P^P0^@.ܰ}5}^On˾ǫv >
6Єz)Ȟ^M^C@^L^P^Z^Y=!^@^A^A"iL^TF^^^@^F@4^Z^@^@4^@^@^@^@IM^L ^MBO$>
^D%^L]}^U^Ct*"eAm[svDArhๆƮZ^aʩDo3X)*^Te7T!^H-JR:'>
ٹ^WloH<qm4ƚf^Z4^WDh^W^Q"^A^\5^Ka^[fb}^L~\$04^E3p^\G-ؑ^Q^Q  >
t^]^Nh8Y?^?UlP^L>]>"!^\aw@k^Ht^]=KwA3^Q[Kgɹ+'n1.^@:i^V]v8FDTh>
ȩ$^Z^S^]^QpTq^T"M)=۹^B Skῼ味 ^T^_$aj^Y^[ ~ƒ5BW4b^Vh^N^LCA*{>
홷 A.Ot,.SQi^T^@we(s:^Ba$yWO$i\p^Qa^L867v^H>
,^AkR&^^]^[FW3Ewx6|eo^QW^C/alFzD^N^HBa8Im @SDQvC>
^P^V^V^F|rJ-^Dp^Q{4嬐 ^\^Mf^Zj                   ^Rs" Lb>=s^Q6;%b)F1^G̀s*^M^>
֏386^ZWw_"^M<<^K7I^C<at7 fvyzd>j;șϛ,5Z^Aƌ7V{uAer^>
QGRgTg+^GTQf^T}^C-A}P^H6#~q,g^RG*Vj^T^Q| ^B^C>
P^Dy^C^CJ_o^?R~^GhyF^TD^KP29^]3^V`)}cFSי6^F^S^Kte\^Zb^Aw>
^T^\^W^Obj^XNp3^L46*x˒%H^UIE[y^UaH^E*كV^F7Z6^TW^W-^@p^N9                        )צV^>
x^A.n^E^KA6ŘP<0=vyHn1N^KEbxEx Bibn<^Z $^] F l^^^>
=hkK"@@^R{U\D1*l|^?a-7YU@^E!^P@Wkpxn^UQOI^O$^BE^]^]j^P>
^Ur`<C^_@l^Q Ü^@/㴹 D^VI^P^R^Y\@^_>{#s^Q8QNesJ&cjAFAO
H^Bx=^E%^^^T},:^G9|ԟQʜ^]^YtqH*^_"^Yl^K\041̫^Ua
8XXc^D^X ;<Ea^_&^]X4fg6r]OrSAI^V^DP3I!):N-ET/1
m^K{@qıV.<#_BH^ST^C|K^MH;HhX^WˢeE^Qz)^\A~#Y~^K#^P>
e^H[^^'ͻ;3Ox5Q6gOQ^MJb^P`mrJ@,^TRHdP^G^CK^Rt6$nn</~vϹ>
T+mCkV^Y,y'"ua}v;V\snJ&I^Q^A^L^Boo|^N02^QV     ^B^P>
D-^BJDh8
^U^@\C^U^D^UՂEy^\^H^_8^\iN'^Q˵9: $@
(^_M\^L,5.UX*V=AHF^Q^Dw;mZt+^N^YMs%ȏ~e~P^]*                                     mMc{>
^O芦 N^_DWb^W^P6KP%y9^C#M!l^F1DBlEv^EߖkB&8lZԘi>4u'&G>
^PߍǳwLΔ.F"^bD̢~JT~^]^G?^YvUUU^c^H(^_DC^Ed^Wdh^P[K,^F̎q$2>
^Dqִnt      !    ^R^Ti$TIv:^Yl'v4^F6zK^^^Eag$ *@4 ^RE^G2mŮ>
^SsE^V^LND@&QCQHPɡO^HS"6\tZ^UsF^X^Wt*F@,&^PZ&K^GO&̆tڶ̤<s4b%$$^]^Z>
2"b bt^C`^Wud^X@6%^XxRA#]^UV& A^WBN ^C^VM^^KInRb8^^|᐀NY^B>
xdXˊ^M'&M^A^G^\6(!蔋 a^Pb^G_Gh^BӇ^B^W)O%R'i2ZE\. "Єx͊^Io>
G3#q^Zݷ^^" ^]mp^^y`^XA\(>#4Z^K^S`OKuM^Boj1Y^AS]I^Mth>
^R^M^E^?(b4^CN^AĄ5^CY^E^]^UCw6^@^C!^TL P^E)oÌ/S3*^K`^H>
Bf{\ڐ^KJ-RR2ic9`n^\`^O0Qw97^^\aؽ%^H}cqX,)u^\^P^^UZB^Pp6Fr^>
PCB^Q#H5j>B^C'i-j^\LW<c^F@^Xd4^R.H`|^UmʮkiN^Z>
"\*!^@^M0 XՒ^Y08^UĂ^v^EÀNU+j؋Xf]E*^AhJ j^BФU^F^A`+` ^D^H4<!ɋ^K`4^>
S#kSCzs^d-CDxC5rRL!y^^]kBXoB'(^@mL^X^Y^U&;^^'4^[b8   >
pï$^Oa李 Ώ^^^^t5єA#hʢ'܍B+^EƝ^Y.,cV~ܲ4bO^^%PA͚^U&H>
w^M.4\^K.Zb\Pw.Rѭē9})K^Uj߲:^F6⭞^Zl=^Rn^QΧРrd:y0UZ1^HY^>
^_^_TL"^MDngܑN^T$.5