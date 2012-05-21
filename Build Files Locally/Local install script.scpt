FasdUAS 1.101.10   ��   ��    k             l      ��  ��   
"Local install script"
written by greenyouse
greenyouse@gmail.com

v1.0 May 21 2012
-initial release

This file is part of Moirai Web Builder.

Moirai Web Builder is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Moirai Web Builder is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Moirai Web Builder.  If not, see <http://www.gnu.org/licenses/>.
     � 	 	 
 " L o c a l   i n s t a l l   s c r i p t " 
 w r i t t e n   b y   g r e e n y o u s e 
 g r e e n y o u s e @ g m a i l . c o m 
 
 v 1 . 0   M a y   2 1   2 0 1 2 
 - i n i t i a l   r e l e a s e 
 
 T h i s   f i l e   i s   p a r t   o f   M o i r a i   W e b   B u i l d e r . 
 
 M o i r a i   W e b   B u i l d e r   i s   f r e e   s o f t w a r e :   y o u   c a n   r e d i s t r i b u t e   i t   a n d / o r   m o d i f y 
 i t   u n d e r   t h e   t e r m s   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   a s   p u b l i s h e d   b y 
 t h e   F r e e   S o f t w a r e   F o u n d a t i o n ,   e i t h e r   v e r s i o n   3   o f   t h e   L i c e n s e ,   o r 
 ( a t   y o u r   o p t i o n )   a n y   l a t e r   v e r s i o n . 
 
 M o i r a i   W e b   B u i l d e r   i s   d i s t r i b u t e d   i n   t h e   h o p e   t h a t   i t   w i l l   b e   u s e f u l , 
 b u t   W I T H O U T   A N Y   W A R R A N T Y ;   w i t h o u t   e v e n   t h e   i m p l i e d   w a r r a n t y   o f 
 M E R C H A N T A B I L I T Y   o r   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E .     S e e   t h e 
 G N U   G e n e r a l   P u b l i c   L i c e n s e   f o r   m o r e   d e t a i l s . 
 
 Y o u   s h o u l d   h a v e   r e c e i v e d   a   c o p y   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e 
 a l o n g   w i t h   M o i r a i   W e b   B u i l d e r .     I f   n o t ,   s e e   < h t t p : / / w w w . g n u . o r g / l i c e n s e s / > . 
   
  
 l      ��  ��   ke
This script will automate all three parts of the web building process for either movies or TV shows.  First it deletes old files in a directory.  Then folders are created.  Finally, the HTML5 pages will be generated using parallel processing for the code writing (speeds everything up quite a bit).  Don't forget, you can delete the "choose folder" at the top and code in your own alias (try making multiple copies of this sheet for each alias) so your computer can automate this script on a cron.  Enjoy!  

Note: Needs "_" in show, season, and episode html page titles instead of " " (spaces will break a url)
     �  � 
 T h i s   s c r i p t   w i l l   a u t o m a t e   a l l   t h r e e   p a r t s   o f   t h e   w e b   b u i l d i n g   p r o c e s s   f o r   e i t h e r   m o v i e s   o r   T V   s h o w s .     F i r s t   i t   d e l e t e s   o l d   f i l e s   i n   a   d i r e c t o r y .     T h e n   f o l d e r s   a r e   c r e a t e d .     F i n a l l y ,   t h e   H T M L 5   p a g e s   w i l l   b e   g e n e r a t e d   u s i n g   p a r a l l e l   p r o c e s s i n g   f o r   t h e   c o d e   w r i t i n g   ( s p e e d s   e v e r y t h i n g   u p   q u i t e   a   b i t ) .     D o n ' t   f o r g e t ,   y o u   c a n   d e l e t e   t h e   " c h o o s e   f o l d e r "   a t   t h e   t o p   a n d   c o d e   i n   y o u r   o w n   a l i a s   ( t r y   m a k i n g   m u l t i p l e   c o p i e s   o f   t h i s   s h e e t   f o r   e a c h   a l i a s )   s o   y o u r   c o m p u t e r   c a n   a u t o m a t e   t h i s   s c r i p t   o n   a   c r o n .     E n j o y !     
 
 N o t e :   N e e d s   " _ "   i n   s h o w ,   s e a s o n ,   a n d   e p i s o d e   h t m l   p a g e   t i t l e s   i n s t e a d   o f   "   "   ( s p a c e s   w i l l   b r e a k   a   u r l ) 
      l     ��������  ��  ��        l     ����  r         J            m        �    0      m       �    1       m     ! ! � " "  2    # $ # m     % % � & &  3 $  ' ( ' m     ) ) � * *  4 (  + , + m     - - � . .  5 ,  / 0 / m     1 1 � 2 2  6 0  3 4 3 m     5 5 � 6 6  7 4  7 8 7 m    	 9 9 � : :  8 8  ;�� ; m   	 
 < < � = =  9��    o      ���� 0 
thenumbers 
theNumbers��  ��     > ? > l    @���� @ r     A B A J     C C  D�� D m     E E � F F  -��   B o      ���� 0 numberlabel numberLabel��  ��   ?  G H G l    I���� I r     J K J J     L L  M�� M m     N N � O O   ��   K o      ���� 0 	thespaces 	theSpaces��  ��   H  P Q P l   $ R���� R r    $ S T S J      U U  V�� V m     W W � X X  :��   T o      ���� 0 	thecolons 	theColons��  ��   Q  Y Z Y l  % . [ \ ] [ r   % . ^ _ ^ J   % * ` `  a�� a m   % ( b b � c c  _��   _ o      ���� 0 	thedashes 	theDashes \ ; 5helpful for displaying names in html5 list generation    ] � d d j h e l p f u l   f o r   d i s p l a y i n g   n a m e s   i n   h t m l 5   l i s t   g e n e r a t i o n Z  e f e l  / 8 g h i g r   / 8 j k j J   / 4 l l  m�� m m   / 2 n n � o o  /��   k o      ���� *0 thenormalcharacters theNormalCharacters h ( "change ":" to "/" for html5 coding    i � p p D c h a n g e   " : "   t o   " / "   f o r   h t m l 5   c o d i n g f  q r q l     ��������  ��  ��   r  s t s l  9( u v w u O   9( x y x k   ?' z z  { | { r   ? U } ~ } l  ? Q ����  I  ? Q�� � �
�� .sysodlogaskr        TEXT � m   ? B � � � � � ^ A r e   y o u   s u r e   y o u   w a n t   t o   d e l e t e   t h e   h t m l   f i l e s ? � �� ���
�� 
btns � J   E M � �  � � � m   E H � � � � �  y e s �  ��� � m   H K � � � � �  n o��  ��  ��  ��   ~ o      ���� 0 htmldeletion htmlDeletion |  � � � Z   V � � ��� � � =  V a � � � n   V ] � � � 1   Y ]��
�� 
bhit � o   V Y���� 0 htmldeletion htmlDeletion � m   ] ` � � � � �  y e s � Q   d � � ��� � k   g � � �  � � � r   g p � � � I  g l������
�� .sysostflalis    ��� null��  ��   � o      ���� 0 targetfolder targetFolder �  � � � r   q � � � � n  q | � � � 2   x |��
�� 
cobj � n   q x � � � 1   t x��
�� 
ects � o   q t���� 0 targetfolder targetFolder � o      ���� 0 allfiles allFiles �  ��� � X   � � ��� � � Z   � � � ����� � =  � � � � � n   � � � � � 1   � ���
�� 
nmxt � o   � ����� 0 afile aFile � m   � � � � � � �  h t m l � I  � ��� ���
�� .coredeloobj        obj  � o   � ����� 0 afile aFile��  ��  ��  �� 0 afile aFile � o   � ����� 0 allfiles allFiles��   � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��   � Z   � � ������� � =  � � � � � n   � � � � � 1   � ���
�� 
bhit � o   � ����� 0 htmldeletion htmlDeletion � m   � � � � � � �  n o��  ��  ��   �  � � � r   � � � � � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � � $ C l e a r   f o l d e r s   t o o ? � �� ���
�� 
btns � J   � � � �  � � � m   � � � � � � �  y e s �  ��� � m   � � � � � � �  n o��  ��   � o      ����  0 folderdeletion folderDeletion �  ��� � Z   �' � ��� � � =  � � � � � n   � � � � � 1   � ���
�� 
bhit � o   � �����  0 folderdeletion folderDeletion � m   � � � � � � �  y e s � Q   � � ��� � I  ��� ���
�� .coredeloobj        obj  � n  � � � � 2   ��
�� 
cfol � n   �  � � � 1   � ��
�� 
ects � o   � ����� 0 targetfolder targetFolder��   � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��   � Z  ' ������� � =  � � � n   � � � 1  ��
�� 
bhit � o  ����  0 folderdeletion folderDeletion � m   � � � � �  n o��  ��  ��  ��   y m   9 < � ��                                                                                  MACS  alis    l  
Untitled 1                 ����H+   ��
Finder.app                                                      ǟM�        ����  	                CoreServices    ��.I      ǟ��     �� �t �s  1Untitled 1:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p   
 U n t i t l e d   1  &System/Library/CoreServices/Finder.app  / ��   v " end script 1, begin script 2    w � � � 8 e n d   s c r i p t   1 ,   b e g i n   s c r i p t   2 t  � � � l     ��������  ��  ��   �  � � � l ). ����� � I ).������
�� .miscactvnull��� ��� null��  ��  ��  ��   �  � � � l /4 ����� � I /4������
�� .sysobeepnull��� ��� long��  ��  ��  ��   �  � � � l 5< ����� � I 5<�� ���
�� .sysodlogaskr        TEXT � m  58 � � � � � * W h e r e   a r e   t h e   v i d e o s ?��  ��  ��   �  � � � l =F ����� � r  =F � � � I =B������
�� .sysostflalis    ��� null��  ��   � o      ���� 0 viddirectory vidDirectory��  ��   �  � � � l GL ����� � I GL������
�� .sysobeepnull��� ��� long��  ��  ��  ��   �  � � � l MT ����� � I MT�� ���
�� .sysodlogaskr        TEXT � m  MP � � �    W h e r e   t o   b u i l d ?��  ��  ��   �  l U^���� r  U^ I UZ������
�� .sysostflalis    ��� null��  ��   o      ���� 0 dumpdirectory dumpDirectory��  ��    l _��� O  _	
	 k  e  r  e{ I ew�~
�~ .sysodlogaskr        TEXT m  eh � 4 I s   t h i s   a   T V   S h o w   o r   M o v i e �}�|
�} 
btns J  ks  m  kn �  T V   S h o w �{ m  nq � 
 M o v i e�{  �|   o      �z�z 0 mediachoice mediaChoice �y Z  |�x  = |�!"! n  |�#$# 1  ��w
�w 
bhit$ o  |�v�v 0 mediachoice mediaChoice" m  ��%% �&&  T V   S h o w k  �'' ()( l ��*+,* r  ��-.- n ��/0/ 2 ���u
�u 
cfol0 o  ���t�t 0 viddirectory vidDirectory. o      �s�s 0 showlist showList+ 5 /changes title of each video file for later step   , �11 ^ c h a n g e s   t i t l e   o f   e a c h   v i d e o   f i l e   f o r   l a t e r   s t e p) 232 X  �4�r54 k  �66 787 r  ��9:9 c  ��;<; n  ��=>= 1  ���q
�q 
pnam> o  ���p�p 0 ashow aShow< m  ���o
�o 
ctxt: o      �n�n 0 showname showName8 ?@? r  ��ABA n ��CDC 2  ���m
�m 
fileD o  ���l�l 0 ashow aShowB o      �k�k 0 episodelist episodeList@ E�jE X  �F�iGF l �HIJH k  �KK LML r  ��NON c  ��PQP n  ��RSR 1  ���h
�h 
pnamS o  ���g�g 0 	anepisode 	anEpisodeQ m  ���f
�f 
ctxtO o      �e�e "0 semiepisodename semiEpisodeNameM T�dT Z  �UV�c�bU H  ��WW D  ��XYX o  ���a�a "0 semiepisodename semiEpisodeNameY m  ��ZZ �[[  . n f oV l ��\]^\ k  ��__ `a` r  � bcb b  ��ded m  ��ff �gg  .e n  ��hih 1  ���`
�` 
nmxti o  ���_�_ 0 	anepisode 	anEpisodec o      �^�^ 0 theextension theExtensiona jkj r  (lml n  $non 7 $�]pq
�] 
ctxtp m  
�\�\ q l 
#r�[�Zr l #s�Y�Xs \  #tut l !v�W�Vv I !�U�Tw
�U .sysooffslong    ��� null�T  w �Sxy
�S 
psofx o  �R�R 0 theextension theExtensiony �Qz�P
�Q 
psinz o  �O�O "0 semiepisodename semiEpisodeName�P  �W  �V  u m  !"�N�N �Y  �X  �[  �Z  o o  �M�M "0 semiepisodename semiEpisodeNamem o      �L�L 0 episodename episodeNamek {|{ l ))�K}~�K  } ? 9 This part will build the folders to hold the webpages :D   ~ � r   T h i s   p a r t   w i l l   b u i l d   t h e   f o l d e r s   t o   h o l d   t h e   w e b p a g e s   : D| ��� l ))�J�I�H�J  �I  �H  � ��� r  )4��� m  ),�� ���  .� n     ��� 1  /3�G
�G 
txdl� 1  ,/�F
�F 
ascr� ��� r  5<��� m  58�� ���  A - Z M e n u� o      �E�E 0 
azmenuname 
azMenuName� ��� r  =M��� c  =I��� n  =E��� 4 @E�D�
�D 
cha � m  CD�C�C � o  =@�B�B 0 showname showName� m  EH�A
�A 
ctxt� o      �@�@ 0 
lettername 
letterName� ��� r  N^��� c  NZ��� n  NV��� 4  QV�?�
�? 
citm� m  TU�>�> � o  NQ�=�= 0 episodename episodeName� m  VY�<
�< 
ctxt� o      �;�; 0 
seasonname 
seasonName� ��� Q  _����:� k  b�� ��� l bi���� r  bi��� o  be�9�9 0 
lettername 
letterName� o      �8�8 0 	oldletter 	oldLetter�  test for number   � ���  t e s t   f o r   n u m b e r� ��� r  jq��� m  jm�7
�7 
nmbr� o      �6�6 0 
lettername 
letterName� ��� r  rw��� m  rs�5
�5 boovtrue� o      �4�4 0 numtest numTest� ��3� r  x��� o  x{�2�2 0 	oldletter 	oldLetter� o      �1�1 0 
lettername 
letterName�3  � R      �0�/�.
�0 .ascrerr ****      � ****�/  �.  �:  � ��� Z  �����-�,� = ����� o  ���+�+ 0 numtest numTest� m  ���*
�* boovtrue� l ������ r  ����� n ����� I  ���)��(�) $0 numbercorrection numberCorrection� ��'� o  ���&�& 0 
lettername 
letterName�'  �(  �  f  ��� o      �%�% 0 
lettername 
letterName�  convert number to "Num"   � ��� . c o n v e r t   n u m b e r   t o   " N u m "�-  �,  � ��� Z  �����$�� l ����#�"� I ���!�� 
�! .coredoexbool        obj � n ����� 4  ����
� 
cfol� l ������ c  ����� o  ���� 0 
azmenuname 
azMenuName� m  ���
� 
TEXT�  �  � o  ���� 0 dumpdirectory dumpDirectory�   �#  �"  � r  ����� n ����� 5  �����
� 
cfol� o  ���� 0 
azmenuname 
azMenuName
� kfrmname� o  ���� 0 dumpdirectory dumpDirectory� o      �� 0 alphafolder alphaFolder�$  � r  ����� I �����
� .corecrel****      � null�  � ���
� 
kocl� m  ���
� 
cfol� ���
� 
insh� o  ���� 0 dumpdirectory dumpDirectory� ���
� 
prdt� K  ���� ���
� 
pnam� o  ���
�
 0 
azmenuname 
azMenuName�  �  � o      �	�	 0 alphafolder alphaFolder� ��� Z  �9����� l � ���� I � ���
� .coredoexbool        obj � n ����� 4  ����
� 
cfol� l ������ c  ����� o  ��� �  0 
lettername 
letterName� m  ����
�� 
TEXT�  �  � o  ������ 0 alphafolder alphaFolder�  �  �  � r  ��� n ��� 5  �����
�� 
cfol� o  	���� 0 
lettername 
letterName
�� kfrmname� o  ���� 0 alphafolder alphaFolder� o      ���� 0 letterfolder letterFolder�  � r  9��� I 5�����
�� .corecrel****      � null��  � ����
�� 
kocl� m  ��
�� 
cfol� ����
�� 
insh� o  !$���� 0 alphafolder alphaFolder� �����
�� 
prdt� K  '/   ����
�� 
pnam o  *-���� 0 
lettername 
letterName��  ��  � o      ���� 0 letterfolder letterFolder�  Z  :��� l :L���� I :L����
�� .coredoexbool        obj  n :H	
	 4  =H��
�� 
cfol l @G���� c  @G o  @C���� 0 showname showName m  CF��
�� 
TEXT��  ��  
 o  :=���� 0 letterfolder letterFolder��  ��  ��   r  O` n O\ 5  R\����
�� 
cfol o  UX���� 0 showname showName
�� kfrmname o  OR���� 0 letterfolder letterFolder o      ���� 0 
showfolder 
showFolder��   r  c� I c�����
�� .corecrel****      � null��   ��
�� 
kocl m  gj��
�� 
cfol ��
�� 
insh o  mp���� 0 letterfolder letterFolder ����
�� 
prdt K  s{ ����
�� 
pnam o  vy���� 0 showname showName��  ��   o      ���� 0 
showfolder 
showFolder  Z  �� !��"  l ��#����# I ����$��
�� .coredoexbool        obj $ n ��%&% 4  ����'
�� 
cfol' l ��(����( c  ��)*) o  ������ 0 
seasonname 
seasonName* m  ����
�� 
TEXT��  ��  & o  ������ 0 
showfolder 
showFolder��  ��  ��  ! r  ��+,+ n ��-.- 5  ����/��
�� 
cfol/ o  ������ 0 
seasonname 
seasonName
�� kfrmname. o  ������ 0 
showfolder 
showFolder, o      ���� 0 seasonfolder seasonFolder��  " r  ��010 I ������2
�� .corecrel****      � null��  2 ��34
�� 
kocl3 m  ����
�� 
cfol4 ��56
�� 
insh5 o  ������ 0 
showfolder 
showFolder6 ��7��
�� 
prdt7 K  ��88 ��9��
�� 
pnam9 o  ������ 0 
seasonname 
seasonName��  ��  1 o      ���� 0 seasonfolder seasonFolder :��: Q  ��;<��; l ��=>?= Z  ��@����A@ l ��B����B I ����C��
�� .coredoexbool        obj C n ��DED 4  ����F
�� 
fileF l ��G����G o  ������ 0 episodename episodeName��  ��  E o  ������ 0 seasonfolder seasonFolder��  ��  ��  ��  ��  A I ����HI
�� .coremoveobj        obj H o  ������ 0 	anepisode 	anEpisodeI ��J��
�� 
inshJ o  ������ 0 seasonfolder seasonFolder��  > 3 -done to prevent duplicates from being entered   ? �KK Z d o n e   t o   p r e v e n t   d u p l i c a t e s   f r o m   b e i n g   e n t e r e d< R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ] % Keeps .nfo files in their place   ^ �LL > K e e p s   . n f o   f i l e s   i n   t h e i r   p l a c e�c  �b  �d  I  below changes the name   J �MM , b e l o w   c h a n g e s   t h e   n a m e�i 0 	anepisode 	anEpisodeG o  ������ 0 episodelist episodeList�j  �r 0 ashow aShow5 o  ������ 0 showlist showList3 N��N l ��������  ��  ��  ��  �x    Z  OP����O = QRQ n  STS 1  ��
�� 
bhitT o  ���� 0 mediachoice mediaChoiceR m  UU �VV 
 M o v i eP k  WW XYX r  &Z[Z m  "\\ �]]  A - Z M e n u[ o      ���� 0 
azmenuname 
azMenuNameY ^_^ l '6`ab` r  '6cdc n '2efe 2  .2��
�� 
filef n  '.ghg 1  *.��
�� 
ectsh o  '*���� 0 viddirectory vidDirectoryd o      ���� 0 allvids allVidsa + %builds directory based on video title   b �ii J b u i l d s   d i r e c t o r y   b a s e d   o n   v i d e o   t i t l e_ j��j X  7k��lk k  Mmm non r  MZpqp c  MVrsr n  MRtut 1  NR��
�� 
pnamu o  MN���� 0 avid aVids m  RU��
�� 
ctxtq o      ���� 0 alabel aLabelo v��v Z  [wx����w H  [cyy D  [bz{z o  [^���� 0 alabel aLabel{ m  ^a|| �}}  . n f ox l f~�~ k  f�� ��� r  fr��� n  fn��� 4  in���
�� 
cha � m  lm���� � o  fi���� 0 alabel aLabel� o      ���� 0 lettertitle letterTitle� ��� r  s���� n  s���� 7 v�����
�� 
ctxt� m  |~���� � l ������ \  ���� l ����~�}� I ���|�{�
�| .sysooffslong    ��� null�{  � �z��
�z 
psof� m  ���� ���  .� �y��x
�y 
psin� o  ���w�w 0 alabel aLabel�x  �~  �}  � m  ���v�v ��  �  � o  sv�u�u 0 alabel aLabel� o      �t�t 0 	showtitle 	showTitle� ��� r  ����� n ����� I  ���s��r�s 0 replace_chars  � ��� o  ���q�q 0 	showtitle 	showTitle� ��� m  ���� ���   � ��p� m  ���� ���  _�p  �r  �  f  ��� o      �o�o 0 	showtitle 	showTitle� ��� Q  �����n� k  ���� ��� l ������ r  ����� o  ���m�m 0 lettertitle letterTitle� o      �l�l 0 	oldletter 	oldLetter�  test for number   � ���  t e s t   f o r   n u m b e r� ��� r  ����� m  ���k
�k 
nmbr� o      �j�j 0 lettertitle letterTitle� ��� r  ����� m  ���i
�i boovtrue� o      �h�h 0 numtest numTest� ��g� r  ����� o  ���f�f 0 	oldletter 	oldLetter� o      �e�e 0 lettertitle letterTitle�g  � R      �d�c�b
�d .ascrerr ****      � ****�c  �b  �n  � ��� Z  �����a�`� = ����� o  ���_�_ 0 numtest numTest� m  ���^
�^ boovtrue� l ������ r  ����� n ����� I  ���]��\�] $0 numbercorrection numberCorrection� ��[� o  ���Z�Z 0 lettertitle letterTitle�[  �\  �  f  ��� o      �Y�Y 0 lettertitle letterTitle�  convert number to "Num"   � ��� . c o n v e r t   n u m b e r   t o   " N u m "�a  �`  � ��� Z  �<���X�� l ���W�V� I ��U��T
�U .coredoexbool        obj � n ����� 4  ���S�
�S 
cfol� l ����R�Q� c  ����� o  ���P�P 0 
azmenuname 
azMenuName� m  ���O
�O 
TEXT�R  �Q  � o  ���N�N 0 dumpdirectory dumpDirectory�T  �W  �V  � r  ��� n ��� 5  	�M��L
�M 
cfol� o  �K�K 0 
azmenuname 
azMenuName
�L kfrmname� o  	�J�J 0 dumpdirectory dumpDirectory� o      �I�I 0 alphafolder alphaFolder�X  � r  <��� I 8�H�G�
�H .corecrel****      � null�G  � �F��
�F 
kocl� m  !�E
�E 
cfol� �D��
�D 
insh� o  $'�C�C 0 dumpdirectory dumpDirectory� �B��A
�B 
prdt� K  *2�� �@��?
�@ 
pnam� o  -0�>�> 0 
azmenuname 
azMenuName�?  �A  � o      �=�= 0 alphafolder alphaFolder� ��� Z  =����<�� l =O��;�:� I =O�9��8
�9 .coredoexbool        obj � n =K��� 4  @K�7�
�7 
cfol� l CJ��6�5� c  CJ��� o  CF�4�4 0 lettertitle letterTitle� m  FI�3
�3 
TEXT�6  �5  � o  =@�2�2 0 alphafolder alphaFolder�8  �;  �:  � r  Rc��� n R_��� 5  U_�1 �0
�1 
cfol  o  X[�/�/ 0 lettertitle letterTitle
�0 kfrmname� o  RU�.�. 0 alphafolder alphaFolder� o      �-�- 0 letterfolder letterFolder�<  � k  f�  I f��,�+
�, .corecrel****      � null�+   �*
�* 
kocl m  jm�)
�) 
cfol �(
�( 
insh o  ps�'�' 0 alphafolder alphaFolder �&	�%
�& 
prdt	 K  v~

 �$�#
�$ 
pnam o  y|�"�" 0 lettertitle letterTitle�#  �%   �! r  �� n �� 5  ��� �
�  
cfol o  ���� 0 lettertitle letterTitle
� kfrmname o  ���� 0 alphafolder alphaFolder o      �� 0 letterfolder letterFolder�!  �  Z  ��� l ���� I ����
� .coredoexbool        obj  n �� 4  ���
� 
cfol l ���� c  �� o  ���� 0 	showtitle 	showTitle m  ���
� 
TEXT�  �   o  ���� 0 letterfolder letterFolder�  �  �   r  ��  n ��!"! 5  ���#�
� 
cfol# o  ���� 0 	showtitle 	showTitle
� kfrmname" o  ���� 0 letterfolder letterFolder  o      �� 0 
showfolder 
showFolder�   k  ��$$ %&% I ����
'
� .corecrel****      � null�
  ' �	()
�	 
kocl( m  ���
� 
cfol) �*+
� 
insh* o  ���� 0 letterfolder letterFolder+ �,�
� 
prdt, K  ��-- �.�
� 
pnam. o  ���� 0 	showtitle 	showTitle�  �  & /� / r  ��010 n ��232 5  ����4��
�� 
cfol4 o  ������ 0 	showtitle 	showTitle
�� kfrmname3 o  ������ 0 letterfolder letterFolder1 o      ���� 0 
showfolder 
showFolder�    5��5 Q  �67��6 l ��89:8 I ����;<
�� .coremoveobj        obj ; o  ������ 0 avid aVid< ��=��
�� 
insh= o  ������ 0 
showfolder 
showFolder��  9 3 -done to prevent duplicates from being entered   : �>> Z d o n e   t o   p r e v e n t   d u p l i c a t e s   f r o m   b e i n g   e n t e r e d7 R      ������
�� .ascrerr ****      � ****��  ��  ��  ��   % Keeps .nfo files in their place   � �?? > K e e p s   . n f o   f i l e s   i n   t h e i r   p l a c e��  ��  ��  �� 0 avid aVidl o  :=���� 0 allvids allVids��  ��  ��  �y  
 m  _b@@�                                                                                  MACS  alis    l  
Untitled 1                 ����H+   ��
Finder.app                                                      ǟM�        ����  	                CoreServices    ��.I      ǟ��     �� �t �s  1Untitled 1:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p   
 U n t i t l e d   1  &System/Library/CoreServices/Finder.app  / ��  ��  �   ABA l $C����C r  $DED J  FF G��G m  HH �II  ��  E n     JKJ 1  #��
�� 
txdlK 1  ��
�� 
ascr��  ��  B LML l     ��NO��  N " end script 2, begin script 3   O �PP 8 e n d   s c r i p t   2 ,   b e g i n   s c r i p t   3M QRQ l     ��������  ��  ��  R STS l %�U����U O  %�VWV l +�XYZX Z  +�[\��][ = +6^_^ n  +2`a` 1  .2��
�� 
bhita o  +.���� 0 mediachoice mediaChoice_ m  25bb �cc  T V   S h o w\ k  9udd efe l 9?ghig r  9?jkj J  9;����  k o      ����  0 createdletters createdLettersh . ( used for determining letters at the end   i �ll P   u s e d   f o r   d e t e r m i n i n g   l e t t e r s   a t   t h e   e n df mnm r  @Kopo n  @Gqrq 1  CG��
�� 
pnamr o  @C���� 0 dumpdirectory dumpDirectoryp o      ���� 0 tvname tvNamen sts l LWuvwu r  LWxyx n LSz{z 2 OS��
�� 
cfol{ o  LO���� 0 dumpdirectory dumpDirectoryy o      ���� 0 azlist azListv ) #NEEDED FOR HEIRARCHY DON'T ERASE!!!   w �|| F N E E D E D   F O R   H E I R A R C H Y   D O N ' T   E R A S E ! ! !t }~} X  X ��� k  n��� ��� r  nw��� n  ns��� 1  os��
�� 
pnam� o  no���� 0 azmenu azMenu� o      ���� 0 
azmenuname 
azMenuName� ��� r  x���� n x}��� 2 y}��
�� 
cfol� o  xy���� 0 azmenu azMenu� o      ���� 0 
letterlist 
letterList� ��� l �r���� X  �r����� k  �m�� ��� r  ����� n  ����� 1  ����
�� 
pnam� o  ������ 0 aletter aLetter� o      ���� 0 
lettername 
letterName� ��� l ������ s  ����� o  ������ 0 
lettername 
letterName� n      ���  ;  ��� o  ������  0 createdletters createdLetters� ! used for letters at the end   � ��� 6 u s e d   f o r   l e t t e r s   a t   t h e   e n d� ��� r  ����� n ����� 2 ����
�� 
cfol� o  ������ 0 aletter aLetter� o      ���� 0 showlist showList� ��� X  ������� k  ���� ��� r  ����� n  ����� 1  ����
�� 
pnam� o  ������ 0 ashow aShow� o      ���� 0 showname showName� ��� r  ����� n ����� 2 ����
�� 
cfol� o  ������ 0 ashow aShow� o      ���� 0 
seasonlist 
seasonList� ��� X  �h����� k  �c�� ��� r  ����� n  ����� 1  ����
�� 
pnam� o  ������ 0 aseason aSeason� o      ���� 0 
seasonname 
seasonName� ��� r  ���� n ���� 2  ��
�� 
file� o  � ���� 0 aseason aSeason� o      ���� 0 episodelist episodeList� ��� l 		����� X  		������ k  	��� ��� Z  0������� >  (��� n  $��� 1   $��
�� 
nmxt� o   ���� 0 	anepisode 	anEpisode� m  $'�� ���  h t m l� l +,���� k  +,�� ��� r  +6��� m  +.�� ���  .� n     ��� 1  15��
�� 
txdl� 1  .1��
�� 
ascr� ��� r  7@��� n  7<��� 1  8<��
�� 
pnam� o  78���� 0 	anepisode 	anEpisode� o      ���� 0 episodename episodeName� ��� l AH���� r  AH��� o  AD���� 0 episodename episodeName� o      ���� "0 origepisodename origEpisodeName�  backup of the name!   � ��� & b a c k u p   o f   t h e   n a m e !� ��� r  I[��� n IW��� I  JW�� ���� 0 replace_chars     o  JM���� 0 episodename episodeName  m  MP �    �� m  PS �		  _��  ��  �  f  IJ� o      ���� 0 episodename episodeName� 

 r  \e n  \a 1  ]a��
�� 
nmxt o  \]���� 0 	anepisode 	anEpisode o      ���� $0 episodeextension episodeExtension  r  f� n  f� 7 i���
�� 
ctxt m  oq����  l r����� \  r� l s����� I s�����
�� .sysooffslong    ��� null��   ��
�� 
psof o  wz���� $0 episodeextension episodeExtension ����
�� 
psin o  }����� 0 episodename episodeName��  ��  ��   m  ������ ��  ��   o  fi���� 0 episodename episodeName o      ���� 0 episodetitle episodeTitle  !  r  ��"#" b  ��$%$ o  ������ 0 episodetitle episodeTitle% m  ��&& �''  h t m l# o      ���� 0 docname docName! (��( Z  �,)*����) >  ��+,+ n  ��-.- 1  ����
�� 
nmxt. o  ������ 0 	anepisode 	anEpisode, m  ��// �00  h t m l* l �(1231 Z  �(45��64 J  ��77 8��8 I ����9��
�� .coredoexbool        obj 9 n ��:;: 4  ����<
�� 
cfol< l ��=����= o  ������ 0 showname showName��  ��  ; o  ������ 0 viddirectory vidDirectory��  ��  5 k  ��>> ?@? r  ��ABA n ��CDC 4  ����E
�� 
cfolE l ��F����F o  ������ 0 showname showName��  ��  D o  ������ 0 viddirectory vidDirectoryB o      ���� 0 altshow altShow@ GHG l ��IJKI I ����LM
�� .coremoveobj        obj L o  ������ 0 	anepisode 	anEpisodeM �N�~
� 
inshN o  ���}�} 0 altshow altShow�~  J $ move to Season in vidDirectory   K �OO < m o v e   t o   S e a s o n   i n   v i d D i r e c t o r yH P�|P r  ��QRQ c  ��STS o  ���{�{ 0 altshow altShowT m  ���z
�z 
ctxtR o      �y�y 0 
currentloc 
currentLoc�|  ��  6 k  �(UU VWV Q  �XY�xX r  �Z[Z I ��w�v\
�w .corecrel****      � null�v  \ �u]^
�u 
kocl] m  ���t
�t 
cfol^ �s_`
�s 
insh_ o  ���r�r 0 viddirectory vidDirectory` �qa�p
�q 
prdta K  ��bb �oc�n
�o 
pnamc o  ���m�m 0 showname showName�n  �p  [ o      �l�l 0 altshow altShowY R      �k�j�i
�k .ascrerr ****      � ****�j  �i  �x  W ded I �hfg
�h .coremoveobj        obj f o  �g�g 0 	anepisode 	anEpisodeg �fh�e
�f 
inshh o  �d�d 0 altshow altShow�e  e i�ci r  (jkj c  $lml o   �b�b 0 altshow altShowm m   #�a
�a 
ctxtk o      �`�` 0 
currentloc 
currentLoc�c  2 ; 5move anEpisode to vidDirectory and rebuild filesystem   3 �nn j m o v e   a n E p i s o d e   t o   v i d D i r e c t o r y   a n d   r e b u i l d   f i l e s y s t e m��  ��  ��  �  avoid html files   � �oo   a v o i d   h t m l   f i l e s��  ��  � pqp l 1<rstr r  1<uvu n  18wxw m  48�_
�_ 
cfolx o  14�^�^ 0 dumpdirectory dumpDirectoryv o      �]�] 0 	parentfol 	parentFols &  used as a delimiter! (mwahahaha)   t �yy @ u s e d   a s   a   d e l i m i t e r !   ( m w a h a h a h a )q z{z r  =H|}| n  =D~~ 1  @D�\
�\ 
pnam o  =@�[�[ 0 	parentfol 	parentFol} o      �Z�Z 0 
parentname 
parentName{ ��� r  IT��� c  IP��� o  IL�Y�Y 0 
currentloc 
currentLoc� m  LO�X
�X 
ctxt� o      �W�W 0 pathname pathName� ��� l Ug���� r  Ug��� n Uc��� I  Vc�V��U�V 0 replace_chars  � ��� o  VY�T�T 0 pathname pathName� ��� m  Y\�� ���  :� ��S� m  \_�� ���  _�S  �U  �  f  UV� o      �R�R 0 pathname pathName�  change ":" to "_"   � ��� " c h a n g e   " : "   t o   " _ "� ��� l hz���� r  hz��� n hv��� I  iv�Q��P�Q 0 replace_chars  � ��� o  il�O�O 0 pathname pathName� ��� m  lo�� ���   � ��N� m  or�� ���  _�N  �P  �  f  hi� o      �M�M 0 pathname pathName�  change " " to "_"   � ��� " c h a n g e   "   "   t o   " _ "� ��� l {����� r  {���� o  {~�L�L 0 
parentname 
parentName� n     ��� 1  ���K
�K 
txdl� 1  ~��J
�J 
ascr�  this all points   � ���  t h i s   a l l   p o i n t s� ��� l ������ r  ����� n  ����� 4  ���I�
�I 
citm� m  ���H�H � o  ���G�G 0 pathname pathName� o      �F�F 0 	almostloc 	almostLoc�  to the file for the HTML   � ��� 0 t o   t h e   f i l e   f o r   t h e   H T M L� ��� l ������ r  ����� o  ���E�E "0 origepisodename origEpisodeName� n     ��� 1  ���D
�D 
txdl� 1  ���C
�C 
ascr�  coding   � ���  c o d i n g� ��� r  ����� b  ����� n  ����� 4  ���B�
�B 
citm� m  ���A�A � o  ���@�@ 0 	almostloc 	almostLoc� o  ���?�? "0 origepisodename origEpisodeName� o      �>�> 0 	nearlyloc 	nearlyLoc� ��� r  ����� n  ����� 7 ���=��
�= 
ctxt� l ����<�;� [  ����� l ����:�9� I ���8�7�
�8 .sysooffslong    ��� null�7  � �6��
�6 
psof� m  ���� ���  :� �5��4
�5 
psin� o  ���3�3 0 	nearlyloc 	nearlyLoc�4  �:  �9  � m  ���2�2 �<  �;  � m  ���1�1��� o  ���0�0 0 	nearlyloc 	nearlyLoc� o      �/�/ 0 fileloc fileLoc� ��� r  ����� n ����� I  ���.��-�. 0 replace_chars  � ��� o  ���,�, 0 fileloc fileLoc� ��� m  ���� ���  :� ��+� m  ���� ���  /�+  �-  �  f  ��� o      �*�* 0 fileloc fileLoc� ��� r  ����� J  ���� ��)� m  ���� ���  �)  � n        1  ���(
�( 
txdl 1  ���'
�' 
ascr�  l �	" Q  �	"�& l �		
	 l �	 I �	�%�$
�% .corecrel****      � null�$   �#
�# 
kocl m  		�"
�" 
file �!
�! 
insh o  		� �  0 aseason aSeason ��
� 
prdt K  		 ��
� 
pnam o  		�� 0 docname docName�  �    d8888    � 
 d 8 8 8 8
 O Iprevents duplicates from being written----------------------------...d888    � � p r e v e n t s   d u p l i c a t e s   f r o m   b e i n g   w r i t t e n - - - - - - - - - - - - - - - - - - - - - - - - - - - - . . . d 8 8 8 R      ���
� .ascrerr ****      � ****�  �  �&    													888    �   	 	 	 	 	 	 	 	 	 	 	 	 	 8 8 8 � l 	#	� Z  	#	��� J  	#	1   !�! I 	#	/�"�
� .coredoexbool        obj " n 	#	+#$# 4  	$	+�%
� 
file% l 	'	*&��& o  	'	*�� 0 docname docName�  �  $ o  	#	$�� 0 aseason aSeason�  �   l 	4	�'()' k  	4	�** +,+ l 	4	@-./- r  	4	@010 n 	4	<232 4  	5	<�4
� 
file4 l 	8	;5��
5 o  	8	;�	�	 0 docname docName�  �
  3 o  	4	5�� 0 aseason aSeason1 o      �� 0 dfile dFile.  							888   / �66  	 	 	 	 	 	 8 8 8, 787 l 	A	L9:;9 r  	A	L<=< c  	A	H>?> o  	A	D�� 0 dfile dFile? m  	D	G�
� 
alis= o      �� 0 episodefile episodeFile:  
							888   ; �@@  	 	 	 	 	 	 	 8 8 88 ABA l 	M	M�CD�  C 6 0Code for episode html text file!---						   	888   D �EE ` C o d e   f o r   e p i s o d e   h t m l   t e x t   f i l e ! - - - 	 	 	 	 	 	       	 8 8 8B FGF l 	M	M�HI�  H L Fyou can modify this for your own coding needs of course        8888888   I �JJ � y o u   c a n   m o d i f y   t h i s   f o r   y o u r   o w n   c o d i n g   n e e d s   o f   c o u r s e                 8 8 8 8 8 8 8G KLK r  	M	lMNM b  	M	hOPO b  	M	dQRQ b  	M	`STS b  	M	\UVU b  	M	XWXW b  	M	TYZY m  	M	P[[ �\\
� < ! D O C T Y P E   h t m l > 
 < h t m l > 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	       
         < h e a d > 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
                 < s t y l e > 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
                           # v i d e o _ b a c k g r o u n d   { 	 	 	 	 	 	 	 	 	 	 
                         t o p : 0 ; 	 	 	 	 	 	 	 	 	 	 	 	 	 
                         b o t t o m : 0 ; 	 	 	 	 	 	 	 	 	 	 	 	             
                         l e f t : 0 ; 	 	 	 	 	 	 	 	 	 	 	 	       	 
                         r i g h t : 0 ; 	 	 	 	 	 	 	 	 	 	 	 	 	 
                         z - i n d e x : - 1 0 ; 
                     p o s i t i o n : f i x e d ; 
                     h e i g h t : 1 0 0 % ; 
                     w i d t h : 1 0 0 % ; 
                     b a c k g r o u n d - c o l o r : # 0 0 0 0 0 0 
             } 
             . b u t t o n   { 
                     v i s i b i l i t y : v i s i b l e ; 
                     o p a c i t y : 0 ; 
                     - w e b k i t - t r a n s i t i o n : v i s i b i l i t y   0 s   l i n e a r   0 . 5 s , o p a c i t y   0 . 5 s   l i n e a r ; 
                     - m o z - t r a n s i t i o n : v i s i b i l i t y   0 s   l i n e a r   0 . 5 s , o p a c i t y   0 . 5 s   l i n e a r ; 
                     - m s - t r a n s i t i o n : v i s i b i l i t y   0 s   l i n e a r   0 . 5 s , o p a c i t y   0 . 5 s   l i n e a r ; 
                     - o - t r a n s i t i o n : v i s i b i l i t y   0 s   l i n e a r   0 . 5 s , o p a c i t y   0 . 5 s   l i n e a r ; 
                     t r a n s i t i o n : v i s i b i l i t y   0 s   l i n e a r   0 . 5 s , o p a c i t y   0 . 5 s   l i n e a r ; 
                     p o s i t i o n : a b s o l u t e ; 
                     t o p : 1 0 p x ; 
                     l e f t : 5 p x ; 
             } 
             . b u t t o n : h o v e r   { 
                     v i s i b i l i t y : v i s i b l e ; 
                     o p a c i t y : 1 ; 
                     - w e b k i t - t r a n s i t i o n - d e l a y : 0 s ; 
                     - m o z - t r a n s i t i o n - d e l a y : 0 s ; 
                     - m s - t r a n s i t i o n - d e l a y : 0 s ; 
                     - o - t r a n s i t i o n - d e l a y : 0 s ; 
                     t r a n s i t i o n - d e l a y : 0 s ; 
             } 
     < / s t y l e > 
     < / h e a d >                 
     < b o d y > 
             < d i v   c l a s s = ' f l ' > 
                     < v i d e o   i d = ' v i d e o _ b a c k g r o u n d '   p r e l o a d = ' a u t o | m e t a d a t a '   h e i g h t = ' 1 0 0 % ' c o n t r o l s = ' c o n t r o l s '   w i d t h = ' 1 0 0 % '   a u t o p l a y > 
                     < s o u r c e   s r c = ' . . / . . / . . / . . / . . /Z o  	P	S�� 0 fileloc fileLocX m  	T	W]] �^^ v '   t y p e = ' v i d e o / m p 4 ' / > 
                     < s o u r c e   s r c = ' . . / . . / . . / . . / . . /V o  	X	[� �  0 fileloc fileLocT m  	\	___ �`` v '   t y p e = ' v i d e o / o g g ' / > 
                     < s o u r c e   s r c = ' . . / . . / . . / . . / . . /R o  	`	c���� 0 fileloc fileLocP m  	d	gaa �bb� '   t y p e = ' v i d e o / w e b m '   / > 
     < / v i d e o > 
     < b u t t o n   i d = ' f u l l s c r e e n v i d '   c l a s s = ' b u t t o n ' > F u l l s c r e e n   v i d e o < / b u t t o n > 
 < / d i v > 
     < s c r i p t > 
             ( f u n c t i o n ( w i n d o w ,   d o c u m e n t ) { 
 	 	 	 v a r   $   =   f u n c t i o n ( s e l e c t o r , c o n t e x t ) { r e t u r n ( c o n t e x t | | d o c u m e n t ) . q u e r y S e l e c t o r ( s e l e c t o r ) } ; 
 	 	 	 
 	 	 	 v a r   v i d e o     =   $ ( " v i d e o " ) , 
 	 	 	 	 i f r a m e   =   $ ( " i f r a m e " ) , 
 	 	 	 	 d o m P r e f i x e s   =   ' W e b k i t   M o z   O   m s   K h t m l ' . s p l i t ( '   ' ) ; 
 	 	 	 	 
 	 	 	 v a r   f u l l s c r e e n   =   f u n c t i o n ( e l e m )   { 
 	 	 	 	 v a r   p r e f i x ; 
 	 	 	 	 / /   M o z i l l a   a n d   w e b k i t   i n t i a l i s e   f u l l s c r e e n   s l i g h t l y   d i f f e r e n t l y 
 	 	 	 	 f o r   (   v a r   i   =   - 1 ,   l e n   =   d o m P r e f i x e s . l e n g t h ;   + + i   <   l e n ;   )   { 
 	 	                     p r e f i x   =   d o m P r e f i x e s [ i ] . t o L o w e r C a s e ( ) ; 
 	 	 	 	     
 	 	 	 	     i f   (   e l e m [ p r e f i x   +   ' E n t e r F u l l S c r e e n ' ]   )   { 
 	 	                         / /   W e b k i t   u s e s   E n t e r F u l l S c r e e n   f o r   v i d e o 
 	 	 	 	 	 r e t u r n   p r e f i x   +   ' E n t e r F u l l S c r e e n ' ; 
 	 	 	 	 	 b r e a k ; 
 	 	                     }   e l s e   i f (   e l e m [ p r e f i x   +   ' R e q u e s t F u l l S c r e e n ' ]   )   { 
 	 	 	 	 	 / /   M o z i l l a   u s e s   R e q u e s t F u l l S c r e e n   f o r   a l l   e l e m e n t s   a n d   w e b k i t   u s e s   i t   f o r   n o n   v i d e o   e l e m e n t s 
 	 	 	 	 	 r e t u r n   p r e f i x   +   ' R e q u e s t F u l l S c r e e n ' ; 
 	 	 	 	 	 b r e a k ; 
 	 	 	 	     } 
 	 	                 } 
 	 	 
 	 	 	 	 r e t u r n   f a l s e ; 
 	 	 	 } ; 
 	 	 	 
 	 	 	 / /   W i l l   r e t u r n   f u l l s c r e e n   m e t h o d   a s   a   s t r i n g   i f   s u p p o r t e d   e . g .   ' m o z R e q u e s t F u l l S c r e e n '   | |   f a l s e ; 
 	 	 	 v a r   f u l l s c r e e n v i d e o   =   f u l l s c r e e n ( d o c u m e n t . c r e a t e E l e m e n t ( " v i d e o " ) ) ; 
 	 	 	 
 	 	 	 / /   W e b k i t   u s e s   ' r e q u e s t F u l l S c r e e n '   f o r   n o n   v i d e o   e l e m e n t s 
 	 	 	 v a r   f u l l s c r e e n o t h e r   =   f u l l s c r e e n ( d o c u m e n t . c r e a t e E l e m e n t ( " i f r a m e " ) ) ; 
 
 	 	 	 i f ( ! f u l l s c r e e n )   { 
 	 	 	 	 a l e r t ( " F u l l s c r e e n   w o n ' t   w o r k ,   p l e a s e   m a k e   s u r e   y o u ' r e   u s i n g   a   b r o w s e r   t h a t   s u p p o r t s   i t   a n d   y o u   h a v e   e n a b l e d   t h e   f e a t u r e " ) ; 
 	 	 	 	 r e t u r n ; 
 	 	 	 } 
 	 	 	 
 	 	 	 / /   S h o u l d   a d d   p r e f i x e d   e v e n t s   f o r   p o t e n t i a l   m s / o   o r   u n p r e f i x e d   s u p p o r t   t o o 
 	 	 	 v i d e o . a d d E v e n t L i s t e n e r ( " w e b k i t f u l l s c r e e n c h a n g e " , f u n c t i o n ( ) { 
 	 	 	 	 c o n s o l e . l o g ( d o c u m e n t . w e b k i t I s F u l l S c r e e n ) ; 
 	 	 	 } ,   f a l s e ) ; 
 	 	 	 v i d e o . a d d E v e n t L i s t e n e r ( " m o z f u l l s c r e e n c h a n g e " , f u n c t i o n ( ) { 
 	 	 	 	 c o n s o l e . l o g ( d o c u m e n t . m o z F u l l S c r e e n ) ; 
 	 	 	 } ,   f a l s e ) ; 
 
 	 	 	 $ ( " # f u l l s c r e e n v i d " ) . a d d E v e n t L i s t e n e r ( " c l i c k " ,   f u n c t i o n ( ) { 
 	 	 	 	 / /   T h e   t e s t   r e t u r n s   a   s t r i n g   s o   w e   c a n   e a s i l y   c a l l   i t   o n   a   c l i c k   e v e n t 
 	 	 	 	 v i d e o [ f u l l s c r e e n v i d e o ] ( ) ; 
 	 	 	 } ,   f a l s e ) ; 
 	 	 	 $ ( " # f u l l s c r e e n i f r a m e " ) . a d d E v e n t L i s t e n e r ( " c l i c k " ,   f u n c t i o n ( ) { 
 	 	 	 	 / /   i f r a m e   f u l l s c r e e n   a n d   n o n   v i d e o   e l e m e n t s   i n   w e b k i t   u s e   r e q u e s t   o v e r   e n t e r 
 	 	 	 	 i f r a m e [ f u l l s c r e e n o t h e r ] ( ) ; 
 	 	 	 } ,   f a l s e ) ; 
 	 	 } ) ( t h i s ,   t h i s . d o c u m e n t ) ; 
 
         < / s c r i p t > 
 < / b o d y > 
 < / h t m l >N o      ���� 0 episodetext episodeTextL cdc P  	m	�e��fe r  	t	�ghg n 	t	iji I  	u	��k���� 0 	writecode 	writeCodek lml o  	u	x���� 0 episodefile episodeFilem n��n o  	x	{���� 0 episodetext episodeText��  ��  j  f  	t	uh o      ���� 0 episodefile episodeFile��  f ����
�� consrmte��  d opo l 	�	���qr��  q R L--------------------------------------------------------------------.d8888b.   r �ss � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . d 8 8 8 8 b .p t��t l 	�	�uvwu r  	�	�xyx m  	�	�zz �{{  y n     |}| 1  	�	���
�� 
txdl} 1  	�	���
�� 
ascrv  ---------------d88P  Y88b   w �~~ 2 - - - - - - - - - - - - - - - d 8 8 P     Y 8 8 b��  (  							888   ) �  	 	 	 	 	 	 8 8 8�  �   P J-----------			---                        -------------                 888    ��� � - - - - - - - - - - - 	 	 	 - - -                                                 - - - - - - - - - - - - -                                   8 8 8�  �� 0 	anepisode 	anEpisode� o  ���� 0 episodelist episodeList� T N-----------------------------   	-- --------               ---           .d88P   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - -       	 - -   - - - - - - - -                               - - -                       . d 8 8 P� ��� l 	�	����� r  	�	���� b  	�	���� o  	�	����� 0 
seasonname 
seasonName� m  	�	��� ��� 
 . h t m l� o      ���� 0 docname docName� ) #----		   -------------     .od888PI   � ��� F - - - - 	 	       - - - - - - - - - - - - -           . o d 8 8 8 P I� ��� l 	�	����� r  	�	���� c  	�	���� o  	�	����� 0 showname showName� m  	�	���
�� 
ctxt� o      ���� 0 altshowname altShowName� ) #---------    -------------    d88PI   � ��� F - - - - - - - - -         - - - - - - - - - - - - -         d 8 8 P I� ��� l 	�	����� r  	�	���� n 	�	���� I  	�	�������� 0 replace_chars  � ��� o  	�	����� 0 altshowname altShowName� ��� m  	�	��� ���  _� ���� m  	�	��� ���   ��  ��  �  f  	�	�� o      ���� 0 altshowname altShowName�  888I    � ��� 
 8 8 8 I  � ��� l 	�	����� r  	�	���� c  	�	���� o  	�	����� 0 
seasonname 
seasonName� m  	�	���
�� 
ctxt� o      ���� 0 altseasonname altSeasonName� ) #------------------------8888888888    � ��� F - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8 8 8 8 8 8 8 8  � ��� r  	�	���� n 	�	���� I  	�	�������� 0 replace_chars  � ��� o  	�	����� 0 altseasonname altSeasonName� ��� m  	�	��� ���  _� ���� m  	�	��� ���   ��  ��  �  f  	�	�� o      ���� 0 altseasonname altSeasonName� ��� Q  	�
����� I 	�
�����
�� .corecrel****      � null��  � ����
�� 
kocl� m  	�	���
�� 
file� ����
�� 
insh� o  	�	����� 0 ashow aShow� �����
�� 
prdt� K  	�	��� �����
�� 
pnam� o  	�	����� 0 docname docName��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ���� Z  
c������� J  

�� ���� I 

�����
�� .coredoexbool        obj � n 

��� 4  

���
�� 
file� l 

������ o  

���� 0 docname docName��  ��  � o  

���� 0 ashow aShow��  ��  � k  
_�� ��� r  

*��� n 

&��� 4  

&���
�� 
file� l 
"
%������ o  
"
%���� 0 docname docName��  ��  � o  

���� 0 ashow aShow� o      ���� 0 dfile dFile� ��� r  
+
6��� c  
+
2��� o  
+
.���� 0 dfile dFile� m  
.
1��
�� 
alis� o      ���� 0 episodefile episodeFile� ��� l 
7
>���� r  
7
>��� m  
7
:�� ���  < l i > < a   h r e f = '� o      ���� 0 	listpart1 	listPart1�  auto generate HTML lists   � ��� 0 a u t o   g e n e r a t e   H T M L   l i s t s� ��� r  
?
F��� m  
?
B�� ���  ' >� o      ���� 0 	listpart7 	listPart7� ��� r  
G
N��� m  
G
J�� �    < / a > < / l i >� o      ���� 0 	listpart9 	listPart9�  r  
O
U J  
O
Q����   o      ����  0 seasonhtmllist seasonHtmlList  r  
V
_ n 
V
[	
	 2  
W
[��
�� 
file
 o  
V
W���� 0 aseason aSeason o      ���� 0 allfiles allFiles  X  
`�� Z  
v���� = 
v
 n  
v
{ 1  
w
{��
�� 
nmxt o  
v
w���� 0 afile aFile m  
{
~ �  h t m l k  
�  r  
�
� m  
�
� �  . n      1  
�
���
�� 
txdl 1  
�
���
�� 
ascr  !  r  
�
�"#" c  
�
�$%$ o  
�
����� "0 origepisodename origEpisodeName% m  
�
���
�� 
TEXT# o      ���� 0 htmlfile htmlFile! &'& r  
�
�()( n  
�
�*+* 4  
�
���,
�� 
citm, m  
�
����� + o  
�
����� 0 htmlfile htmlFile) o      ���� "0 trueepisodename trueEpisodeName' -.- r  
�
�/0/ m  
�
�11 �22  0 n     343 1  
�
���
�� 
txdl4 1  
�
���
�� 
ascr. 565 r  
�
�787 n 
�
�9:9 I  
�
���;���� 0 replace_chars  ; <=< o  
�
����� "0 trueepisodename trueEpisodeName= >?> m  
�
�@@ �AA   ? B��B m  
�
�CC �DD  _��  ��  :  f  
�
�8 o      ���� "0 trueepisodename trueEpisodeName6 EFE r  
�GHG b  
�IJI b  
�
�KLK b  
�
�MNM b  
�
�OPO b  
�
�QRQ b  
�
�STS b  
�
�UVU b  
�
�WXW b  
�
�YZY b  
�
�[\[ b  
�
�]^] b  
�
�_`_ b  
�
�aba b  
�
�cdc o  
�
����� 0 	listpart1 	listPart1d m  
�
�ee �ff ( . . / . . / . . / . . / T V _ S h o w sb m  
�
�gg �hh  /` o  
�
����� 0 
azmenuname 
azMenuName^ m  
�
�ii �jj  /\ o  
�
����� 0 
lettername 
letterNameZ m  
�
�kk �ll  /X o  
�
����� 0 showname showNameV m  
�
�mm �nn  /T o  
�
����� 0 
seasonname 
seasonNameR m  
�
�oo �pp  /P o  
�
����� 0 htmlfile htmlFileN o  
�
����� 0 	listpart7 	listPart7L o  
�
����� "0 trueepisodename trueEpisodeNameJ o  
� ���� 0 	listpart9 	listPart9H o      ���� 0 	totallist 	totalListF q��q s  rsr o  	���� 0 	totallist 	totalLists n      tut  ;  u o  	����  0 seasonhtmllist seasonHtmlList��  ��  ��  �� 0 afile aFile o  
c
f���� 0 allfiles allFiles vwv r  Gxyx b  Cz{z b  ?|}| b  ;~~ b  7��� b  3��� b  /��� b  +��� b  '��� b  #��� b  ��� m  �� ���� < ! D o c t y p e   h t m l > 
 < h e a d > 
         < t i t l e > A   S h o w   E x a m p l e < / t i t l e > 
         < m e t a   c h a r s e t = ' U T F - 8 '   / > 
         < s t y l e > 
                 b o d y   { 
                         m a r g i n : 0 ; 
                         p a d d i n g : 0 ; 	 	 	 	 	 	 	 	     
                         h e i g h t : 1 0 0 % ; 	 	 	 	 	 	 	 	   
                         b a c k g r o u n d - c o l o r : # 0 0 0 ; 	 	 	 	 	 	   
                 } 	 	 	 	 	 	 	 	 	 	 	   
 	 	 	 	 	 	 	 	 	 	 	 	     
                 < ! - -   N a v   m e n u   - - > 	 	 	 	 	 	 	             
                 # n a v i g a t i o n   { 	 	 	 	 	 	 	 	             
                         p o s i t i o n : a b s o l u t e ; 	 	 	 	 	 	 	 
                         t o p : 1 9 5 p x ; 
                         l e f t : 6 0 p x ; 
                 } 
                 . n a v   { 
                         l i s t - s t y l e : n o n e ; 
                         w i d t h : 1 0 0 p x ; 
                         l i n e - h e i g h t : 2 0 p x ; 
                 } 
                 . n a v   l i   a   { 
                         f o n t - f a m i l y :   ' M a r i o n R e g u l a r ' ; 
                         c o l o r : # 8 0 8 0 8 0 ; 
                         f o n t - s i z e : 1 0 p t ; 
                         t e x t - d e c o r a t i o n : n o n e ; 
                         b a c k g r o u n d - c o l o r : r g b a ( 0 , 0 , 0 , . 8 ) ; 
                 } 
                 . n a v   l i   a : h o v e r   { 
                         c o l o r : # 5 1 5 6 C F ; 
                 } 
 
                 < ! - -   N a v   s u b - m e n u s   - - > 
                 d i v # n a v i g a t i o n   a : h o v e r   { 
                         c o l o r : 5 1 5 6 C F ; 
                 } 
 
                 . n a v   l i   . d a r k B t n   { 
                         c o l o r : # 3 A 3 A 3 A ; 
                 } 
 
                 < ! - -   S p a c e   f o r   N a v   B a r   - - > 
                 # n a v _ s h i e l d   { 
                         p o s i t i o n : a b s o l u t e ; 
                         l e f t : 0 p x ; 
                         t o p : 0 p x ; 
                         w i d t h : 2 6 0 p x ; 
                         b a c k g r o u n d - c o l o r : r g b a ( 0 , 0 , 0 , 1 ) ; 
                 } 
 
                 < ! - -   S e a s o n / E p i s o d e   S e l e c t i o n   - - > 
                 # S E _ n a v i g a t i o n   { 
                         p o s i t i o n : a b s o l u t e ; 
                         l e f t : 2 6 5 p x ; 
                 } 
 
                 . S E _ n a v   { 
                         l i s t - s t y l e : n o n e ; 
                         w i d t h : 1 0 0 p x ; 
                         l i n e - h e i g h t : 2 0 p x ; 
                         f o n t - s i z e :   1 9 p x ; 
                 } 
 
                 . S E _ n a v   l i   a   { 
                         f o n t - f a m i l y :   ' M a r i o n R e g u l a r ' ; 
                         c o l o r : # F F F F F F ; 
                         t e x t - d e c o r a t i o n : n o n e ; 
                         b a c k g r o u n d - c o l o r : r g b a ( 0 , 0 , 0 , . 8 ) ; 
                 } 
 
                 . S E _ n a v   l i   a : h o v e r   { 
                         c o l o r : # 5 1 5 6 C F 
                 } 
 
                 < ! - -   H e a d e r s   - - > 
                 # s h o w T i t l e   { 
                         f o n t - s i z e : 5 0 p x ; 
                         c o l o r : # 7 0 8 0 9 0 ; 
                         p o s i t i o n : a b s o l u t e ; 
                         t o p : 2 ; 
                         l e f t : 2 6 0 p x ; 
                         h e i g h t : 1 0 0 p x ; 
                         w i d t h : 6 0 0 p x ; 
                 } 
 
                 # s h o w T i t l e   { 
                         f o n t - s i z e : 5 0 p x ; 
                         c o l o r : # 7 0 8 0 9 0 ;   
                         } 
                         
                         # s e a s o n T i t l e   { 
                         f o n t - s i z e : 3 0 p x ; 
                         c o l o r : # 7 0 8 0 9 0 ; 
                 } 
 
         < / s t y l e > 
 < / h e a d > 
 < b o d y > 
         < d i v   i d = ' n a v _ s h i e l d '   s t y l e = ' w i d t h :   2 6 0 p x ;   h e i g h t :   1 8 0 p x ;   d i s p l a y :   b l o c k ' > 
         < / d i v >       
         < d i v   i d = ' n a v i g a t i o n '   s t y l e = ' w i d t h : 2 6 0 p x ;   d i s p l a y :   b l o c k ' > 
                 < u l   c l a s s =   ' n a v ' > 
                         < l i > < a   h r e f = ' . . / . . / . . / . . / T V _ S h o w s / A - Z m e n u /� o  ���� 0 
lettername 
letterName� m  "�� ���  /� o  #&���� 0 showname showName� m  '*�� ���� . h t m l ' >   . . < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / . . / . . / . . / I n d e x . h t m l ' > H o m e < / a > < / l i > 
                         < l i > < a   h r e f = ' # F i l e s ' > F i l e s < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / . . / . . / . . / M o v i e s / A - Z m e n u . h t m l ' > M o v i e s < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / . . / . . / . . / T V _ S h o w s / A - Z m e n u . h t m l ' > T V   S h o w s < / a > < / l i > 
                         < l i > < a   c l a s s = ' d a r k B t n '   h r e f = ' # B o o m s h a k a l a k a ' > w o r d < / a > < / l i > 
                 < / u l > 
         < / d i v > 
         < ! - -   M a i n   S e c t i o n   - - > 
 
 
         < d i v   i d = ' S E _ n a v i g a t i o n ' 
                 s t y l e = ' w i d t h : 2 6 0 p x ; p o s i t i o n : a b s o l u t e ; t o p : 1 1 0 p x ; l e f t : 2 6 5 p x ; d i p l a y : b l o c k ' > 
                 < h e a d e r   i d = ' s h o w T i t l e '   s t y l e = '   f o n t - s i z e : 5 0 p x ; c o l o r : # 7 0 8 0 9 0 ; ' >� o  +.���� 0 altshowname altShowName� m  /2�� ��� � < / h e a d e r > 
                 < h e a d e r   i d = ' s e a s o n T i t l e '   s t y l e = ' f o n t - s i z e : 3 0 p x ; c o l o r : # 7 0 8 0 9 0 ; ' >� o  36���� 0 altseasonname altSeasonName m  7:�� ��� J < / h e a d e r > 
                 < u l   c l a s s = ' S E _ n a v ' >} l 	;>������ o  ;>����  0 seasonhtmllist seasonHtmlList��  ��  { m  ?B�� ��� F 
 	 	 < / u l > 
         < / d i v > 
 < / b o d y > 
 < / h t m l >y o      ���� 0 episodetext episodeTextw ���� P  H_����� r  O^��� n OZ��� I  PZ������� 0 	writecode 	writeCode� ��� o  PS���� 0 episodefile episodeFile� ���� o  SV���� 0 episodetext episodeText��  ��  �  f  OP� o      ���� 0 episodefile episodeFile��  � ��~
� consrmte�~  ��  ��  ��  ��  �� 0 aseason aSeason� o  ���}�} 0 
seasonlist 
seasonList� ��� r  it��� b  ip��� o  il�|�| 0 showname showName� m  lo�� ��� 
 . h t m l� o      �{�{ 0 docname docName� ��� Q  u����z� I x��y�x�
�y .corecrel****      � null�x  � �w��
�w 
kocl� m  |�v
�v 
file� �u��
�u 
insh� o  ���t�t 0 aletter aLetter� �s��r
�s 
prdt� K  ���� �q��p
�q 
pnam� o  ���o�o 0 docname docName�p  �r  � R      �n�m�l
�n .ascrerr ****      � ****�m  �l  �z  � ��k� Z  �����j�i� J  ���� ��h� I ���g��f
�g .coredoexbool        obj � n ����� 4  ���e�
�e 
file� l ����d�c� o  ���b�b 0 docname docName�d  �c  � o  ���a�a 0 aletter aLetter�f  �h  � k  ���� ��� r  ����� n ����� 4  ���`�
�` 
file� l ����_�^� o  ���]�] 0 docname docName�_  �^  � o  ���\�\ 0 aletter aLetter� o      �[�[ 0 dfile dFile� ��� l ������ r  ����� c  ����� o  ���Z�Z 0 dfile dFile� m  ���Y
�Y 
alis� o      �X�X 0 episodefile episodeFile�  							.d8888b.   � ���  	 	 	 	 	 	 	 . d 8 8 8 8 b .� ��� l ������ r  ����� m  ���� ���  < l i > < a   h r e f = '� o      �W�W 0 	listpart1 	listPart1� / )auto generate HTML lists-------d88P  Y88b   � ��� R a u t o   g e n e r a t e   H T M L   l i s t s - - - - - - - d 8 8 P     Y 8 8 b� ��� l ������ r  ����� m  ���� ���  ' >� o      �V�V 0 	listpart6 	listPart6�  											  .d88P   � ��� $ 	 	 	 	 	 	 	 	 	 	 	     . d 8 8 P� ��� l ������ r  ����� m  ���� ���  < / a > < / l i >� o      �U�U 0 	listpart8 	listPart8�  									8888I   � ���  	 	 	 	 	 	 	 	 	 8 8 8 8 I� ��� l ������ r  ����� J  ���T�T  � o      �S�S 0 showhtmllist showHtmlList�  										  IY8b.   � ��� " 	 	 	 	 	 	 	 	 	 	     I Y 8 b .� ��� l ��� � r  �� n �� 2  ���R
�R 
file o  ���Q�Q 0 ashow aShow o      �P�P 0 allfiles allFiles   							888    888    � " 	 	 	 	 	 	 	 8 8 8         8 8 8�  X  ��	�O
	 l � Z  ��N�M =  n   1  �L
�L 
nmxt o  �K�K 0 afile aFile m   �  h t m l l � k  �  r    c   n   !  1  �J
�J 
pnam! o  �I�I 0 afile aFile m  �H
�H 
ctxt o      �G�G 0 htmlfile htmlFile "#" r  !H$%$ n  !D&'& 7 $D�F()
�F 
ctxt( m  *,�E�E ) l -C*�D�C* \  -C+,+ l .A-�B�A- I .A�@�?.
�@ .sysooffslong    ��� null�?  . �>/0
�> 
psof/ m  2511 �22  .0 �=3�<
�= 
psin3 o  8;�;�; 0 htmlfile htmlFile�<  �B  �A  , m  AB�:�: �D  �C  ' o  !$�9�9 0 htmlfile htmlFile% o      �8�8  0 trueseasonname trueSeasonName# 454 r  I[676 n IW898 I  JW�7:�6�7 0 replace_chars  : ;<; o  JM�5�5  0 trueseasonname trueSeasonName< =>= m  MP?? �@@  _> A�4A m  PSBB �CC   �4  �6  9  f  IJ7 o      �3�3  0 trueseasonname trueSeasonName5 DED r  \�FGF b  \�HIH b  \�JKJ b  \�LML b  \�NON b  \PQP b  \{RSR b  \wTUT b  \sVWV b  \oXYX b  \kZ[Z b  \g\]\ b  \c^_^ o  \_�2�2 0 	listpart1 	listPart1_ m  _b`` �aa " . . / . . / . . / T V _ S h o w s] m  cfbb �cc  /[ o  gj�1�1 0 
azmenuname 
azMenuNameY m  kndd �ee  /W o  or�0�0 0 
lettername 
letterNameU m  svff �gg  /S o  wz�/�/ 0 showname showNameQ m  {~hh �ii  /O o  ��.�. 0 htmlfile htmlFileM o  ���-�- 0 	listpart6 	listPart6K o  ���,�,  0 trueseasonname trueSeasonNameI o  ���+�+ 0 	listpart8 	listPart8G o      �*�* 0 	totallist 	totalListE j�)j s  ��klk o  ���(�( 0 	totallist 	totalListl n      mnm  ;  ��n o  ���'�' 0 showhtmllist showHtmlList�)    -				 IY8888PI    �oo  - 	 	 	 	   I Y 8 8 8 8 P I�N  �M    								Y88b  d88P    �pp $ 	 	 	 	 	 	 	 	 Y 8 8 b     d 8 8 P�O 0 afile aFile
 o  ���&�& 0 allfiles allFiles qrq r  ��sts b  ��uvu b  ��wxw b  ��yzy b  ��{|{ b  ��}~} b  ��� m  ���� ���� < ! D o c t y p e   h t m l > 
 < h e a d > 
         < t i t l e > A   S h o w   E x a m p l e < / t i t l e > 
         < m e t a   c h a r s e t = ' U T F - 8 '   / > 
         < s t y l e > 
 	 b o d y   { 
                         m a r g i n : 0 ; 
                         p a d d i n g : 0 ; 
                         h e i g h t : 1 0 0 % ; 
                         b a c k g r o u n d - c o l o r : # 0 0 0 ; 
                 } 
 
                 < ! - -   N a v   m e n u   - - > 
                 # n a v i g a t i o n   { 
                         p o s i t i o n : a b s o l u t e ; 
                         t o p : 1 9 5 p x ; 
                         l e f t : 6 0 p x ; 
                 } 
                 . n a v   { 
                         l i s t - s t y l e : n o n e ; 
                         w i d t h : 1 0 0 p x ; 
                         l i n e - h e i g h t : 2 0 p x ; 
                 } 
                 . n a v   l i   a   { 
                         f o n t - f a m i l y :   ' M a r i o n R e g u l a r ' ; 
                         c o l o r : # 8 0 8 0 8 0 ; 
                         f o n t - s i z e : 1 0 p t ; 
                         t e x t - d e c o r a t i o n : n o n e ; 
                         b a c k g r o u n d - c o l o r : r g b a ( 0 , 0 , 0 , . 8 ) ; 
                 } 
                 . n a v   l i   a : h o v e r   { 
                         c o l o r : # 5 1 5 6 C F ; 
                 } 
 
                 < ! - -   N a v   s u b - m e n u s   - - > 
                 d i v # n a v i g a t i o n   a : h o v e r   { 
                         c o l o r : 5 1 5 6 C F ; 
                 } 
 
                 . n a v   l i   . d a r k B t n   { 
                         c o l o r : # 3 A 3 A 3 A ; 
                 } 
 
                 < ! - -   S p a c e   f o r   N a v   B a r   - - > 
                 # n a v _ s h i e l d   { 
                         p o s i t i o n : a b s o l u t e ; 
                         l e f t : 0 p x ; 
                         t o p : 0 p x ; 
                         w i d t h : 2 6 0 p x ; 
                         b a c k g r o u n d - c o l o r : r g b a ( 0 , 0 , 0 , 1 ) ; 
                 } 
 
                 < ! - -   S e a s o n / E p i s o d e   S e l e c t i o n   - - > 
                 # S E _ n a v i g a t i o n   { 
                         p o s i t i o n : a b s o l u t e ; 
                         l e f t : 2 6 5 p x ; 
                 } 
 
                 . S E _ n a v   { 
                         l i s t - s t y l e : n o n e ; 
                         w i d t h : 1 0 0 p x ; 
                         l i n e - h e i g h t : 2 0 p x ; 
                         f o n t - s i z e : 1 9 p x ; 
                 } 
 
                 . S E _ n a v   l i   a   { 
                         f o n t - f a m i l y :   ' M a r i o n R e g u l a r ' ; 
                         c o l o r : # F F F F F F ; 
                         t e x t - d e c o r a t i o n : n o n e ; 
                         b a c k g r o u n d - c o l o r : r g b a ( 0 , 0 , 0 , . 8 ) ; 
                 } 
 
                 . S E _ n a v   l i   a : h o v e r   { 
                         c o l o r : # 5 1 5 6 C F 
                 } 
 
                 < ! - -   H e a d e r s   - - > 
                 # s h o w T i t l e   { 
                         f o n t - s i z e : 5 0 p x ; 
                         c o l o r : # 7 0 8 0 9 0 ; 
                         p o s i t i o n : a b s o l u t e ; 
                         t o p : 2 ; 
                         l e f t : 2 6 0 p x ; 
                         h e i g h t : 1 0 0 p x ; 
                         w i d t h : 6 0 0 p x ; 
                 } 
 
         < / s t y l e > 
 < / h e a d > 
 < b o d y > 
         < d i v   i d = ' n a v _ s h i e l d '   s t y l e = ' w i d t h :   2 6 0 p x ;   h e i g h t :   1 8 0 p x ;   d i s p l a y :   b l o c k ' > 
         < / d i v >       
         < d i v   i d = ' n a v i g a t i o n '   s t y l e = ' w i d t h : 2 6 0 p x ;   d i s p l a y :   b l o c k ' > 
                 < u l   c l a s s =   ' n a v ' > 
                         < l i > < a   h r e f = ' . . / . . / . . / T V _ S h o w s / A - Z m e n u /� o  ���%�% 0 
lettername 
letterName~ m  ���� ���� . h t m l ' >   . . < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / . . / . . / I n d e x . h t m l ' > H o m e < / a > < / l i > 
                         < l i > < a   h r e f = ' # F i l e s ' > F i l e s < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / . . / . . / M o v i e s / A - Z m e n u . h t m l ' > M o v i e s < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / . . / . . / T V _ S h o w s / A - Z m e n u . h t m l ' > T V   S h o w s < / a > < / l i > 
                         < l i > < a   c l a s s = ' d a r k B t n '   h r e f = ' # B o o m s h a k a l a k a ' > w o r d < / a > < / l i > 
                 < / u l > 
         < / d i v > 
         < ! - -   M a i n   S e c t i o n   - - > 
         < d i v   i d = ' S E _ n a v i g a t i o n '   s t y l e = ' w i d t h : 2 6 0 p x ; p o s i t i o n : a b s o l u t e ; t o p : 1 1 0 p x ; l e f t : 2 6 5 p x ; '   > 
                 < h e a d e r   i d = ' s h o w T i t l e '   s t y l e = ' f o n t - s i z e : 5 0 p x ; 
                         c o l o r : # 7 0 8 0 9 0 ; p o s i t i o n : a b s o l u t e ; t o p : 2 ; l e f t : 2 0 p x ; h e i g h t : 1 0 0 p x ; w i d t h : 3 0 0 p x ; ; ' >| o  ���$�$ 0 altshowname altShowNamez m  ���� ��� � < / h e a d e r >                 
                 < u l   c l a s s = ' S E _ n a v '   s t y l e = ' p o s i t i o n : a b s o l u t e ; t o p : 7 5 p x ; ' >x l 	����#�"� o  ���!�! 0 showhtmllist showHtmlList�#  �"  v m  ���� ��� F 
 	 	 < / u l > 
         < / d i v > 
 < / b o d y > 
 < / h t m l >t o      � �  0 episodetext episodeTextr ��� P  ������ r  ����� n ����� I  ������ 0 	writecode 	writeCode� ��� o  ���� 0 episodefile episodeFile� ��� o  ���� 0 episodetext episodeText�  �  �  f  ��� o      �� 0 episodefile episodeFile�  � ��
� consrmte�  �  �j  �i  �k  �� 0 ashow aShow� o  ���� 0 showlist showList� ��� r  ����� b  ����� o  ���� 0 
lettername 
letterName� m  ���� ��� 
 . h t m l� o      �� 0 docname docName� ��� Q  ����� I ����
� .corecrel****      � null�  � ���
� 
kocl� m  ���
� 
file� ���
� 
insh� l  ���� o   �
�
 0 azmenu azMenu�  �  � �	��
�	 
prdt� K  �� ���
� 
pnam� o  
�� 0 docname docName�  �  � R      ���
� .ascrerr ****      � ****�  �  �  � ��� l m���� Z  m��� ��� J  *�� ���� I (�����
�� .coredoexbool        obj � n $��� 4  $���
�� 
file� l  #������ o   #���� 0 docname docName��  ��  � o  ���� 0 azmenu azMenu��  ��  � k  -i�� ��� l -9���� r  -9��� n -5��� 4  .5���
�� 
file� l 14������ o  14���� 0 docname docName��  ��  � o  -.���� 0 azmenu azMenu� o      ���� 0 dfile dFile�  					d8888   � ���  	 	 	 	 d 8 8 8 8� ��� l :E���� r  :E��� c  :A��� o  :=���� 0 dfile dFile� m  =@��
�� 
alis� o      ���� 0 episodefile episodeFile� ( "--------------------------d8P888     � ��� D - - - - - - - - - - - - - - - - - - - - - - - - - - d 8 P 8 8 8    � ��� l FM���� r  FM��� m  FI�� ���  < l i > < a   h r e f = '� o      ���� 0 	listpart1 	listPart1� % ------------------------d8P 888   � ��� > - - - - - - - - - - - - - - - - - - - - - - - - d 8 P   8 8 8� ��� l NU���� r  NU��� m  NQ�� ���  ' >� o      ���� 0 	listpart6 	listPart6� 3 --------------------------------------d8P  888   � ��� Z - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - d 8 P     8 8 8� ��� l V]���� r  V]��� m  VY�� ���  < / a > < / l i >� o      ���� 0 	listpart8 	listPart8� * $--------------------------d88   888    � ��� H - - - - - - - - - - - - - - - - - - - - - - - - - - d 8 8       8 8 8  � ��� l ^d���� r  ^d��� J  ^`����  � o      ����  0 letterhtmllist letterHtmlList� / )-------------------------------8888888888   � ��� R - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8 8 8 8 8 8 8 8� ��� l en���� r  en��� n ej��� 2  fj��
�� 
file� o  ef���� 0 aletter aLetter� o      ���� 0 allfiles allFiles� % ----------------------     888    � ��� > - - - - - - - - - - - - - - - - - - - - - -           8 8 8  � ��� X  o ��  l � Z  ����� = �� n  ��	
	 1  ����
�� 
nmxt
 o  ������ 0 afile aFile m  �� �  h t m l k  �  r  �� c  �� n  �� 1  ����
�� 
pnam o  ������ 0 afile aFile m  ����
�� 
ctxt o      ���� 0 htmlfile htmlFile  r  �� n  �� 7 ����
�� 
ctxt m  ������  l ������ \  ��  l ��!����! I ������"
�� .sysooffslong    ��� null��  " ��#$
�� 
psof# m  ��%% �&&  .$ ��'��
�� 
psin' o  ������ 0 htmlfile htmlFile��  ��  ��    m  ������ ��  ��   o  ������ 0 htmlfile htmlFile o      ���� 0 trueshowname trueShowName ()( r  ��*+* n ��,-, I  ����.���� 0 replace_chars  . /0/ o  ������ 0 trueshowname trueShowName0 121 m  ��33 �44  _2 5��5 m  ��66 �77   ��  ��  -  f  ��+ o      ���� 0 trueshowname trueShowName) 898 r  �	:;: b  �<=< b  �>?> b  ��@A@ b  ��BCB b  ��DED b  ��FGF b  ��HIH b  ��JKJ b  ��LML b  ��NON o  ������ 0 	listpart1 	listPart1O m  ��PP �QQ  . . / . . / T V _ S h o w sM m  ��RR �SS  /K o  ������ 0 
azmenuname 
azMenuNameI m  ��TT �UU  /G o  ������ 0 
lettername 
letterNameE m  ��VV �WW  /C o  ������ 0 htmlfile htmlFileA o  ������ 0 	listpart6 	listPart6? o  � ���� 0 trueshowname trueShowName= o  ���� 0 	listpart8 	listPart8; o      ���� 0 	totallist 	totalList9 X��X s  
YZY o  
���� 0 	totallist 	totalListZ n      [\[  ;  \ o  ����  0 letterhtmllist letterHtmlList��  ��  ��   + %----------------------------------888    �]] J - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8�� 0 afile aFile o  ru���� 0 allfiles allFiles� ^_^ Z  9`a����` = 'bcb c  #ded o  ���� 0 
lettername 
letterNamee m  "��
�� 
TEXTc m  #&ff �gg  -a r  *5hih c  *1jkj m  *-ll �mm  #k m  -0��
�� 
TEXTi o      ���� 0 
lettername 
letterName��  ��  _ non r  :Qpqp b  :Mrsr b  :Itut b  :Evwv b  :Axyx m  :=zz �{{� < ! D o c t y p e   h t m l > 
 < h e a d > 
         < t i t l e > A   S h o w   E x a m p l e < / t i t l e > 
         < m e t a   c h a r s e t = ' U T F - 8 '   / > 
         < s t y l e > 
                 b o d y   { 
                         m a r g i n : 0 ; 
                         p a d d i n g : 0 ; 
                         h e i g h t : 1 0 0 % ; 
                         b a c k g r o u n d - c o l o r : # 0 0 0 ; 
                 } 
 
                 < ! - -   N a v   m e n u   - - > 
                 # n a v i g a t i o n   { 
                         p o s i t i o n : a b s o l u t e ; 
                         t o p : 1 9 5 p x ; 
                         l e f t : 6 0 p x ; 
                 } 
                 . n a v   { 
                         l i s t - s t y l e : n o n e ; 
                         w i d t h : 1 0 0 p x ; 
                         l i n e - h e i g h t : 2 0 p x ; 
                 } 
                 . n a v   l i   a   { 
                         f o n t - f a m i l y :   ' M a r i o n R e g u l a r ' ; 
                         c o l o r : # 8 0 8 0 8 0 ; 
                         f o n t - s i z e : 1 0 p t ; 
                         t e x t - d e c o r a t i o n : n o n e ; 
                         b a c k g r o u n d - c o l o r : r g b a ( 0 , 0 , 0 , . 8 ) ; 
                 } 
                 . n a v   l i   a : h o v e r   { 
                         c o l o r : # 5 1 5 6 C F ; 
                 } 
 
                 < ! - -   N a v   s u b - m e n u s   - - > 
                 d i v # n a v i g a t i o n   a : h o v e r   { 
                         c o l o r : 5 1 5 6 C F ; 
                 } 
 
                 . n a v   l i   . d a r k B t n   { 
                         c o l o r : # 3 A 3 A 3 A ; 
                 } 
 
                 < ! - -   S p a c e   f o r   N a v   B a r   - - > 
                 # n a v _ s h i e l d   { 
                         p o s i t i o n : a b s o l u t e ; 
                         l e f t : 0 p x ; 
                         t o p : 0 p x ; 
                         w i d t h : 2 6 0 p x ; 
                         b a c k g r o u n d - c o l o r : r g b a ( 0 , 0 , 0 , 1 ) ; 
                 } 
 
                 < ! - -   S e a s o n / E p i s o d e   S e l e c t i o n   - - > 
                 # S E _ n a v i g a t i o n   { 
                         p o s i t i o n : a b s o l u t e ; 
                         l e f t : 2 6 5 p x ; 
                 } 
 
                 . S E _ n a v   { 
                         l i s t - s t y l e : n o n e ; 
                         w i d t h : 1 0 0 p x ; 
                         l i n e - h e i g h t : 2 0 p x ; 
                         f o n t - s i z e : 1 9 p x ; 
                 } 
 
                 . S E _ n a v   l i   a   { 
                         f o n t - f a m i l y :   ' M a r i o n R e g u l a r ' ; 
                         c o l o r : # F F F F F F ; 
                         t e x t - d e c o r a t i o n : n o n e ; 
                         b a c k g r o u n d - c o l o r : r g b a ( 0 , 0 , 0 , . 8 ) ; 
                 } 
 
                 . S E _ n a v   l i   a : h o v e r   { 
                         c o l o r : # 5 1 5 6 C F 
                 } 
 
                 < ! - -   H e a d e r s   - - > 
                 # s h o w T i t l e   { 
                         f o n t - s i z e : 5 0 p x ; 
                         c o l o r : # 7 0 8 0 9 0 ; 
                         p o s i t i o n : a b s o l u t e ; 
                         t o p : 2 ; 
                         l e f t : 2 6 0 p x ; 
                         h e i g h t : 1 0 0 p x ; 
                         w i d t h : 6 0 0 p x ; 
                 } 
 
         < / s t y l e > 
 < / h e a d > 
 < b o d y > 
         < d i v   i d = ' n a v _ s h i e l d '   s t y l e = ' w i d t h :   2 6 0 p x ;   h e i g h t :   1 8 0 p x ;   d i s p l a y :   b l o c k ' > 
         < / d i v >       
         < d i v   i d = ' n a v i g a t i o n '   s t y l e = ' w i d t h : 2 6 0 p x ;   d i s p l a y :   b l o c k ' > 
                 < u l   c l a s s =   ' n a v ' > 
                         < l i > < a   h r e f = ' . . / . . / T V _ S h o w s / A - Z m e n u . h t m l ' >   . . < / a > < / l i > 
                         < l i > < a 
                                 h r e f = ' . . / . . / I n d e x . h t m l ' > H o m e < / a > < / l i > 
                         < l i > < a   h r e f = ' # F i l e s ' > F i l e s < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / . . / M o v i e s / A - Z m e n u . h t m l ' > M o v i e s < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / . . / T V _ S h o w s / A - Z m e n u . h t m l ' > T V   S h o w s < / a > < / l i > 
                         < l i > < a   c l a s s = ' d a r k B t n '   h r e f = ' # B o o m s h a k a l a k a ' > w o r d < / a > < / l i > 
                 < / u l > 
         < / d i v > 
         < ! - -   M a i n   S e c t i o n   - - > 
         < d i v   i d = ' S E _ n a v i g a t i o n '   s t y l e = ' w i d t h : 2 6 0 p x ; p o s i t i o n : a b s o l u t e ; t o p : 1 1 0 p x ; l e f t : 2 6 5 p x ; '   > 
                 < h e a d e r   i d = ' s h o w T i t l e '   s t y l e = ' f o n t - s i z e : 5 0 p x ; 
                         c o l o r : # 7 0 8 0 9 0 ; p o s i t i o n : a b s o l u t e ; t o p : 2 ; l e f t : 2 0 p x ; h e i g h t : 1 0 0 p x ; w i d t h : 3 0 0 p x ; ; ' >y o  =@���� 0 
lettername 
letterNamew m  AD|| �}} � < / h e a d e r >                 
                 < u l   c l a s s = ' S E _ n a v '   s t y l e = ' p o s i t i o n : a b s o l u t e ; t o p : 7 5 p x ; ' >u l 	EH~����~ o  EH����  0 letterhtmllist letterHtmlList��  ��  s m  IL ��� H 
 	 	   < / u l > 
         < / d i v > 
 < / b o d y > 
 < / h t m l >q o      ���� 0 episodetext episodeTexto ���� P  Ri����� r  Yh��� n Yd��� I  Zd������� 0 	writecode 	writeCode� ��� o  Z]���� 0 episodefile episodeFile� ���� o  ]`���� 0 episodetext episodeText��  ��  �  f  YZ� o      ���� 0 episodefile episodeFile��  � ����
�� consrmte��  ��  �   ��  � Z T---------------------------------------------------------------------------888888888   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8 8 8 8 8 8 8�  �� 0 aletter aLetter� o  ������ 0 
letterlist 
letterList� S M--------------------------------------------------------------------------888   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8� ��� l s~���� r  s~��� b  sz��� o  sv���� 0 
azmenuname 
azMenuName� m  vy�� ��� 
 . h t m l� o      ���� 0 docname docName� 1 +----------------------------------------888   � ��� V - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8� ��� l ����� Q  ������ l ������ l ������ I �������
�� .corecrel****      � null��  � ����
�� 
kocl� m  ����
�� 
file� ����
�� 
insh� l �������� o  ������ 0 dumpdirectory dumpDirectory��  ��  � �����
�� 
prdt� K  ���� �����
�� 
pnam� o  ������ 0 docname docName��  ��  �  --------IY88b   � ���  - - - - - - - - I Y 8 8 b� c ]------------------------------------------------------------------------------------8888888b.   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8 8 8 8 8 b .� R      ������
�� .ascrerr ****      � ****��  ��  ��  � b \-----------------------------------------------------------------------------------------888   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8� ���� l ������ Z  ��������� J  ���� ���� I �������
�� .coredoexbool        obj � n ����� 4  �����
�� 
file� l �������� o  ������ 0 docname docName��  ��  � o  ������ 0 dumpdirectory dumpDirectory��  ��  � l ������ k  ���� ��� l ������ r  ����� n ����� 4  �����
�� 
file� l �������� o  ������ 0 docname docName��  ��  � o  ������ 0 dumpdirectory dumpDirectory� o      ���� 0 dfile dFile� . (--------------------------------IY8888PI   � ��� P - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - I Y 8 8 8 8 P I� ��� r  ����� c  ����� o  ������ 0 dfile dFile� m  ����
�� 
alis� o      ���� 0 episodefile episodeFile� ��� r  ����� m  ���� ���)l < ! D o c t y p e   h t m l > 
   < h e a d > 
   < t i t l e > A - Z   m e n u < / t i t l e > 
         < m e t a   c h a r s e t = ' U T F - 8 '   / > 
         < s t y l e   t y p e = ' t e x t / c s s ' > 
                 h t m l ,   b o d y   { 
                         h e i g h t :   1 0 0 % ; 
                 } 
                 . c o n t a i n e r   { 
                         m a r g i n - b o t t o m :   2 e m ; 
                           p o s i t i o n : a b s o l u t e ; 
                         t o p : 1 1 0 p x ; 
                         l e f t : 2 5 5 p x ; 
                 } 
                         a r t i c l e   {   
                                 b a c k g r o u n d :   # 0 0 0   ;   
                         d i s p l a y :   b l o c k ; 
                         m a r g i n :   0   a u t o ; 
                                 m i n - h e i g h t :   1 0 0 % ;   
                         w i d t h :   5 3 0 p x ; 
                         o v e r f l o w :   h i d d e n ;     
                 } 
 
                                 s e c t i o n   {   
                                         d i s p l a y :   b l o c k ; 
                                         f l o a t :   l e f t ; 
                                         o v e r f l o w :   h i d d e n ;   
                                         w i d t h :   2 5 5 p x ;   
                         } 
                         a s i d e   {     
                                         f l o a t :   l e f t ; 
                                         m a r g i n - l e f t :   2 0 p x ;   
                                         o v e r f l o w :   h i d d e n ;   
                                         w i d t h :   2 5 5 p x ;     
                                 } 
                                 b o d y   {   
                                         m a r g i n :   0 ;   
                                         p a d d i n g :   0 ;   
                                         h e i g h t :   1 0 0 % ;   
                                         b a c k g r o u n d - c o l o r :   # 0 0 0 ;   
                                 } 
 
                 < ! - -   N a v   m e n u   - - > 
                 # n a v i g a t i o n   { 
                         z - i n d e x : 1 0 
                         p o s i t i o n : a b s o l u t e ; 
                         t o p : 1 9 5 p x ; 
                         l e f t : 6 0 p x ; 
                         d i s p l a y : n o n e ; 
                         u s e r - s e l e c t : n o n e ; 
                 } 
                 . n a v   { 
                         l i s t - s t y l e : n o n e ; 
                         w i d t h : 1 0 0 p x ; 
                         l i n e - h e i g h t : 2 0 p x ; 
                 } 
                 . n a v   l i   a   { 
                         f o n t - f a m i l y :   ' M a r i o n R e g u l a r ' ; 
                         c o l o r : # 8 0 8 0 8 0 ; 
                         f o n t - s i z e : 1 0 p t ; 
                         t e x t - d e c o r a t i o n : n o n e ; 
                         b a c k g r o u n d - c o l o r : r g b a ( 0 , 0 , 0 , . 8 ) ; 
                 } 
                 . n a v   l i   a : h o v e r   { 
                         c o l o r : # 5 1 5 6 C F ; 
                 } 
 
           
                 < ! - -   N a v   s u b - m e n u s   - - > 
                 d i v # n a v i g a t i o n   a : h o v e r   { 
                         c o l o r : 5 1 5 6 C F ; 
                 } 
 
 
                 . n a v   l i   . d a r k B t n   { 
                         c o l o r : # 3 A 3 A 3 A ; 
                 } 
 
                 < ! - -   S p a c e   f o r   N a v   B a r   - - > 
               # n a v _ s h i e l d   { 
 	 z - i n d e x : 8 ; 
 	 p o s i t i o n :   a b s o l u t e ; 
 	 l e f t : 0 p x ; 
 	 t o p :   0 p x ; 
 	 b a c k g r o u n d - c o l o r : r g b a ( 0 , 0 , 0 , 1 ) ; 	 
 } 
 
                 < ! - -   A Z   t i t l e   n o t   u s e d - - > 
                 < ! - -   h e a d e r   { 
                         t e x t - d e c o r a t i o n : n o n e ; 
                         c o l o r : # F F F F F F ; 
                         d i s p l a y : b l o c k ; 
                         o v e r f l o w : h i d d e n ; 
                         f o n t - f a m i l y : ' T e c h n o ' ; 
                         f o n t - s i z e : 7 5 p x ; 
                         p o s i t i o n : a b s o l u t e ; 
                         t o p : 2 0 p x ; 
                         l e f t : 2 6 0 p x ; 
                 }   - - > 
 
                 < ! - -   A Z   m e n u   - - > 
                 # a z N a v   { 
                         l i s t - s t y l e : n o n e ; 
                         w i d t h : 1 0 0 p x ; 
                         l i n e - h e i g h t : 2 0 p x ; 
                 } 
                 . a z N a v   l i   a   { 
                         t e x t - d e c o r a t i o n : n o n e ; 
                         d i s p l a y : b l o c k ; 
                         c o l o r : # F F F F F F ; 
                         p a d d i n g : 2 p x ; 
                         f o n t - s i z e : 1 3 ; 
                 } 
 
                 . a z N a v   l i   a : h o v e r   { 
                         c o l o r : # 5 1 5 6 C F ; 
                 } 
 
 
         < / s t y l e > 
 < / h e a d > 
 < b o d y > 
         < d i v   i d = ' n a v _ s h i e l d '   s t y l e = ' w i d t h :   2 6 0 p x ;   h e i g h t :   1 8 0 p x ;   d i s p l a y :   b l o c k ' > 
         < / d i v > 
         < d i v   i d = ' m a i n C o n t a i n e r ' > 
         < / d i v > 
         < d i v   i d = ' n a v i g a t i o n '   s t y l e = ' d i s p l a y :   b l o c k ' > 
                 < u l   c l a s s =   ' n a v ' > 
                         < l i > < a   h r e f = ' . . / I n d e x . h t m l ' >   . . < / a > < / l i > 
                         < l i > < a 
                                 h r e f = ' . . / I n d e x . h t m l ' > H o m e < / a > < / l i > 
                         < l i > < a   h r e f = ' # F i l e s ' > F i l e s < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / M o v i e s / A - Z m e n u . h t m l ' > M o v i e s < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / T V _ S h o w s / A - Z m e n u . h t m l ' > T V   S h o w s < / a > < / l i > 
                         < l i > < a   c l a s s = ' d a r k B t n '   h r e f = ' # B o o m s h a k a l a k a ' > w o r d < / a > < / l i > 
                 < / u l > 
         < / d i v > 
               < d i v   c l a s s = ' c o n t a i n e r ' > 
                 < a r t i c l e > 
                 < s e c t i o n > 
                 < u l   c l a s s = ' a z N a v ' > 
                         < l i > < a   h r e f = ' . . / T V _ S h o w s / A - Z m e n u / - . h t m l '   > # < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / T V _ S h o w s / A - Z m e n u / A . h t m l '   > A < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / T V _ S h o w s / A - Z m e n u / B . h t m l '   > B < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / T V _ S h o w s / A - Z m e n u / C . h t m l '   > C < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / T V _ S h o w s / A - Z m e n u / D . h t m l '   > D < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / T V _ S h o w s / A - Z m e n u / E . h t m l '   > E < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / T V _ S h o w s / A - Z m e n u / F . h t m l '   > F < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / T V _ S h o w s / A - Z m e n u / G . h t m l '   > G < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / T V _ S h o w s / A - Z m e n u / H . h t m l '   > H < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / T V _ S h o w s / A - Z m e n u / I . h t m l '   > I < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / T V _ S h o w s / A - Z m e n u / J . h t m l '   > J < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / T V _ S h o w s / A - Z m e n u / K . h t m l '   > K < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / T V _ S h o w s / A - Z m e n u / L . h t m l '   > L < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / T V _ S h o w s / A - Z m e n u / M . h t m l '   > M < / a > < / l i > 
                 < / u l > 
                 < / s e c t i o n > 
                 < a s i d e > 
                 < u l   c l a s s = ' a z N a v ' > 
                         < l i > < a   h r e f = ' . . / T V _ S h o w s / A - Z m e n u / N . h t m l '   > N < / a > < / l i >         
                         < l i > < a   h r e f = ' . . / T V _ S h o w s / A - Z m e n u / O . h t m l '   > O < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / T V _ S h o w s / A - Z m e n u / P . h t m l '   > P < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / T V _ S h o w s / A - Z m e n u / Q . h t m l '   > Q < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / T V _ S h o w s / A - Z m e n u / R . h t m l '   > R < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / T V _ S h o w s / A - Z m e n u / S . h t m l '   > S < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / T V _ S h o w s / A - Z m e n u / T . h t m l '   > T < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / T V _ S h o w s / A - Z m e n u / U . h t m l '   > U < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / T V _ S h o w s / A - Z m e n u / V . h t m l '   > V < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / T V _ S h o w s / A - Z m e n u / W . h t m l '   > W < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / T V _ S h o w s / A - Z m e n u / X . h t m l '   > X < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / T V _ S h o w s / A - Z m e n u / Y . h t m l '   > Y < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / T V _ S h o w s / A - Z m e n u / Z . h t m l '   > Z < / a > < / l i > 
                 < / u l > 
         < / d i v > 
 < / b o d y > 
 < / h t m l >� o      �� 0 episodetext episodeText� ��~� P  ����}�� r  ����� n ����� I  ���|��{�| 0 	writecode 	writeCode� ��� o  ���z�z 0 episodefile episodeFile� ��y� o  ���x�x 0 episodetext episodeText�y  �{  �  f  ��� o      �w�w 0 episodefile episodeFile�}  � �v�u
�v consrmte�u  �~  � . (-----------------------------Y88b  d88P    � ��� P - - - - - - - - - - - - - - - - - - - - - - - - - - - - - Y 8 8 b     d 8 8 P  ��  ��  � @ :the section below makes blank pages for the unused letters   � ��� t t h e   s e c t i o n   b e l o w   m a k e s   b l a n k   p a g e s   f o r   t h e   u n u s e d   l e t t e r s��  �� 0 azmenu azMenu� o  [^�t�t 0 azlist azList~ ��� r  p��� b  l��� b  h��� b  d��� b  `��� b  \��� b  X��� b  T��� b  P��� b  L��� b  H�	 � b  D			 b  @			 b  <			 b  8			 b  4			
		 b  0			 b  ,			 b  (			 b  $			 b   			 b  			 b  			 b  			 b  			 b  			 b  		 	 m  	!	! �	"	"  -	  m  	#	# �	$	$  A	 m  	%	% �	&	&  B	 m  	'	' �	(	(  C	 m  	)	) �	*	*  D	 m  	+	+ �	,	,  E	 m  	-	- �	.	.  F	 m  	/	/ �	0	0  G	 m   #	1	1 �	2	2  H	 m  $'	3	3 �	4	4  I	 m  (+	5	5 �	6	6  J	 m  ,/	7	7 �	8	8  K	
 m  03	9	9 �	:	:  L	 m  47	;	; �	<	<  M	 m  8;	=	= �	>	>  N	 m  <?	?	? �	@	@  O	 m  @C	A	A �	B	B  P	  m  DG	C	C �	D	D  Q� m  HK	E	E �	F	F  R� m  LO	G	G �	H	H  S� m  PS	I	I �	J	J  T� m  TW	K	K �	L	L  U� m  X[	M	M �	N	N  V� m  \_	O	O �	P	P  W� m  `c	Q	Q �	R	R  X� m  dg	S	S �	T	T  Y� m  hk	U	U �	V	V  Z� o      �s�s 0 
allletters 
allLetters� 	W	X	W r  q�	Y	Z	Y c  q|	[	\	[ n  qx	]	^	] 2  tx�r
�r 
cha 	^ o  qt�q�q 0 
allletters 
allLetters	\ m  x{�p
�p 
TEXT	Z o      �o�o 0 allitems allItems	X 	_	`	_ l �s	a	b	c	a X  �s	d�n	e	d Z  �n	f	g�m�l	f H  ��	h	h E  ��	i	j	i o  ���k�k  0 createdletters createdLetters	j o  ���j�j 0 anitem anItem	g k  �j	k	k 	l	m	l r  ��	n	o	n o  ���i�i 0 anitem anItem	o o      �h�h 0 
lettername 
letterName	m 	p	q	p r  ��	r	s	r b  ��	t	u	t o  ���g�g 0 
lettername 
letterName	u m  ��	v	v �	w	w 
 . h t m l	s o      �f�f 0 docname docName	q 	x	y	x Q  ��	z	{�e	z I ���d�c	|
�d .corecrel****      � null�c  	| �b	}	~
�b 
kocl	} m  ���a
�a 
file	~ �`		�
�` 
insh	 l ��	��_�^	� o  ���]�] 0 azmenu azMenu�_  �^  	� �\	��[
�\ 
prdt	� K  ��	�	� �Z	��Y
�Z 
pnam	� o  ���X�X 0 docname docName�Y  �[  	{ R      �W�V�U
�W .ascrerr ****      � ****�V  �U  �e  	y 	��T	� Q  �j	�	��S	� l �a	�	�	�	� Z  �a	�	��R�Q	� J  ��	�	� 	��P	� I ���O	��N
�O .coredoexbool        obj 	� n ��	�	�	� 4  ���M	�
�M 
file	� l ��	��L�K	� o  ���J�J 0 docname docName�L  �K  	� o  ���I�I 0 azmenu azMenu�N  �P  	� k  �]	�	� 	�	�	� l ��	�	�	�	� r  ��	�	�	� n ��	�	�	� 4  ���H	�
�H 
file	� l ��	��G�F	� o  ���E�E 0 docname docName�G  �F  	� o  ���D�D 0 azmenu azMenu	� o      �C�C 0 dfile dFile	�  					d8888   	� �	�	�  	 	 	 	 d 8 8 8 8	� 	�	�	� l �	�	�	�	� r  �	�	�	� c  �	�	�	� o  ���B�B 0 dfile dFile	� m  ��A
�A 
alis	� o      �@�@ 0 episodefile episodeFile	� ( "--------------------------d8P888     	� �	�	� D - - - - - - - - - - - - - - - - - - - - - - - - - - d 8 P 8 8 8    	� 	�	�	� r  	�	�	� m  	�	� �	�	�  	� o      �?�?  0 letterhtmllist letterHtmlList	� 	�	�	� Z  -	�	��>�=	� = 	�	�	� c  	�	�	� o  �<�< 0 
lettername 
letterName	� m  �;
�; 
TEXT	� m  	�	� �	�	�  -	� r  )	�	�	� c  %	�	�	� m  !	�	� �	�	�  #	� m  !$�:
�: 
TEXT	� o      �9�9 0 
lettername 
letterName�>  �=  	� 	�	�	� r  .E	�	�	� b  .A	�	�	� b  .=	�	�	� b  .9	�	�	� b  .5	�	�	� m  .1	�	� �	�	�� < ! D o c t y p e   h t m l > 
 < h e a d > 
         < t i t l e > A   S h o w   E x a m p l e < / t i t l e > 
         < m e t a   c h a r s e t = ' U T F - 8 '   / > 
         < s t y l e > 
                 b o d y   { 
                         m a r g i n : 0 ; 
                         p a d d i n g : 0 ; 
                         h e i g h t : 1 0 0 % ; 
                         b a c k g r o u n d - c o l o r : # 0 0 0 ; 
                 } 
 
                 < ! - -   N a v   m e n u   - - > 
                 # n a v i g a t i o n   { 
                         p o s i t i o n : a b s o l u t e ; 
                         t o p : 1 9 5 p x ; 
                         l e f t : 6 0 p x ; 
                 } 
                 . n a v   { 
                         l i s t - s t y l e : n o n e ; 
                         w i d t h : 1 0 0 p x ; 
                         l i n e - h e i g h t : 2 0 p x ; 
                 } 
                 . n a v   l i   a   { 
                         f o n t - f a m i l y :   ' M a r i o n R e g u l a r ' ; 
                         c o l o r : # 8 0 8 0 8 0 ; 
                         f o n t - s i z e : 1 0 p t ; 
                         t e x t - d e c o r a t i o n : n o n e ; 
                         b a c k g r o u n d - c o l o r : r g b a ( 0 , 0 , 0 , . 8 ) ; 
                 } 
                 . n a v   l i   a : h o v e r   { 
                         c o l o r : # 5 1 5 6 C F ; 
                 } 
 
                 < ! - -   N a v   s u b - m e n u s   - - > 
                 d i v # n a v i g a t i o n   a : h o v e r   { 
                         c o l o r : 5 1 5 6 C F ; 
                 } 
 
                 . n a v   l i   . d a r k B t n   { 
                         c o l o r : # 3 A 3 A 3 A ; 
                 } 
 
                 < ! - -   S p a c e   f o r   N a v   B a r   - - > 
                 # n a v _ s h i e l d   { 
                         p o s i t i o n : a b s o l u t e ; 
                         l e f t : 0 p x ; 
                         t o p : 0 p x ; 
                         w i d t h : 2 6 0 p x ; 
                         b a c k g r o u n d - c o l o r : r g b a ( 0 , 0 , 0 , 1 ) ; 
                 } 
 
                 < ! - -   S e a s o n / E p i s o d e   S e l e c t i o n   - - > 
                 # S E _ n a v i g a t i o n   { 
                         p o s i t i o n : a b s o l u t e ; 
                         l e f t : 2 6 5 p x ; 
                 } 
 
                 . S E _ n a v   { 
                         l i s t - s t y l e : n o n e ; 
                         w i d t h : 1 0 0 p x ; 
                         l i n e - h e i g h t : 2 0 p x ; 
                         f o n t - s i z e : 1 9 p x ; 
                 } 
 
                 . S E _ n a v   l i   a   { 
                         f o n t - f a m i l y :   ' M a r i o n R e g u l a r ' ; 
                         c o l o r : # F F F F F F ; 
                         t e x t - d e c o r a t i o n : n o n e ; 
                         b a c k g r o u n d - c o l o r : r g b a ( 0 , 0 , 0 , . 8 ) ; 
                 } 
 
                 . S E _ n a v   l i   a : h o v e r   { 
                         c o l o r : # 5 1 5 6 C F 
                 } 
 
                 < ! - -   H e a d e r s   - - > 
                 # s h o w T i t l e   { 
                         f o n t - s i z e : 5 0 p x ; 
                         c o l o r : # 7 0 8 0 9 0 ; 
                         p o s i t i o n : a b s o l u t e ; 
                         t o p : 2 ; 
                         l e f t : 2 6 0 p x ; 
                         h e i g h t : 1 0 0 p x ; 
                         w i d t h : 6 0 0 p x ; 
                 } 
 
         < / s t y l e > 
 < / h e a d > 
 < b o d y > 
         < d i v   i d = ' n a v _ s h i e l d '   s t y l e = ' w i d t h :   2 6 0 p x ;   h e i g h t :   1 8 0 p x ;   d i s p l a y :   b l o c k ' > 
         < / d i v >       
         < d i v   i d = ' n a v i g a t i o n '   s t y l e = ' w i d t h : 2 6 0 p x ;   d i s p l a y :   b l o c k ' > 
                 < u l   c l a s s =   ' n a v ' > 
                         < l i > < a   h r e f = ' . . / . . / T V _ S h o w s / A - Z m e n u . h t m l ' >   . . < / a > < / l i > 
                         < l i > < a 
                                 h r e f = ' . . / . . / I n d e x . h t m l ' > H o m e < / a > < / l i > 
                         < l i > < a   h r e f = ' # F i l e s ' > F i l e s < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / . . / M o v i e s / A - Z m e n u . h t m l ' > M o v i e s < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / . . / T V _ S h o w s / A - Z m e n u . h t m l ' > T V   S h o w s < / a > < / l i > 
                         < l i > < a   c l a s s = ' d a r k B t n '   h r e f = ' # B o o m s h a k a l a k a ' > w o r d < / a > < / l i > 
                 < / u l > 
         < / d i v > 
         < ! - -   M a i n   S e c t i o n   - - > 
         < d i v   i d = ' S E _ n a v i g a t i o n '   s t y l e = ' w i d t h : 2 6 0 p x ; p o s i t i o n : a b s o l u t e ; t o p : 1 1 0 p x ; l e f t : 2 6 5 p x ; '   > 
                 < h e a d e r   i d = ' s h o w T i t l e '   s t y l e = ' f o n t - s i z e : 5 0 p x ; 
                         c o l o r : # 7 0 8 0 9 0 ; p o s i t i o n : a b s o l u t e ; t o p : 2 ; l e f t : 2 0 p x ; h e i g h t : 1 0 0 p x ; w i d t h : 3 0 0 p x ; ; ' >	� o  14�8�8 0 
lettername 
letterName	� m  58	�	� �	�	� � < / h e a d e r >                 
                 < u l   c l a s s = ' S E _ n a v '   s t y l e = ' p o s i t i o n : a b s o l u t e ; t o p : 7 5 p x ; ' >	� l 	9<	��7�6	� o  9<�5�5  0 letterhtmllist letterHtmlList�7  �6  	� m  =@	�	� �	�	� H 
 	 	   < / u l > 
         < / d i v > 
 < / b o d y > 
 < / h t m l >	� o      �4�4 0 episodetext episodeText	� 	��3	� P  F]	��2	�	� r  M\	�	�	� n MX	�	�	� I  NX�1	��0�1 0 	writecode 	writeCode	� 	�	�	� o  NQ�/�/ 0 episodefile episodeFile	� 	��.	� o  QT�-�- 0 episodetext episodeText�.  �0  	�  f  MN	� o      �,�, 0 episodefile episodeFile�2  	� �+�*
�+ consrmte�*  �3  �R  �Q  	� Z T---------------------------------------------------------------------------888888888   	� �	�	� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8 8 8 8 8 8 8	� R      �)�(�'
�) .ascrerr ****      � ****�(  �'  �S  �T  �m  �l  �n 0 anitem anItem	e o  ���&�& 0 allitems allItems	b S M--------------------------------------------------------------------------888   	c �	�	� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8	` 	�	�	� l tt�%�$�#�%  �$  �#  	� 	�	�	� l tt�"�!� �"  �!  �   	� 	��	� l tt����  �  �  �  ��  ] k  x�	�	� 	�	�	� Z  x7	�	���	� = x�	�	�	� n  x	�	�	� 1  {�
� 
bhit	� o  x{�� 0 mediachoice mediaChoice	� m  �	�	� �	�	� 
 M o v i e	� l �3	�	�	�	� k  �3	�	� 	�	�	� r  ��	�	�	� n  ��	�	�	� 1  ���
� 
pnam	� o  ���� 0 dumpdirectory dumpDirectory	� o      �� 0 	moviename 	movieName	� 	�	�	� r  ��	�	�	� n ��	�
 	� 2 ���
� 
cfol
  o  ���� 0 dumpdirectory dumpDirectory	� o      �� 0 azlist azList	� 


 l ��



 r  ��


 J  ����  
 o      ��  0 createdletters createdLetters
 . ( used for determining letters at the end   
 �

 P   u s e d   f o r   d e t e r m i n i n g   l e t t e r s   a t   t h e   e n d
 
	�
	 X  �3

�


 k  �.

 


 r  ��


 n  ��


 1  ���
� 
pnam
 o  ���� 0 azmenu azMenu
 o      �� 0 
azmenuname 
azMenuName
 


 r  ��


 n ��


 2 ���

�
 
cfol
 o  ���	�	 0 azmenu azMenu
 o      �� 0 
letterlist 
letterList
 
�
 X  �.
�

 k  �)

 


 r  ��

 
 n  ��
!
"
! 1  ���
� 
pnam
" o  ���� 0 aletter aLetter
  o      �� 0 
lettername 
letterName
 
#
$
# l ��
%
&
'
% s  ��
(
)
( o  ���� 0 
lettername 
letterName
) n      
*
+
*  ;  ��
+ o  ����  0 createdletters createdLetters
& ! used for letters at the end   
' �
,
, 6 u s e d   f o r   l e t t e r s   a t   t h e   e n d
$ 
-
.
- r  �
/
0
/ n ��
1
2
1 2 ��� 
�  
cfol
2 o  ������ 0 aletter aLetter
0 o      ���� 0 showlist showList
. 
3
4
3 X  �
5��
6
5 k  �
7
7 
8
9
8 r  !
:
;
: n  
<
=
< 1  ��
�� 
pnam
= o  ���� 0 ashow aShow
; o      ���� 0 showname showName
9 
>
?
> r  "+
@
A
@ n "'
B
C
B 2 #'��
�� 
file
C o  "#���� 0 ashow aShow
A o      ���� 0 episodelist episodeList
? 
D
E
D X  ,|
F��
G
F k  Bw
H
H 
I
J
I r  BK
K
L
K n  BG
M
N
M 1  CG��
�� 
pnam
N o  BC���� 0 	anepisode 	anEpisode
L o      ���� 0 episodename episodeName
J 
O
P
O Z  L2
Q
R����
Q >  LU
S
T
S n  LQ
U
V
U 1  MQ��
�� 
nmxt
V o  LM���� 0 	anepisode 	anEpisode
T m  QT
W
W �
X
X  h t m l
R l X.
Y
Z
[
Y k  X.
\
\ 
]
^
] r  Xc
_
`
_ m  X[
a
a �
b
b  .
` n     
c
d
c 1  ^b��
�� 
txdl
d 1  [^��
�� 
ascr
^ 
e
f
e r  dq
g
h
g b  dm
i
j
i m  dg
k
k �
l
l  .
j n  gl
m
n
m 1  hl��
�� 
nmxt
n o  gh���� 0 	anepisode 	anEpisode
h o      ���� 0 theextension theExtension
f 
o
p
o r  r~
q
r
q n  rz
s
t
s 4  uz��
u
�� 
citm
u m  xy���� 
t o  ru���� 0 episodename episodeName
r o      ���� 0 episodetitle episodeTitle
p 
v
w
v l �
x
y
z
x r  �
{
|
{ n �
}
~
} I  ����
���� 0 replace_chars  
 
�
�
� o  ������ 0 episodetitle episodeTitle
� 
�
�
� m  ��
�
� �
�
�   
� 
���
� m  ��
�
� �
�
�  _��  ��  
~  f  �
| o      ���� 0 episodetitle episodeTitle
y  changes " " to "_"   
z �
�
� $ c h a n g e s   "   "   t o   " _ "
w 
�
�
� r  ��
�
�
� b  ��
�
�
� o  ������ 0 episodetitle episodeTitle
� m  ��
�
� �
�
� 
 . h t m l
� o      ���� 0 docname docName
� 
�
�
� r  ��
�
�
� J  ��
�
� 
���
� m  ��
�
� �
�
�  ��  
� n     
�
�
� 1  ����
�� 
txdl
� 1  ����
�� 
ascr
� 
���
� Z  �.
�
���
�
� J  ��
�
� 
���
� I ����
���
�� .coredoexbool        obj 
� n ��
�
�
� 4  ����
�
�� 
cfol
� l ��
�����
� o  ������ 0 showname showName��  ��  
� o  ������ 0 viddirectory vidDirectory��  ��  
� k  ��
�
� 
�
�
� r  ��
�
�
� n ��
�
�
� 4  ����
�
�� 
cfol
� l ��
�����
� o  ������ 0 showname showName��  ��  
� o  ������ 0 viddirectory vidDirectory
� o      ���� 0 altshow altShow
� 
�
�
� I ����
�
�
�� .coremoveobj        obj 
� o  ������ 0 	anepisode 	anEpisode
� ��
���
�� 
insh
� o  ������ 0 altshow altShow��  
� 
���
� r  ��
�
�
� c  ��
�
�
� o  ������ 0 altshow altShow
� m  ����
�� 
ctxt
� o      ���� 0 
currentloc 
currentLoc��  ��  
� k  �.
�
� 
�
�
� Q  �
�
���
� r  �
�
�
� I �	����
�
�� .corecrel****      � null��  
� ��
�
�
�� 
kocl
� m  ����
�� 
cfol
� ��
�
�
�� 
insh
� o  ������ 0 viddirectory vidDirectory
� ��
���
�� 
prdt
� K  �
�
� ��
���
�� 
pnam
� o  ����� 0 showname showName��  ��  
� o      ���� 0 altshow altShow
� R      ������
�� .ascrerr ****      � ****��  ��  ��  
� 
�
�
� I "��
�
�
�� .coremoveobj        obj 
� o  ���� 0 	anepisode 	anEpisode
� ��
���
�� 
insh
� o  ���� 0 altshow altShow��  
� 
���
� r  #.
�
�
� c  #*
�
�
� o  #&���� 0 altshow altShow
� m  &)��
�� 
ctxt
� o      ���� 0 
currentloc 
currentLoc��  ��  
Z  avoids html files   
[ �
�
� " a v o i d s   h t m l   f i l e s��  ��  
P 
�
�
� l 3>
�
�
�
� r  3>
�
�
� n  3:
�
�
� m  6:��
�� 
cfol
� o  36���� 0 dumpdirectory dumpDirectory
� o      ���� 0 	parentfol 	parentFol
� " used as a delimiter (hehehe)   
� �
�
� 8 u s e d   a s   a   d e l i m i t e r   ( h e h e h e )
� 
�
�
� r  ?J
�
�
� n  ?F
�
�
� 1  BF��
�� 
pnam
� o  ?B���� 0 	parentfol 	parentFol
� o      ���� 0 
parentname 
parentName
� 
�
�
� r  KV
�
�
� c  KR
�
�
� o  KN���� 0 
currentloc 
currentLoc
� m  NQ��
�� 
ctxt
� o      ���� 0 pathname pathName
� 
�
�
� l Wi
�
�
�
� r  Wi
�
�
� n We
�
�
� I  Xe��
����� 0 replace_chars  
� 
�
�
� o  X[���� 0 pathname pathName
� 
�
�
� m  [^
�
� �
�
�   
� 
���
� m  ^a
�
� �
�
�  _��  ��  
�  f  WX
� o      ���� 0 pathname pathName
�  changes " " to "_"   
� �
�
� $ c h a n g e s   "   "   t o   " _ "
� 
�
�
� l ju   r  ju o  jm���� 0 
parentname 
parentName n      1  pt��
�� 
txdl 1  mp��
�� 
ascr  this all points    �  t h i s   a l l   p o i n t s
� 	 l v�

 r  v� n  v~ 4  y~��
�� 
citm m  |}����  o  vy���� 0 pathname pathName o      ���� 0 	almostloc 	almostLoc  to the file for the HTML    � 0 t o   t h e   f i l e   f o r   t h e   H T M L	  r  �� o  ������ 0 episodename episodeName n      1  ����
�� 
txdl 1  ����
�� 
ascr  r  �� b  �� n  ��  4  ����!
�� 
citm! m  ������   o  ������ 0 	almostloc 	almostLoc o  ������ 0 episodename episodeName o      ���� 0 	nearlyloc 	nearlyLoc "#" r  ��$%$ n  ��&'& 7 ����()
�� 
ctxt( l ��*����* [  ��+,+ l ��-����- I ������.
�� .sysooffslong    ��� null��  . ��/0
�� 
psof/ m  ��11 �22  :0 ��3��
�� 
psin3 o  ������ 0 	nearlyloc 	nearlyLoc��  ��  ��  , m  ������ ��  ��  ) m  ��������' o  ���� 0 	nearlyloc 	nearlyLoc% o      �~�~ 0 fileloc fileLoc# 454 r  ��676 n ��898 I  ���}:�|�} 0 replace_chars  : ;<; o  ���{�{ 0 fileloc fileLoc< =>= m  ��?? �@@  :> A�zA m  ��BB �CC  /�z  �|  9  f  ��7 o      �y�y 0 fileloc fileLoc5 DED l ���xFG�x  F \ V----------------------------------------------------------------------------....###...   G �HH � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . . . . # # # . . .E IJI l ���wKL�w  K Z T------------------oops-----------------------------------------.-----------..##.##..   L �MM � - - - - - - - - - - - - - - - - - - o o p s - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . - - - - - - - - - - - . . # # . # # . .J NON l ��PQRP r  ��STS J  ��UU V�vV m  ��WW �XX  �v  T n     YZY 1  ���u
�u 
txdlZ 1  ���t
�t 
ascrQ % ---------------------..##...##.   R �[[ > - - - - - - - - - - - - - - - - - - - - - . . # # . . . # # .O \]\ l �^_`^ Q  �ab�sa l �cdec l �fghf I ��r�qi
�r .corecrel****      � null�q  i �pjk
�p 
koclj m  ���o
�o 
filek �nlm
�n 
inshl o  ���m�m 0 ashow aShowm �ln�k
�l 
prdtn K  �oo �jp�i
�j 
pnamp o  � �h�h 0 docname docName�i  �k  g  ######   h �qq  # # # # # #d P Jprevents duplicates from being written-------------------------..##.....##   e �rr � p r e v e n t s   d u p l i c a t e s   f r o m   b e i n g   w r i t t e n - - - - - - - - - - - - - - - - - - - - - - - - - . . # # . . . . . # #b R      �g�f�e
�g .ascrerr ****      � ****�f  �e  �s  _ R L------------------------------------------------------------------.##.....##   ` �ss � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . # #] t�dt Z  wuv�c�bu J   ww x�ax I �`y�_
�` .coredoexbool        obj y n z{z 4  �^|
�^ 
file| l }�]�\} o  �[�[ 0 docname docName�]  �\  { o  �Z�Z 0 ashow aShow�_  �a  v l #s~�~ k  #s�� ��� r  #/��� n #+��� 4  $+�Y�
�Y 
file� l '*��X�W� o  '*�V�V 0 docname docName�X  �W  � o  #$�U�U 0 ashow aShow� o      �T�T 0 dfile dFile� ��� r  0;��� c  07��� o  03�S�S 0 dfile dFile� m  36�R
�R 
alis� o      �Q�Q 0 episodefile episodeFile� ��� l <<�P���P  � &  Code for episode html text file!   � ��� @ C o d e   f o r   e p i s o d e   h t m l   t e x t   f i l e !� ��� l <<�O���O  � @ :you should modify this for your own coding needs of course   � ��� t y o u   s h o u l d   m o d i f y   t h i s   f o r   y o u r   o w n   c o d i n g   n e e d s   o f   c o u r s e� ��� r  <[��� b  <W��� b  <S��� b  <O��� b  <K��� b  <G��� b  <C��� m  <?�� ���
� < ! D O C T Y P E   h t m l > 
 < h t m l > 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	       
         < h e a d > 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
                 < s t y l e > 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
                           # v i d e o _ b a c k g r o u n d   { 	 	 	 	 	 	 	 	 	 	 
                         t o p : 0 ; 	 	 	 	 	 	 	 	 	 	 	 	 	 
                         b o t t o m : 0 ; 	 	 	 	 	 	 	 	 	 	 	 	             
                         l e f t : 0 ; 	 	 	 	 	 	 	 	 	 	 	 	       	 
                         r i g h t : 0 ; 	 	 	 	 	 	 	 	 	 	 	 	 	 
                         z - i n d e x : - 1 0 ; 
                     p o s i t i o n : f i x e d ; 
                     h e i g h t : 1 0 0 % ; 
                     w i d t h : 1 0 0 % ; 
                     b a c k g r o u n d - c o l o r : # 0 0 0 0 0 0 
             } 
             . b u t t o n   { 
                     v i s i b i l i t y : v i s i b l e ; 
                     o p a c i t y : 0 ; 
                     - w e b k i t - t r a n s i t i o n : v i s i b i l i t y   0 s   l i n e a r   0 . 5 s , o p a c i t y   0 . 5 s   l i n e a r ; 
                     - m o z - t r a n s i t i o n : v i s i b i l i t y   0 s   l i n e a r   0 . 5 s , o p a c i t y   0 . 5 s   l i n e a r ; 
                     - m s - t r a n s i t i o n : v i s i b i l i t y   0 s   l i n e a r   0 . 5 s , o p a c i t y   0 . 5 s   l i n e a r ; 
                     - o - t r a n s i t i o n : v i s i b i l i t y   0 s   l i n e a r   0 . 5 s , o p a c i t y   0 . 5 s   l i n e a r ; 
                     t r a n s i t i o n : v i s i b i l i t y   0 s   l i n e a r   0 . 5 s , o p a c i t y   0 . 5 s   l i n e a r ; 
                     p o s i t i o n : a b s o l u t e ; 
                     t o p : 1 0 p x ; 
                     l e f t : 5 p x ; 
             } 
             . b u t t o n : h o v e r   { 
                     v i s i b i l i t y : v i s i b l e ; 
                     o p a c i t y : 1 ; 
                     - w e b k i t - t r a n s i t i o n - d e l a y : 0 s ; 
                     - m o z - t r a n s i t i o n - d e l a y : 0 s ; 
                     - m s - t r a n s i t i o n - d e l a y : 0 s ; 
                     - o - t r a n s i t i o n - d e l a y : 0 s ; 
                     t r a n s i t i o n - d e l a y : 0 s ; 
             } 
     < / s t y l e > 
     < / h e a d >                 
     < b o d y > 
             < d i v   c l a s s = ' f l ' > 
                     < v i d e o   i d = ' v i d e o _ b a c k g r o u n d '   p r e l o a d = ' a u t o | m e t a d a t a '   h e i g h t = ' 1 0 0 % ' c o n t r o l s = ' c o n t r o l s '   w i d t h = ' 1 0 0 % '   a u t o p l a y > 
                     < s o u r c e   s r c = ' . . / . . / . . / . . /� o  ?B�N�N 0 fileloc fileLoc� m  CF�� ��� p '   t y p e = ' v i d e o / m p 4 ' / > 
                     < s o u r c e   s r c = ' . . / . . / . . / . . /� o  GJ�M�M 0 fileloc fileLoc� m  KN�� ��� p '   t y p e = ' v i d e o / o g g ' / > 
                     < s o u r c e   s r c = ' . . / . . / . . / . . /� o  OR�L�L 0 fileloc fileLoc� m  SV�� ���� '   t y p e = ' v i d e o / w e b m '   / > 
     < / v i d e o > 
     < b u t t o n   i d = ' f u l l s c r e e n v i d '   c l a s s = ' b u t t o n ' > F u l l s c r e e n   v i d e o < / b u t t o n > 
 < / d i v > 
     < s c r i p t > 
             ( f u n c t i o n ( w i n d o w ,   d o c u m e n t ) { 
 	 	 	 v a r   $   =   f u n c t i o n ( s e l e c t o r , c o n t e x t ) { r e t u r n ( c o n t e x t | | d o c u m e n t ) . q u e r y S e l e c t o r ( s e l e c t o r ) } ; 
 	 	 	 
 	 	 	 v a r   v i d e o     =   $ ( " v i d e o " ) , 
 	 	 	 	 i f r a m e   =   $ ( " i f r a m e " ) , 
 	 	 	 	 d o m P r e f i x e s   =   ' W e b k i t   M o z   O   m s   K h t m l ' . s p l i t ( '   ' ) ; 
 	 	 	 	 
 	 	 	 v a r   f u l l s c r e e n   =   f u n c t i o n ( e l e m )   { 
 	 	 	 	 v a r   p r e f i x ; 
 	 	 	 	 / /   M o z i l l a   a n d   w e b k i t   i n t i a l i s e   f u l l s c r e e n   s l i g h t l y   d i f f e r e n t l y 
 	 	 	 	 f o r   (   v a r   i   =   - 1 ,   l e n   =   d o m P r e f i x e s . l e n g t h ;   + + i   <   l e n ;   )   { 
 	 	                     p r e f i x   =   d o m P r e f i x e s [ i ] . t o L o w e r C a s e ( ) ; 
 	 	 	 	     
 	 	 	 	     i f   (   e l e m [ p r e f i x   +   ' E n t e r F u l l S c r e e n ' ]   )   { 
 	 	                         / /   W e b k i t   u s e s   E n t e r F u l l S c r e e n   f o r   v i d e o 
 	 	 	 	 	 r e t u r n   p r e f i x   +   ' E n t e r F u l l S c r e e n ' ; 
 	 	 	 	 	 b r e a k ; 
 	 	                     }   e l s e   i f (   e l e m [ p r e f i x   +   ' R e q u e s t F u l l S c r e e n ' ]   )   { 
 	 	 	 	 	 / /   M o z i l l a   u s e s   R e q u e s t F u l l S c r e e n   f o r   a l l   e l e m e n t s   a n d   w e b k i t   u s e s   i t   f o r   n o n   v i d e o   e l e m e n t s 
 	 	 	 	 	 r e t u r n   p r e f i x   +   ' R e q u e s t F u l l S c r e e n ' ; 
 	 	 	 	 	 b r e a k ; 
 	 	 	 	     } 
 	 	                 } 
 	 	 
 	 	 	 	 r e t u r n   f a l s e ; 
 	 	 	 } ; 
 	 	 	 
 	 	 	 / /   W i l l   r e t u r n   f u l l s c r e e n   m e t h o d   a s   a   s t r i n g   i f   s u p p o r t e d   e . g .   ' m o z R e q u e s t F u l l S c r e e n '   | |   f a l s e ; 
 	 	 	 v a r   f u l l s c r e e n v i d e o   =   f u l l s c r e e n ( d o c u m e n t . c r e a t e E l e m e n t ( " v i d e o " ) ) ; 
 	 	 	 
 	 	 	 / /   W e b k i t   u s e s   ' r e q u e s t F u l l S c r e e n '   f o r   n o n   v i d e o   e l e m e n t s 
 	 	 	 v a r   f u l l s c r e e n o t h e r   =   f u l l s c r e e n ( d o c u m e n t . c r e a t e E l e m e n t ( " i f r a m e " ) ) ; 
 
 	 	 	 i f ( ! f u l l s c r e e n )   { 
 	 	 	 	 a l e r t ( " F u l l s c r e e n   w o n ' t   w o r k ,   p l e a s e   m a k e   s u r e   y o u ' r e   u s i n g   a   b r o w s e r   t h a t   s u p p o r t s   i t   a n d   y o u   h a v e   e n a b l e d   t h e   f e a t u r e " ) ; 
 	 	 	 	 r e t u r n ; 
 	 	 	 } 
 	 	 	 
 	 	 	 / /   S h o u l d   a d d   p r e f i x e d   e v e n t s   f o r   p o t e n t i a l   m s / o   o r   u n p r e f i x e d   s u p p o r t   t o o 
 	 	 	 v i d e o . a d d E v e n t L i s t e n e r ( " w e b k i t f u l l s c r e e n c h a n g e " , f u n c t i o n ( ) { 
 	 	 	 	 c o n s o l e . l o g ( d o c u m e n t . w e b k i t I s F u l l S c r e e n ) ; 
 	 	 	 } ,   f a l s e ) ; 
 	 	 	 v i d e o . a d d E v e n t L i s t e n e r ( " m o z f u l l s c r e e n c h a n g e " , f u n c t i o n ( ) { 
 	 	 	 	 c o n s o l e . l o g ( d o c u m e n t . m o z F u l l S c r e e n ) ; 
 	 	 	 } ,   f a l s e ) ; 
 
 	 	 	 $ ( " # f u l l s c r e e n v i d " ) . a d d E v e n t L i s t e n e r ( " c l i c k " ,   f u n c t i o n ( ) { 
 	 	 	 	 / /   T h e   t e s t   r e t u r n s   a   s t r i n g   s o   w e   c a n   e a s i l y   c a l l   i t   o n   a   c l i c k   e v e n t 
 	 	 	 	 v i d e o [ f u l l s c r e e n v i d e o ] ( ) ; 
 	 	 	 } ,   f a l s e ) ; 
 	 	 	 $ ( " # f u l l s c r e e n i f r a m e " ) . a d d E v e n t L i s t e n e r ( " c l i c k " ,   f u n c t i o n ( ) { 
 	 	 	 	 / /   i f r a m e   f u l l s c r e e n   a n d   n o n   v i d e o   e l e m e n t s   i n   w e b k i t   u s e   r e q u e s t   o v e r   e n t e r 
 	 	 	 	 i f r a m e [ f u l l s c r e e n o t h e r ] ( ) ; 
 	 	 	 } ,   f a l s e ) ; 
 	 	 } ) ( t h i s ,   t h i s . d o c u m e n t ) ; 
 
         < / s c r i p t > 
 < / b o d y > 
 < / h t m l >� o      �K�K 0 episodetext episodeText� ��J� P  \s��I�� r  cr��� n cn��� I  dn�H��G�H 0 	writecode 	writeCode� ��� o  dg�F�F 0 episodefile episodeFile� ��E� o  gj�D�D 0 episodetext episodeText�E  �G  �  f  cd� o      �C�C 0 episodefile episodeFile�I  � �B�A
�B consrmte�A  �J   ) #-------------------------.##.....##   � ��� F - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . # #�c  �b  �d  �� 0 	anepisode 	anEpisode
G o  /2�@�@ 0 episodelist episodeList
E ��� r  }���� b  }���� o  }��?�? 0 showname showName� m  ���� ��� 
 . h t m l� o      �>�> 0 docname docName� ��� r  ����� c  ����� o  ���=�= 0 showname showName� m  ���<
�< 
ctxt� o      �;�; 0 altshowname altShowName� ��� r  ����� n ����� I  ���:��9�: 0 replace_chars  � ��� o  ���8�8 0 altshowname altShowName� ��� m  ���� ���  _� ��7� m  ���� ���   �7  �9  �  f  ��� o      �6�6 0 altshowname altShowName� ��� Q  �����5� I ���4�3�
�4 .corecrel****      � null�3  � �2��
�2 
kocl� m  ���1
�1 
file� �0��
�0 
insh� o  ���/�/ 0 aletter aLetter� �.��-
�. 
prdt� K  ���� �,��+
�, 
pnam� o  ���*�* 0 docname docName�+  �-  � R      �)�(�'
�) .ascrerr ****      � ****�(  �'  �5  � ��� Z  ����&�%� J  ���� ��$� I ���#��"
�# .coredoexbool        obj � n ����� 4  ���!�
�! 
file� l ���� �� o  ���� 0 docname docName�   �  � o  ���� 0 aletter aLetter�"  �$  � k  ��� ��� r  ����� n ����� 4  ����
� 
file� l ������ o  ���� 0 docname docName�  �  � o  ���� 0 aletter aLetter� o      �� 0 dfile dFile� ��� r  ����� c  ��   o  ���� 0 dfile dFile m  ���
� 
alis� o      �� 0 episodefile episodeFile�  l � r  � m  ��		 �

  < l i > < a   h r e f = ' o      �� 0 	listpart1 	listPart1 . (auto generate HTML lists-----.#######...    � P a u t o   g e n e r a t e   H T M L   l i s t s - - - - - . # # # # # # # . . .  l 
 r  
 m   �  ' > o      �� 0 	listpart6 	listPart6 K E-------------------------------------------------.##...........##.	      � � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . # # . 	      l  r   m   �  < / a > < / l i > o      �� 0 	listpart8 	listPart8 ? 9---------------------------------------.##...........##.	    � r - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . # # . 	  !  l "#$" r  %&% J  ��  & o      �� 0 showhtmllist showHtmlList# > 8--------------------------------------------.#######....   $ �'' p - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # # # # # # . . . .! ()( l #*+,* r  #-.- n /0/ 2  �
� 
file0 o  �� 0 ashow aShow. o      �� 0 allfiles allFiles+ 7 1--------------------------------.##...........##.   , �11 b - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . # # .) 232 X  $�4�54 l :�6786 Z  :�9:�
�	9 = :C;<; n  :?=>= 1  ;?�
� 
nmxt> o  :;�� 0 afile aFile< m  ?B?? �@@  h t m l: l F�ABCA k  F�DD EFE r  FSGHG c  FOIJI n  FKKLK 1  GK�
� 
pnamL o  FG�� 0 afile aFileJ m  KN�
� 
ctxtH o      �� 0 htmlfile htmlFileF MNM r  T{OPO n  TwQRQ 7 Ww�ST
� 
ctxtS m  ]_�� T l `vU� ��U \  `vVWV l atX����X I at����Y
�� .sysooffslong    ��� null��  Y ��Z[
�� 
psofZ m  eh\\ �]]  .[ ��^��
�� 
psin^ o  kn���� 0 htmlfile htmlFile��  ��  ��  W m  tu���� �   ��  R o  TW���� 0 htmlfile htmlFileP o      ����  0 trueseasonname trueSeasonNameN _`_ r  |�aba n |�cdc I  }���e���� 0 replace_chars  e fgf o  }�����  0 trueseasonname trueSeasonNameg hih m  ��jj �kk  _i l��l m  ��mm �nn   ��  ��  d  f  |}b o      ����  0 trueseasonname trueSeasonName` opo r  ��qrq b  ��sts b  ��uvu b  ��wxw b  ��yzy b  ��{|{ b  ��}~} b  ��� b  ����� b  ����� b  ����� b  ����� b  ����� o  ������ 0 	listpart1 	listPart1� m  ���� ���  . . / . . / . . / M o v i e s� m  ���� ���  /� o  ������ 0 
azmenuname 
azMenuName� m  ���� ���  /� o  ������ 0 
lettername 
letterName� m  ���� ���  /~ o  ������ 0 showname showName| m  ���� ���  /z o  ������ 0 htmlfile htmlFilex o  ������ 0 	listpart6 	listPart6v o  ������  0 trueseasonname trueSeasonNamet o  ������ 0 	listpart8 	listPart8r o      ���� 0 	totallist 	totalListp ���� s  ����� o  ������ 0 	totallist 	totalList� n      ���  ;  ��� o  ������ 0 showhtmllist showHtmlList��  B $ -----------------.#######....	   C ��� < - - - - - - - - - - - - - - - - - . # # # # # # # . . . . 	�
  �	  7 > 8---------------------------------------.##...........##.   8 ��� p - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . # # .� 0 afile aFile5 o  '*���� 0 allfiles allFiles3 ��� r  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ���� < ! D o c t y p e   h t m l > 
 < h e a d > 
         < t i t l e > A   S h o w   E x a m p l e < / t i t l e > 
         < m e t a   c h a r s e t = ' U T F - 8 '   / > 
         < s t y l e > 
 	 b o d y   { 
                         m a r g i n : 0 ; 
                         p a d d i n g : 0 ; 
                         h e i g h t : 1 0 0 % ; 
                         b a c k g r o u n d - c o l o r : # 0 0 0 ; 
                 } 
 
                 < ! - -   N a v   m e n u   - - > 
                 # n a v i g a t i o n   { 
                         p o s i t i o n : a b s o l u t e ; 
                         t o p : 1 9 5 p x ; 
                         l e f t : 6 0 p x ; 
                 } 
                 . n a v   { 
                         l i s t - s t y l e : n o n e ; 
                         w i d t h : 1 0 0 p x ; 
                         l i n e - h e i g h t : 2 0 p x ; 
                 } 
                 . n a v   l i   a   { 
                         f o n t - f a m i l y :   ' M a r i o n R e g u l a r ' ; 
                         c o l o r : # 8 0 8 0 8 0 ; 
                         f o n t - s i z e : 1 0 p t ; 
                         t e x t - d e c o r a t i o n : n o n e ; 
                         b a c k g r o u n d - c o l o r : r g b a ( 0 , 0 , 0 , . 8 ) ; 
                 } 
                 . n a v   l i   a : h o v e r   { 
                         c o l o r : # 5 1 5 6 C F ; 
                 } 
 
                 < ! - -   N a v   s u b - m e n u s   - - > 
                 d i v # n a v i g a t i o n   a : h o v e r   { 
                         c o l o r : 5 1 5 6 C F ; 
                 } 
 
                 . n a v   l i   . d a r k B t n   { 
                         c o l o r : # 3 A 3 A 3 A ; 
                 } 
 
                 < ! - -   S p a c e   f o r   N a v   B a r   - - > 
                 # n a v _ s h i e l d   { 
                         p o s i t i o n : a b s o l u t e ; 
                         l e f t : 0 p x ; 
                         t o p : 0 p x ; 
                         w i d t h : 2 6 0 p x ; 
                         b a c k g r o u n d - c o l o r : r g b a ( 0 , 0 , 0 , 1 ) ; 
                 } 
 
                 < ! - -   S e a s o n / E p i s o d e   S e l e c t i o n   - - > 
                 # S E _ n a v i g a t i o n   { 
                         p o s i t i o n : a b s o l u t e ; 
                         l e f t : 2 6 5 p x ; 
                 } 
 
                 . S E _ n a v   { 
                         l i s t - s t y l e : n o n e ; 
                         w i d t h : 1 0 0 p x ; 
                         l i n e - h e i g h t : 2 0 p x ; 
                         f o n t - s i z e : 1 9 p x ; 
                 } 
 
                 . S E _ n a v   l i   a   { 
                         f o n t - f a m i l y :   ' M a r i o n R e g u l a r ' ; 
                         c o l o r : # F F F F F F ; 
                         t e x t - d e c o r a t i o n : n o n e ; 
                         b a c k g r o u n d - c o l o r : r g b a ( 0 , 0 , 0 , . 8 ) ; 
                 } 
 
                 . S E _ n a v   l i   a : h o v e r   { 
                         c o l o r : # 5 1 5 6 C F 
                 } 
 
                 < ! - -   H e a d e r s   - - > 
                 # s h o w T i t l e   { 
                         f o n t - s i z e : 5 0 p x ; 
                         c o l o r : # 7 0 8 0 9 0 ; 
                         p o s i t i o n : a b s o l u t e ; 
                         t o p : 2 ; 
                         l e f t : 2 6 0 p x ; 
                         h e i g h t : 1 0 0 p x ; 
                         w i d t h : 3 0 0 p x ; 
                 } 
 
         < / s t y l e > 
 < / h e a d > 
 < b o d y > 
         < d i v   i d = ' n a v _ s h i e l d '   s t y l e = ' w i d t h :   2 6 0 p x ;   h e i g h t :   1 8 0 p x ;   d i s p l a y :   b l o c k ' > 
         < / d i v >       
         < d i v   i d = ' n a v i g a t i o n '   s t y l e = ' w i d t h : 2 6 0 p x ;   d i s p l a y :   b l o c k ' > 
                 < u l   c l a s s =   ' n a v ' > 
                         < l i > < a   h r e f = ' . . / . . / . . / M o v i e s / A - Z m e n u /� o  ������ 0 
lettername 
letterName� m  ���� ���� . h t m l ' >   . . < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / . . / . . / I n d e x . h t m l ' > H o m e < / a > < / l i > 
                         < l i > < a   h r e f = ' # F i l e s ' > F i l e s < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / . . / . . / M o v i e s / A - Z m e n u . h t m l ' > M o v i e s < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / . . / . . / T V _ S h o w s / A - Z m e n u . h t m l ' > T V   S h o w s < / a > < / l i > 
                         < l i > < a   c l a s s = ' d a r k B t n '   h r e f = ' # B o o m s h a k a l a k a ' > w o r d < / a > < / l i > 
                 < / u l > 
         < / d i v > 
         < ! - -   M a i n   S e c t i o n   - - > 
         < d i v   i d = ' S E _ n a v i g a t i o n '   s t y l e = ' w i d t h : 2 6 0 p x ; p o s i t i o n : a b s o l u t e ; t o p : 1 1 0 p x ; l e f t : 2 6 5 p x ; '   > 
                 < h e a d e r   i d = ' s h o w T i t l e '   s t y l e = ' f o n t - s i z e : 5 0 p x ; 
                         c o l o r : # 7 0 8 0 9 0 ; p o s i t i o n : a b s o l u t e ; t o p : 2 ; l e f t : 2 0 p x ; h e i g h t : 1 0 0 p x ; w i d t h : 6 0 0 p x ; ' >� o  ������ 0 altshowname altShowName� m  ���� ��� � < / h e a d e r >                 
                 < u l   c l a s s = ' S E _ n a v '   s t y l e = ' p o s i t i o n : a b s o l u t e ; t o p : 1 1 0 p x ; ' >� l 	�������� o  ������ 0 showhtmllist showHtmlList��  ��  � m  ���� ��� F 
 	 	 < / u l > 
         < / d i v > 
 < / b o d y > 
 < / h t m l >� o      ���� 0 episodetext episodeText� ���� P  ������ r   ��� n  ��� I  ������� 0 	writecode 	writeCode� ��� o  ���� 0 episodefile episodeFile� ���� o  ���� 0 episodetext episodeText��  ��  �  f   � o      ���� 0 episodefile episodeFile��  � ����
�� consrmte��  ��  �&  �%  � ��� r   ��� b  ��� o  ���� 0 
lettername 
letterName� m  �� ��� 
 . h t m l� o      ���� 0 docname docName� ��� Q  !I����� I $@�����
�� .corecrel****      � null��  � ����
�� 
kocl� m  (+��
�� 
file� ����
�� 
insh� l ./������ o  ./���� 0 azmenu azMenu��  ��  � �����
�� 
prdt� K  2:�� �����
�� 
pnam� o  58���� 0 docname docName��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ���� Z  J�������� J  JX�� ���� I JV�����
�� .coredoexbool        obj � n JR��� 4  KR���
�� 
file� l NQ������ o  NQ���� 0 docname docName��  ��  � o  JK���� 0 azmenu azMenu��  ��  � k  [��� ��� l [g���� r  [g��� n [c��� 4  \c���
�� 
file� l _b������ o  _b���� 0 docname docName��  ��  � o  [\���� 0 azmenu azMenu� o      ���� 0 dfile dFile�  			-----..######...   � ��� & 	 	 	 - - - - - . . # # # # # # . . .� ��� l hs���� r  hs��� c  ho��� o  hk���� 0 dfile dFile� m  kn��
�� 
alis� o      ���� 0 episodefile episodeFile� 0 *-------------------------.##...........##.   � ��� T - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . # # .� ��� l t{���� r  t{��� m  tw�� ���  < l i > < a   h r e f = '� o      ���� 0 	listpart1 	listPart1� 1 +------------------------.##................   � ��� V - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . . . . . .�    l |� r  |� m  | �  ' > o      ���� 0 	listpart6 	listPart6 ? 9--------------------------------------.##................    �		 r - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . . . . . . 

 l �� r  �� m  �� �  < / a > < / l i > o      ���� 0 	listpart8 	listPart8 6 0----------------------------.##.................    � ` - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . . . . . . .  l �� r  �� J  ������   o      ����  0 letterhtmllist letterHtmlList 8 2---------------------------------.##..........##..    � d - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . # # . .  l ��  r  ��!"! n ��#$# 2  ����
�� 
file$ o  ������ 0 aletter aLetter" o      ���� 0 allfiles allFiles ( "----------------------.######. ...     �%% D - - - - - - - - - - - - - - - - - - - - - - . # # # # # # .   . . . &'& X  �I(��)( l �D*+,* Z  �D-.����- = ��/0/ n  ��121 1  ����
�� 
nmxt2 o  ������ 0 afile aFile0 m  ��33 �44  h t m l. k  �@55 676 r  ��898 c  ��:;: n  ��<=< 1  ����
�� 
pnam= o  ������ 0 afile aFile; m  ����
�� 
ctxt9 o      ���� 0 htmlfile htmlFile7 >?> r  ��@A@ n  ��BCB 7 ����DE
�� 
ctxtD m  ������ E l ��F����F \  ��GHG l ��I����I I ������J
�� .sysooffslong    ��� null��  J ��KL
�� 
psofK m  ��MM �NN  .L ��O��
�� 
psinO o  ������ 0 htmlfile htmlFile��  ��  ��  H m  ������ ��  ��  C o  ������ 0 htmlfile htmlFileA o      ���� 0 trueshowname trueShowName? PQP r  �RSR n �TUT I  ���V���� 0 replace_chars  V WXW o  ������ 0 trueshowname trueShowNameX YZY m  ��[[ �\\  _Z ]��] m  ��^^ �__   ��  ��  U  f  ��S o      ���� 0 trueshowname trueShowNameQ `a` r  7bcb b  3ded b  /fgf b  +hih b  'jkj b  #lml b  non b  pqp b  rsr b  tut b  vwv o  ���� 0 	listpart1 	listPart1w m  xx �yy  . . / . . / M o v i e su m  zz �{{  /s o  ���� 0 
azmenuname 
azMenuNameq m  || �}}  /o o  ���� 0 
lettername 
letterNamem m  "~~ �  /k o  #&���� 0 htmlfile htmlFilei o  '*���� 0 	listpart6 	listPart6g o  +.���� 0 trueshowname trueShowNamee o  /2�� 0 	listpart8 	listPart8c o      �~�~ 0 	totallist 	totalLista ��}� s  8@��� o  8;�|�| 0 	totallist 	totalList� n      ���  ;  >?� o  ;>�{�{  0 letterhtmllist letterHtmlList�}  ��  ��  + 1 +-------------------------------------------   , ��� V - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -�� 0 afile aFile) o  ���z�z 0 allfiles allFiles' ��� Z  Jg���y�x� = JU��� c  JQ��� o  JM�w�w 0 
lettername 
letterName� m  MP�v
�v 
TEXT� m  QT�� ���  -� r  Xc��� c  X_��� m  X[�� ���  #� m  [^�u
�u 
TEXT� o      �t�t 0 
lettername 
letterName�y  �x  � ��� r  h��� b  h{��� b  hw��� b  hs��� b  ho��� m  hk�� ���� < ! D o c t y p e   h t m l > 
 < h e a d > 
         < t i t l e > A   S h o w   E x a m p l e < / t i t l e > 
         < m e t a   c h a r s e t = ' U T F - 8 '   / > 
         < s t y l e > 
                 b o d y   { 
                         m a r g i n : 0 ; 
                         p a d d i n g : 0 ; 
                         h e i g h t : 1 0 0 % ; 
                         b a c k g r o u n d - c o l o r : # 0 0 0 ; 
                 } 
 
                 < ! - -   N a v   m e n u   - - > 
                 # n a v i g a t i o n   { 
                         p o s i t i o n : a b s o l u t e ; 
                         t o p : 1 9 5 p x ; 
                         l e f t : 6 0 p x ; 
                 } 
                 . n a v   { 
                         l i s t - s t y l e : n o n e ; 
                         w i d t h : 1 0 0 p x ; 
                         l i n e - h e i g h t : 2 0 p x ; 
                 } 
                 . n a v   l i   a   { 
                         f o n t - f a m i l y :   ' M a r i o n R e g u l a r ' ; 
                         c o l o r : # 8 0 8 0 8 0 ; 
                         f o n t - s i z e : 1 0 p t ; 
                         t e x t - d e c o r a t i o n : n o n e ; 
                         b a c k g r o u n d - c o l o r : r g b a ( 0 , 0 , 0 , . 8 ) ; 
                 } 
                 . n a v   l i   a : h o v e r   { 
                         c o l o r : # 5 1 5 6 C F ; 
                 } 
 
                 < ! - -   N a v   s u b - m e n u s   - - > 
                 d i v # n a v i g a t i o n   a : h o v e r   { 
                         c o l o r : 5 1 5 6 C F ; 
                 } 
 
                 . n a v   l i   . d a r k B t n   { 
                         c o l o r : # 3 A 3 A 3 A ; 
                 } 
 
                 < ! - -   S p a c e   f o r   N a v   B a r   - - > 
                 # n a v _ s h i e l d   { 
                         p o s i t i o n : a b s o l u t e ; 
                         l e f t : 0 p x ; 
                         t o p : 0 p x ; 
                         w i d t h : 2 6 0 p x ; 
                         b a c k g r o u n d - c o l o r : r g b a ( 0 , 0 , 0 , 1 ) ; 
                 } 
 
                 < ! - -   S e a s o n / E p i s o d e   S e l e c t i o n   - - > 
                 # S E _ n a v i g a t i o n   { 
                         p o s i t i o n : a b s o l u t e ; 
                         l e f t : 2 6 5 p x ; 
                 } 
 
                 . S E _ n a v   { 
                         l i s t - s t y l e : n o n e ; 
                         w i d t h : 1 0 0 p x ; 
                         l i n e - h e i g h t : 2 0 p x ; 
                         f o n t - s i z e : 1 9 p x ; 
                 } 
 
                 . S E _ n a v   l i   a   { 
                         f o n t - f a m i l y :   ' M a r i o n R e g u l a r ' ; 
                         c o l o r : # F F F F F F ; 
                         t e x t - d e c o r a t i o n : n o n e ; 
                         b a c k g r o u n d - c o l o r : r g b a ( 0 , 0 , 0 , . 8 ) ; 
                 } 
 
                 . S E _ n a v   l i   a : h o v e r   { 
                         c o l o r : # 5 1 5 6 C F 
                 } 
 
                 < ! - -   H e a d e r s   - - > 
                 # s h o w T i t l e   { 
                         f o n t - s i z e : 5 0 p x ; 
                         c o l o r : # 7 0 8 0 9 0 ; 
                         p o s i t i o n : a b s o l u t e ; 
                         t o p : 2 ; 
                         l e f t : 2 6 0 p x ; 
                         h e i g h t : 1 0 0 p x ; 
                         w i d t h : 3 0 0 p x ; 
                 } 
 
         < / s t y l e > 
 < / h e a d > 
 < b o d y > 
         < d i v   i d = ' n a v _ s h i e l d '   s t y l e = ' w i d t h :   2 6 0 p x ;   h e i g h t :   1 8 0 p x ;   d i s p l a y :   b l o c k ' > 
         < / d i v >       
         < d i v   i d = ' n a v i g a t i o n '   s t y l e = ' w i d t h : 2 6 0 p x ;   d i s p l a y :   b l o c k ' > 
                 < u l   c l a s s =   ' n a v ' > 
                         < l i > < a   h r e f = ' . . / . . / M o v i e s / A - Z m e n u . h t m l ' >   . . < / a > < / l i > 
                         < l i > < a 
                                 h r e f = ' . . / . . / I n d e x . h t m l ' > H o m e < / a > < / l i > 
                         < l i > < a   h r e f = ' # F i l e s ' > F i l e s < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / . . / M o v i e s / A - Z m e n u . h t m l ' > M o v i e s < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / . . / T V _ S h o w s / A - Z m e n u . h t m l ' > T V   S h o w s < / a > < / l i > 
                         < l i > < a   c l a s s = ' d a r k B t n '   h r e f = ' # B o o m s h a k a l a k a ' > w o r d < / a > < / l i > 
                 < / u l > 
         < / d i v > 
         < ! - -   M a i n   S e c t i o n   - - > 
         < d i v   i d = ' S E _ n a v i g a t i o n '   s t y l e = ' w i d t h : 2 6 0 p x ; p o s i t i o n : a b s o l u t e ; t o p : 1 1 0 p x ; l e f t : 2 6 5 p x ; '   > 
                 < h e a d e r   i d = ' s h o w T i t l e '   s t y l e = ' f o n t - s i z e : 5 0 p x ; 
                         c o l o r : # 7 0 8 0 9 0 ; p o s i t i o n : a b s o l u t e ; t o p : 2 ; l e f t : 2 0 p x ; h e i g h t : 1 0 0 p x ; w i d t h : 6 0 0 p x ; ; ' >� o  kn�s�s 0 
lettername 
letterName� m  or�� ��� � < / h e a d e r >                 
                 < u l   c l a s s = ' S E _ n a v '   s t y l e = ' p o s i t i o n : a b s o l u t e ; t o p : 1 1 0 p x ; ' >� l 	sv��r�q� o  sv�p�p  0 letterhtmllist letterHtmlList�r  �q  � m  wz�� ��� H 
 	 	   < / u l > 
         < / d i v > 
 < / b o d y > 
 < / h t m l >� o      �o�o 0 episodetext episodeText� ��n� P  ����m�� r  ����� n ����� I  ���l��k�l 0 	writecode 	writeCode� ��� o  ���j�j 0 episodefile episodeFile� ��i� o  ���h�h 0 episodetext episodeText�i  �k  �  f  ��� o      �g�g 0 episodefile episodeFile�m  � �f�e
�f consrmte�e  �n  ��  ��  ��  �� 0 ashow aShow
6 o  �d�d 0 showlist showList
4 ��� l ������ r  ����� b  ����� o  ���c�c 0 
azmenuname 
azMenuName� m  ���� ��� 
 . h t m l� o      �b�b 0 docname docName� 4 .------------------------------------.########.   � ��� \ - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # # # # # # # .� ��� l ������ Q  �����a� l ������ l ������ I ���`�_�
�` .corecrel****      � null�_  � �^��
�^ 
kocl� m  ���]
�] 
file� �\��
�\ 
insh� l ����[�Z� o  ���Y�Y 0 dumpdirectory dumpDirectory�[  �Z  � �X��W
�X 
prdt� K  ���� �V��U
�V 
pnam� o  ���T�T 0 docname docName�U  �W  �  ##...............##   � ��� & # # . . . . . . . . . . . . . . . # #� k e-----------------------------------------------------------------------------------.##.............##   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . . . # #� R      �S�R�Q
�S .ascrerr ****      � ****�R  �Q  �a  � h b-----------------------------------------------------------------------------.##................##   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . . . . . . # #� ��P� Z  �)���O�N� J  ���� ��M� I ���L��K
�L .coredoexbool        obj � n ����� 4  ���J�
�J 
file� l ����I�H� o  ���G�G 0 docname docName�I  �H  � o  ���F�F 0 dumpdirectory dumpDirectory�K  �M  � l �%���� k  �%�� ��� l ������ r  ����� n ����� 4  ���E�
�E 
file� l ����D�C� o  ���B�B 0 docname docName�D  �C  � o  ���A�A 0 dumpdirectory dumpDirectory� o      �@�@ 0 dfile dFile� 4 .----------------------------.##.............##   � ��� \ - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . . . # #� ��� l ����� r  ���� c  ���� o  ���?�? 0 dfile dFile� m  � �>
�> 
alis� o      �=�= 0 episodefile episodeFile� 9 3-----------------------------------------.########.   � ��� f - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # # # # # # # .� ��� r  � � m  	 �)  < ! D o c t y p e   h t m l > 
   < h e a d > 
   < t i t l e > A - Z   m e n u < / t i t l e > 
         < m e t a   c h a r s e t = ' U T F - 8 '   / > 
         < s t y l e   t y p e = ' t e x t / c s s ' > 
                 h t m l ,   b o d y   { 
                         h e i g h t :   1 0 0 % ; 
                 } 
                 . c o n t a i n e r   { 
                         m a r g i n - b o t t o m :   2 e m ; 
                           p o s i t i o n : a b s o l u t e ; 
                         t o p : 1 1 0 p x ; 
                         l e f t : 2 5 5 p x ; 
                 } 
                         a r t i c l e   {   
                                 b a c k g r o u n d :   # 0 0 0   ;   
                         d i s p l a y :   b l o c k ; 
                         m a r g i n :   0   a u t o ; 
                                 m i n - h e i g h t :   1 0 0 % ;   
                         w i d t h :   5 3 0 p x ; 
                         o v e r f l o w :   h i d d e n ;     
                 } 
 
                                 s e c t i o n   {   
                                         d i s p l a y :   b l o c k ; 
                                         f l o a t :   l e f t ; 
                                         o v e r f l o w :   h i d d e n ;   
                                         w i d t h :   2 5 5 p x ;   
                         } 
                         a s i d e   {     
                                         f l o a t :   l e f t ; 
                                         m a r g i n - l e f t :   2 0 p x ;   
                                         o v e r f l o w :   h i d d e n ;   
                                         w i d t h :   2 5 5 p x ;     
                                 } 
                                 b o d y   {   
                                         m a r g i n :   0 ;   
                                         p a d d i n g :   0 ;   
                                         h e i g h t :   1 0 0 % ;   
                                         b a c k g r o u n d - c o l o r :   # 0 0 0 ;   
                                 } 
 
                 < ! - -   N a v   m e n u   - - > 
                 # n a v i g a t i o n   { 
                         z - i n d e x : 1 0 
                         p o s i t i o n : a b s o l u t e ; 
                         t o p : 1 9 5 p x ; 
                         l e f t : 6 0 p x ; 
                         d i s p l a y : n o n e ; 
                         u s e r - s e l e c t : n o n e ; 
                 } 
                 . n a v   { 
                         l i s t - s t y l e : n o n e ; 
                         w i d t h : 1 0 0 p x ; 
                         l i n e - h e i g h t : 2 0 p x ; 
                 } 
                 . n a v   l i   a   { 
                         f o n t - f a m i l y :   ' M a r i o n R e g u l a r ' ; 
                         c o l o r : # 8 0 8 0 8 0 ; 
                         f o n t - s i z e : 1 0 p t ; 
                         t e x t - d e c o r a t i o n : n o n e ; 
                         b a c k g r o u n d - c o l o r : r g b a ( 0 , 0 , 0 , . 8 ) ; 
                 } 
                 . n a v   l i   a : h o v e r   { 
                         c o l o r : # 5 1 5 6 C F ; 
                 } 
 
           
                 < ! - -   N a v   s u b - m e n u s   - - > 
                 d i v # n a v i g a t i o n   a : h o v e r   { 
                         c o l o r : 5 1 5 6 C F ; 
                 } 
 
 
                 . n a v   l i   . d a r k B t n   { 
                         c o l o r : # 3 A 3 A 3 A ; 
                 } 
 
                 < ! - -   S p a c e   f o r   N a v   B a r   - - > 
               # n a v _ s h i e l d   { 
 	 z - i n d e x : 8 ; 
 	 p o s i t i o n :   a b s o l u t e ; 
 	 l e f t : 0 p x ; 
 	 t o p :   0 p x ; 
 	 b a c k g r o u n d - c o l o r : r g b a ( 0 , 0 , 0 , 1 ) ; 	 
 } 
 
                 < ! - -   A Z   t i t l e   n o t   u s e d - - > 
                 < ! - -   h e a d e r   { 
                         t e x t - d e c o r a t i o n : n o n e ; 
                         c o l o r : # F F F F F F ; 
                         d i s p l a y : b l o c k ; 
                         o v e r f l o w : h i d d e n ; 
                         f o n t - f a m i l y : ' T e c h n o ' ; 
                         f o n t - s i z e : 7 5 p x ; 
                         p o s i t i o n : a b s o l u t e ; 
                         t o p : 2 0 p x ; 
                         l e f t : 2 6 0 p x ; 
                 }   - - > 
 
                 < ! - -   A Z   m e n u   - - > 
                 # a z N a v   { 
                         l i s t - s t y l e : n o n e ; 
                         w i d t h : 1 0 0 p x ; 
                         l i n e - h e i g h t : 2 0 p x ; 
                 } 
                 . a z N a v   l i   a   { 
                         t e x t - d e c o r a t i o n : n o n e ; 
                         d i s p l a y : b l o c k ; 
                         c o l o r : # F F F F F F ; 
                         p a d d i n g : 2 p x ; 
                         f o n t - s i z e : 1 3 ; 
                 } 
 
                 . a z N a v   l i   a : h o v e r   { 
                         c o l o r : # 5 1 5 6 C F ; 
                 } 
 
 
         < / s t y l e > 
 < / h e a d > 
 < b o d y > 
         < d i v   i d = ' n a v _ s h i e l d '   s t y l e = ' w i d t h :   2 6 0 p x ;   h e i g h t :   1 8 0 p x ;   d i s p l a y :   b l o c k ' > 
         < / d i v > 
         < d i v   i d = ' m a i n C o n t a i n e r ' > 
         < / d i v > 
         < d i v   i d = ' n a v i g a t i o n '   s t y l e = ' d i s p l a y :   b l o c k ' > 
                 < u l   c l a s s =   ' n a v ' > 
                         < l i > < a   h r e f = ' . . / I n d e x . h t m l ' >   . . < / a > < / l i > 
                         < l i > < a 
                                 h r e f = ' . . / I n d e x . h t m l ' > H o m e < / a > < / l i > 
                         < l i > < a   h r e f = ' # F i l e s ' > F i l e s < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / M o v i e s / A - Z m e n u . h t m l ' > M o v i e s < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / T V _ S h o w s / A - Z m e n u . h t m l ' > T V   S h o w s < / a > < / l i > 
                         < l i > < a   c l a s s = ' d a r k B t n '   h r e f = ' # B o o m s h a k a l a k a ' > w o r d < / a > < / l i > 
                 < / u l > 
         < / d i v > 
               < d i v   c l a s s = ' c o n t a i n e r ' > 
                 < a r t i c l e > 
                 < s e c t i o n > 
                 < u l   c l a s s = ' a z N a v ' > 
                         < l i > < a   h r e f = ' . . / M o v i e s / A - Z m e n u / - . h t m l '   > # < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / M o v i e s / A - Z m e n u / A . h t m l '   > A < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / M o v i e s / A - Z m e n u / B . h t m l '   > B < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / M o v i e s / A - Z m e n u / C . h t m l '   > C < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / M o v i e s / A - Z m e n u / D . h t m l '   > D < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / M o v i e s / A - Z m e n u / E . h t m l '   > E < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / M o v i e s / A - Z m e n u / F . h t m l '   > F < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / M o v i e s / A - Z m e n u / G . h t m l '   > G < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / M o v i e s / A - Z m e n u / H . h t m l '   > H < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / M o v i e s / A - Z m e n u / I . h t m l '   > I < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / M o v i e s / A - Z m e n u / J . h t m l '   > J < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / M o v i e s / A - Z m e n u / K . h t m l '   > K < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / M o v i e s / A - Z m e n u / L . h t m l '   > L < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / M o v i e s / A - Z m e n u / M . h t m l '   > M < / a > < / l i > 
                 < / u l > 
                 < / s e c t i o n > 
                 < a s i d e > 
                 < u l   c l a s s = ' a z N a v ' > 
                         < l i > < a   h r e f = ' . . / M o v i e s / A - Z m e n u / N . h t m l '   > N < / a > < / l i >         
                         < l i > < a   h r e f = ' . . / M o v i e s / A - Z m e n u / O . h t m l '   > O < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / M o v i e s / A - Z m e n u / P . h t m l '   > P < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / M o v i e s / A - Z m e n u / Q . h t m l '   > Q < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / M o v i e s / A - Z m e n u / R . h t m l '   > R < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / M o v i e s / A - Z m e n u / S . h t m l '   > S < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / M o v i e s / A - Z m e n u / T . h t m l '   > T < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / M o v i e s / A - Z m e n u / U . h t m l '   > U < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / M o v i e s / A - Z m e n u / V . h t m l '   > V < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / M o v i e s / A - Z m e n u / W . h t m l '   > W < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / M o v i e s / A - Z m e n u / X . h t m l '   > X < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / M o v i e s / A - Z m e n u / Y . h t m l '   > Y < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / M o v i e s / A - Z m e n u / Z . h t m l '   > Z < / a > < / l i > 
                 < / u l > 
         < / d i v > 
 < / b o d y > 
 < / h t m l >  o      �<�< 0 episodetext episodeText� �; P  %�: r  $ n  	 I   �9
�8�9 0 	writecode 	writeCode
  o  �7�7 0 episodefile episodeFile �6 o  �5�5 0 episodetext episodeText�6  �8  	  f   o      �4�4 0 episodefile episodeFile�:   �3�2
�3 consrmte�2  �;  � 4 .---------------------------.##..............##   � � \ - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . . . . # #�O  �N  �P  � 0 aletter aLetter
 o  ���1�1 0 
letterlist 
letterList�  � 0 azmenu azMenu
 o  ���0�0 0 azlist azList�  	�  Movie section!   	� �  M o v i e   s e c t i o n !�  �  	�  r  8� b  8� b  8� b  8� b  8� b  8� b  8� b  8� !  b  8�"#" b  8�$%$ b  8&'& b  8{()( b  8w*+* b  8s,-, b  8o./. b  8k010 b  8g232 b  8c454 b  8_676 b  8[898 b  8W:;: b  8S<=< b  8O>?> b  8K@A@ b  8GBCB b  8CDED b  8?FGF m  8;HH �II  -G m  ;>JJ �KK  AE m  ?BLL �MM  BC m  CFNN �OO  CA m  GJPP �QQ  D? m  KNRR �SS  E= m  ORTT �UU  F; m  SVVV �WW  G9 m  WZXX �YY  H7 m  [^ZZ �[[  I5 m  _b\\ �]]  J3 m  cf^^ �__  K1 m  gj`` �aa  L/ m  knbb �cc  M- m  ordd �ee  N+ m  svff �gg  O) m  wzhh �ii  P' m  {~jj �kk  Q% m  �ll �mm  R# m  ��nn �oo  S! m  ��pp �qq  T m  ��rr �ss  U m  ��tt �uu  V m  ��vv �ww  W m  ��xx �yy  X m  ��zz �{{  Y m  ��|| �}}  Z o      �/�/ 0 
allletters 
allLetters ~~ r  ����� c  ����� n  ����� 2  ���.
�. 
cha � o  ���-�- 0 
allletters 
allLetters� m  ���,
�, 
TEXT� o      �+�+ 0 allitems allItems ��� l ������ X  ����*�� Z  �����)�(� H  ���� E  ����� o  ���'�'  0 createdletters createdLetters� o  ���&�& 0 anitem anItem� k  ���� ��� r  ����� o  ���%�% 0 anitem anItem� o      �$�$ 0 
lettername 
letterName� ��� r  ����� b  ����� o  ���#�# 0 
lettername 
letterName� m  ���� ��� 
 . h t m l� o      �"�" 0 docname docName� ��� Q  ����!� I �� ��
�  .corecrel****      � null�  � ���
� 
kocl� m  ���
� 
file� ���
� 
insh� l ������ o  ���� 0 azmenu azMenu�  �  � ���
� 
prdt� K  ��� ���
� 
pnam� o  � �� 0 docname docName�  �  � R      ���
� .ascrerr ****      � ****�  �  �!  � ��� Q  ����� l ����� Z  ������ J  #�� ��� I !���

� .coredoexbool        obj � n ��� 4  �	�
�	 
file� l ���� o  �� 0 docname docName�  �  � o  �� 0 azmenu azMenu�
  �  � k  &��� ��� l &2���� r  &2��� n &.��� 4  '.��
� 
file� l *-���� o  *-�� 0 docname docName�  �  � o  &'� �  0 azmenu azMenu� o      ���� 0 dfile dFile�  					d8888   � ���  	 	 	 	 d 8 8 8 8� ��� l 3>���� r  3>��� c  3:��� o  36���� 0 dfile dFile� m  69��
�� 
alis� o      ���� 0 episodefile episodeFile� ( "--------------------------d8P888     � ��� D - - - - - - - - - - - - - - - - - - - - - - - - - - d 8 P 8 8 8    � ��� r  ?F��� m  ?B�� ���  � o      ����  0 letterhtmllist letterHtmlList� ��� Z  Gd������� = GR��� c  GN��� o  GJ���� 0 
lettername 
letterName� m  JM��
�� 
TEXT� m  NQ�� ���  -� r  U`��� c  U\��� m  UX�� ���  #� m  X[��
�� 
TEXT� o      ���� 0 
lettername 
letterName��  ��  � ��� r  e|��� b  ex��� b  et��� b  ep��� b  el��� m  eh�� ���� < ! D o c t y p e   h t m l > 
 < h e a d > 
         < t i t l e > A   S h o w   E x a m p l e < / t i t l e > 
         < m e t a   c h a r s e t = ' U T F - 8 '   / > 
         < s t y l e > 
                 b o d y   { 
                         m a r g i n : 0 ; 
                         p a d d i n g : 0 ; 
                         h e i g h t : 1 0 0 % ; 
                         b a c k g r o u n d - c o l o r : # 0 0 0 ; 
                 } 
 
                 < ! - -   N a v   m e n u   - - > 
                 # n a v i g a t i o n   { 
                         p o s i t i o n : a b s o l u t e ; 
                         t o p : 1 9 5 p x ; 
                         l e f t : 6 0 p x ; 
                 } 
                 . n a v   { 
                         l i s t - s t y l e : n o n e ; 
                         w i d t h : 1 0 0 p x ; 
                         l i n e - h e i g h t : 2 0 p x ; 
                 } 
                 . n a v   l i   a   { 
                         f o n t - f a m i l y :   ' M a r i o n R e g u l a r ' ; 
                         c o l o r : # 8 0 8 0 8 0 ; 
                         f o n t - s i z e : 1 0 p t ; 
                         t e x t - d e c o r a t i o n : n o n e ; 
                         b a c k g r o u n d - c o l o r : r g b a ( 0 , 0 , 0 , . 8 ) ; 
                 } 
                 . n a v   l i   a : h o v e r   { 
                         c o l o r : # 5 1 5 6 C F ; 
                 } 
 
                 < ! - -   N a v   s u b - m e n u s   - - > 
                 d i v # n a v i g a t i o n   a : h o v e r   { 
                         c o l o r : 5 1 5 6 C F ; 
                 } 
 
                 . n a v   l i   . d a r k B t n   { 
                         c o l o r : # 3 A 3 A 3 A ; 
                 } 
 
                 < ! - -   S p a c e   f o r   N a v   B a r   - - > 
                 # n a v _ s h i e l d   { 
                         p o s i t i o n : a b s o l u t e ; 
                         l e f t : 0 p x ; 
                         t o p : 0 p x ; 
                         w i d t h : 2 6 0 p x ; 
                         b a c k g r o u n d - c o l o r : r g b a ( 0 , 0 , 0 , 1 ) ; 
                 } 
 
                 < ! - -   S e a s o n / E p i s o d e   S e l e c t i o n   - - > 
                 # S E _ n a v i g a t i o n   { 
                         p o s i t i o n : a b s o l u t e ; 
                         l e f t : 2 6 5 p x ; 
                 } 
 
                 . S E _ n a v   { 
                         l i s t - s t y l e : n o n e ; 
                         w i d t h : 1 0 0 p x ; 
                         l i n e - h e i g h t : 2 0 p x ; 
                         f o n t - s i z e : 1 9 p x ; 
                 } 
 
                 . S E _ n a v   l i   a   { 
                         f o n t - f a m i l y :   ' M a r i o n R e g u l a r ' ; 
                         c o l o r : # F F F F F F ; 
                         t e x t - d e c o r a t i o n : n o n e ; 
                         b a c k g r o u n d - c o l o r : r g b a ( 0 , 0 , 0 , . 8 ) ; 
                 } 
 
                 . S E _ n a v   l i   a : h o v e r   { 
                         c o l o r : # 5 1 5 6 C F 
                 } 
 
                 < ! - -   H e a d e r s   - - > 
                 # s h o w T i t l e   { 
                         f o n t - s i z e : 5 0 p x ; 
                         c o l o r : # 7 0 8 0 9 0 ; 
                         p o s i t i o n : a b s o l u t e ; 
                         t o p : 2 ; 
                         l e f t : 2 6 0 p x ; 
                         h e i g h t : 1 0 0 p x ; 
                         w i d t h : 6 0 0 p x ; 
                 } 
 
         < / s t y l e > 
 < / h e a d > 
 < b o d y > 
         < d i v   i d = ' n a v _ s h i e l d '   s t y l e = ' w i d t h :   2 6 0 p x ;   h e i g h t :   1 8 0 p x ;   d i s p l a y :   b l o c k ' > 
         < / d i v >       
         < d i v   i d = ' n a v i g a t i o n '   s t y l e = ' w i d t h : 2 6 0 p x ;   d i s p l a y :   b l o c k ' > 
                 < u l   c l a s s =   ' n a v ' > 
                         < l i > < a   h r e f = ' . . / . . / T V _ S h o w s / A - Z m e n u . h t m l ' >   . . < / a > < / l i > 
                         < l i > < a 
                                 h r e f = ' . . / . . / I n d e x . h t m l ' > H o m e < / a > < / l i > 
                         < l i > < a   h r e f = ' # F i l e s ' > F i l e s < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / . . / M o v i e s / A - Z m e n u . h t m l ' > M o v i e s < / a > < / l i > 
                         < l i > < a   h r e f = ' . . / . . / T V _ S h o w s / A - Z m e n u . h t m l ' > T V   S h o w s < / a > < / l i > 
                         < l i > < a   c l a s s = ' d a r k B t n '   h r e f = ' # B o o m s h a k a l a k a ' > w o r d < / a > < / l i > 
                 < / u l > 
         < / d i v > 
         < ! - -   M a i n   S e c t i o n   - - > 
         < d i v   i d = ' S E _ n a v i g a t i o n '   s t y l e = ' w i d t h : 2 6 0 p x ; p o s i t i o n : a b s o l u t e ; t o p : 1 1 0 p x ; l e f t : 2 6 5 p x ; '   > 
                 < h e a d e r   i d = ' s h o w T i t l e '   s t y l e = ' f o n t - s i z e : 5 0 p x ; 
                         c o l o r : # 7 0 8 0 9 0 ; p o s i t i o n : a b s o l u t e ; t o p : 2 ; l e f t : 2 0 p x ; h e i g h t : 1 0 0 p x ; w i d t h : 3 0 0 p x ; ; ' >� o  hk���� 0 
lettername 
letterName� m  lo�� ��� � < / h e a d e r >                 
                 < u l   c l a s s = ' S E _ n a v '   s t y l e = ' p o s i t i o n : a b s o l u t e ; t o p : 7 5 p x ; ' >� l 	ps������ o  ps����  0 letterhtmllist letterHtmlList��  ��  � m  tw�� ��� H 
 	 	   < / u l > 
         < / d i v > 
 < / b o d y > 
 < / h t m l >� o      ���� 0 episodetext episodeText� ���� P  }������ r  ����� n ��   I  �������� 0 	writecode 	writeCode  o  ������ 0 episodefile episodeFile �� o  ������ 0 episodetext episodeText��  ��    f  ��� o      ���� 0 episodefile episodeFile��  � ����
�� consrmte��  ��  �  �  � Z T---------------------------------------------------------------------------888888888   � � � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8 8 8 8 8 8 8� R      ������
�� .ascrerr ****      � ****��  ��  �  �  �)  �(  �* 0 anitem anItem� o  ������ 0 allitems allItems� S M--------------------------------------------------------------------------888   � � � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8� �� l ����������  ��  ��  ��  Y : 4first part selects where to store the original files   Z �		 h f i r s t   p a r t   s e l e c t s   w h e r e   t o   s t o r e   t h e   o r i g i n a l   f i l e sW m  %(

�                                                                                  MACS  alis    l  
Untitled 1                 ����H+   ��
Finder.app                                                      ǟM�        ����  	                CoreServices    ��.I      ǟ��     �� �t �s  1Untitled 1:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p   
 U n t i t l e d   1  &System/Library/CoreServices/Finder.app  / ��  ��  ��  T  l     ��������  ��  ��    l     ��������  ��  ��    l     ��������  ��  ��    l     ����    ------------    �  - - - - - - - - - - - -  i      I      ������ 0 	writecode 	writeCode  o      ���� 0 episodefile episodeFile �� o      ���� 0 episodetext episodeText��  ��   l    B  k     B!! "#" r     $%$ I    ��&��
�� .rdwropenshor       file& o     ���� 0 episodefile episodeFile��  % o      ���� 0 bar  # '(' I   ��)��
�� .rdwrclosnull���     ****) o    	���� 0 bar  ��  ( *+* Q    -,-��, k    $.. /0/ I   ��12
�� .rdwrwritnull���     ****1 o    ���� 0 episodetext episodeText2 ��3��
�� 
refn3 o    ���� 0 episodefile episodeFile��  0 454 I   ��6��
�� .rdwrclosnull���     ****6 o    ���� 0 episodefile episodeFile��  5 7��7 I   $��8��
�� .rdwropenshor       file8 o     ���� 0 episodefile episodeFile��  ��  - R      ������
�� .ascrerr ****      � ****��  ��  ��  + 9:9 Q   . ?;<��; I  1 6��=��
�� .rdwrclosnull���     ****= o   1 2���� 0 episodefile episodeFile��  < R      ������
�� .ascrerr ****      � ****��  ��  ��  : >��> L   @ B?? o   @ A���� 0 episodefile episodeFile��   1 +don't even ask me why this section works...     �@@ V d o n ' t   e v e n   a s k   m e   w h y   t h i s   s e c t i o n   w o r k s . . . ABA l     ��������  ��  ��  B CDC i    EFE I      ��G���� 0 replace_chars  G HIH o      ���� 0 	this_text  I JKJ o      ���� 0 search_string  K L��L o      ���� 0 replacement_string  ��  ��  F k      MM NON r     PQP l    R����R o     ���� 0 search_string  ��  ��  Q n     STS 1    ��
�� 
txdlT 1    ��
�� 
ascrO UVU r    WXW n    	YZY 2    	��
�� 
citmZ o    ���� 0 	this_text  X l     [����[ o      ���� 0 	item_list  ��  ��  V \]\ r    ^_^ l   `����` o    ���� 0 replacement_string  ��  ��  _ n     aba 1    ��
�� 
txdlb 1    ��
�� 
ascr] cdc r    efe c    ghg l   i����i o    ���� 0 	item_list  ��  ��  h m    ��
�� 
TEXTf o      ���� 0 	this_text  d jkj r    lml m    nn �oo  m n     pqp 1    ��
�� 
txdlq 1    ��
�� 
ascrk r��r L     ss o    ���� 0 	this_text  ��  D tut l     ��������  ��  ��  u v��v i    wxw I      ��y���� $0 numbercorrection numberCorrectiony z��z o      ���� 0 thename theName��  ��  x k     ?{{ |}| p      ~~ ���� 0 
thenumbers 
theNumbers ������ 0 numberlabel numberLabel��  } ��� r     ��� n    ��� 1    ��
�� 
txdl� 1     ��
�� 
ascr� o      ���� 0 oldtid oldTID� ��� Y    6�����~� k    1�� ��� r    ��� n    ��� 4    �}�
�} 
cobj� o    �|�| 0 i  � o    �{�{ 0 
thenumbers 
theNumbers� n     ��� 1    �z
�z 
txdl� 1    �y
�y 
ascr� ��� r    "��� n     ��� 2    �x
�x 
citm� o    �w�w 0 thename theName� o      �v�v 0 thetextbits theTextBits� ��� r   # +��� n   # '��� 4   $ '�u�
�u 
cobj� m   % &�t�t � o   # $�s�s 0 numberlabel numberLabel� n     ��� 1   ( *�r
�r 
txdl� 1   ' (�q
�q 
ascr� ��p� r   , 1��� c   , /��� o   , -�o�o 0 thetextbits theTextBits� m   - .�n
�n 
ctxt� o      �m�m 0 thename theName�p  � 0 i  � m   	 
�l�l � I  
 �k��j
�k .corecnte****       ****� o   
 �i�i 0 
thenumbers 
theNumbers�j  �~  � ��� r   7 <��� o   7 8�h�h 0 oldtid oldTID� n     ��� 1   9 ;�g
�g 
txdl� 1   8 9�f
�f 
ascr� ��e� L   = ?�� o   = >�d�d 0 thename theName�e  ��       �c������c  � �b�a�`�_�b 0 	writecode 	writeCode�a 0 replace_chars  �` $0 numbercorrection numberCorrection
�_ .aevtoappnull  �   � ****� �^�]�\���[�^ 0 	writecode 	writeCode�] �Z��Z �  �Y�X�Y 0 episodefile episodeFile�X 0 episodetext episodeText�\  � �W�V�U�W 0 episodefile episodeFile�V 0 episodetext episodeText�U 0 bar  � �T�S�R�Q�P�O
�T .rdwropenshor       file
�S .rdwrclosnull���     ****
�R 
refn
�Q .rdwrwritnull���     ****�P  �O  �[ C�j  E�O�j O ��l O�j O�j  W X  hO 
�j W X  hO�� �NF�M�L���K�N 0 replace_chars  �M �J��J �  �I�H�G�I 0 	this_text  �H 0 search_string  �G 0 replacement_string  �L  � �F�E�D�C�F 0 	this_text  �E 0 search_string  �D 0 replacement_string  �C 0 	item_list  � �B�A�@�?n
�B 
ascr
�A 
txdl
�@ 
citm
�? 
TEXT�K !���,FO��-E�O���,FO��&E�O���,FO�� �>x�=�<���;�> $0 numbercorrection numberCorrection�= �:��: �  �9�9 0 thename theName�<  � �8�7�6�5�8 0 thename theName�7 0 oldtid oldTID�6 0 i  �5 0 thetextbits theTextBits� �4�3�2�1�0�/�.�-
�4 
ascr
�3 
txdl�2 0 
thenumbers 
theNumbers
�1 .corecnte****       ****
�0 
cobj
�/ 
citm�. 0 numberlabel numberLabel
�- 
ctxt�; @��,E�O /k�j kh ��/��,FO��-E�O��k/��,FO��&E�[OY��O���,FO�� �,��+�*���)
�, .aevtoappnull  �   � ****� k    ���  ��  >��  G��  P��  Y��  e��  s��  ���  ���  ���  ���  ���  ��� �� �� A�� S�(�(  �+  �*  � �'�&�%�$�#�"�!� �' 0 afile aFile�& 0 ashow aShow�% 0 	anepisode 	anEpisode�$ 0 avid aVid�# 0 azmenu azMenu�" 0 aletter aLetter�! 0 aseason aSeason�  0 anitem anItem�h   ! % ) - 1 5 9 <�� E� N� W� b� n� � �� � ���� ��������� ����
 � � � ��	 �� ��� �� ���%��� ��������Zf������������������������������������������������������������U\����|���������Hb������������������&��/������������������������������[]_a��f��z������������������������1@Cegikmo������������������1��?B`bdfh����������%��36PRTVflz|��	!	#	%	'	)	+	-	/	1	3	5	7	9	;	=	?	A	C	E	G	I	K	M	O	Q	S	U����	v	�	�	�	�	�	�	���
W
a
k
�
�
�
�
�
�1?BW�������	?\jm�����������3M[^xz|~������HJLNPRTVXZ\^`bdfhjlnprtvxz|�������� 
� 0 
thenumbers 
theNumbers� 0 numberlabel numberLabel� 0 	thespaces 	theSpaces� 0 	thecolons 	theColons� 0 	thedashes 	theDashes� *0 thenormalcharacters theNormalCharacters
� 
btns
� .sysodlogaskr        TEXT� 0 htmldeletion htmlDeletion
� 
bhit
� .sysostflalis    ��� null� 0 targetfolder targetFolder
� 
ects
� 
cobj� 0 allfiles allFiles
� 
kocl
� .corecnte****       ****
� 
nmxt
� .coredeloobj        obj �  �
  �	  0 folderdeletion folderDeletion
� 
cfol
� .miscactvnull��� ��� null
� .sysobeepnull��� ��� long� 0 viddirectory vidDirectory� 0 dumpdirectory dumpDirectory� 0 mediachoice mediaChoice� 0 showlist showList
� 
pnam
�  
ctxt�� 0 showname showName
�� 
file�� 0 episodelist episodeList�� "0 semiepisodename semiEpisodeName�� 0 theextension theExtension
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null�� 0 episodename episodeName
�� 
ascr
�� 
txdl�� 0 
azmenuname 
azMenuName
�� 
cha �� 0 
lettername 
letterName
�� 
citm�� 0 
seasonname 
seasonName�� 0 	oldletter 	oldLetter
�� 
nmbr�� 0 numtest numTest�� $0 numbercorrection numberCorrection
�� 
TEXT
�� .coredoexbool        obj 
�� kfrmname�� 0 alphafolder alphaFolder
�� 
insh
�� 
prdt�� 
�� .corecrel****      � null�� 0 letterfolder letterFolder�� 0 
showfolder 
showFolder�� 0 seasonfolder seasonFolder
�� .coremoveobj        obj �� 0 allvids allVids�� 0 alabel aLabel�� 0 lettertitle letterTitle�� 0 	showtitle 	showTitle�� 0 replace_chars  ��  0 createdletters createdLetters�� 0 tvname tvName�� 0 azlist azList�� 0 
letterlist 
letterList�� 0 
seasonlist 
seasonList�� "0 origepisodename origEpisodeName�� $0 episodeextension episodeExtension�� 0 episodetitle episodeTitle�� 0 docname docName�� 0 altshow altShow�� 0 
currentloc 
currentLoc�� 0 	parentfol 	parentFol�� 0 
parentname 
parentName�� 0 pathname pathName�� 0 	almostloc 	almostLoc�� 0 	nearlyloc 	nearlyLoc�� 0 fileloc fileLoc�� 0 dfile dFile
�� 
alis�� 0 episodefile episodeFile�� 0 episodetext episodeText�� 0 	writecode 	writeCode�� 0 altshowname altShowName�� 0 altseasonname altSeasonName�� 0 	listpart1 	listPart1�� 0 	listpart7 	listPart7�� 0 	listpart9 	listPart9��  0 seasonhtmllist seasonHtmlList�� 0 htmlfile htmlFile�� "0 trueepisodename trueEpisodeName�� 0 	totallist 	totalList�� 0 	listpart6 	listPart6�� 0 	listpart8 	listPart8�� 0 showhtmllist showHtmlList��  0 trueseasonname trueSeasonName��  0 letterhtmllist letterHtmlList�� 0 trueshowname trueShowName�� 0 
allletters 
allLetters�� 0 allitems allItems�� 0 	moviename 	movieName�)������������vE�O�kvE�O�kvE�Oa kvE` Oa kvE` Oa kvE` Oa  �a a a a lvl E` O_ a ,a   [ O*j E`  O_  a !,a "-E` #O /_ #[a $a "l %kh  �a &,a '  
�j (Y h[OY��W X ) *hY _ a ,a +  hY hOa ,a a -a .lvl E` /O_ /a ,a 0    _  a !,a 1-j (W X ) *hY _ /a ,a 2  hY hUO*j 3O*j 4Oa 5j O*j E` 6O*j 4Oa 7j O*j E` 8Oa �a 9a a :a ;lvl E` <O_ <a ,a = �_ 6a 1-E` >Ou_ >[a $a "l %kh �a ?,a @&E` AO�a B-E` COB_ C[a $a "l %kh �a ?,a @&E` DO_ Da Ea F�a &,%E` GO_ D[a @\[Zk\Z*a H_ Ga I_ Da J Kk2E` LOa M_ Na O,FOa PE` QO_ Aa Rk/a @&E` SO_ La Tl/a @&E` UO "_ SE` VOa WE` SOeE` XO_ VE` SW X ) *hO_ Xe  )_ Sk+ YE` SY hO_ 8a 1_ Qa Z&/j [ _ 8a 1_ Qa \0E` ]Y $*a $a 1a ^_ 8a _a ?_ Qla ` aE` ]O_ ]a 1_ Sa Z&/j [ _ ]a 1_ Sa \0E` bY $*a $a 1a ^_ ]a _a ?_ Sla ` aE` bO_ ba 1_ Aa Z&/j [ _ ba 1_ Aa \0E` cY $*a $a 1a ^_ ba _a ?_ Ala ` aE` cO_ ca 1_ Ua Z&/j [ _ ca 1_ Ua \0E` dY $*a $a 1a ^_ ca _a ?_ Ula ` aE` dO %_ da B_ L/j [ hY �a ^_ dl eW X ) *hY h[OY��[OY��OPY_ <a ,a f �a gE` QO_ 6a !,a B-E` hO�_ h[a $a "l %kh �a ?,a @&E` iO_ ia j�_ ia Rk/E` kO_ i[a @\[Zk\Z*a Ha la I_ ia J Kk2E` mO)_ ma na om+ pE` mO "_ kE` VOa WE` kOeE` XO_ VE` kW X ) *hO_ Xe  )_ kk+ YE` kY hO_ 8a 1_ Qa Z&/j [ _ 8a 1_ Qa \0E` ]Y $*a $a 1a ^_ 8a _a ?_ Qla ` aE` ]O_ ]a 1_ ka Z&/j [ _ ]a 1_ ka \0E` bY 2*a $a 1a ^_ ]a _a ?_ kla ` aO_ ]a 1_ ka \0E` bO_ ba 1_ ma Z&/j [ _ ba 1_ ma \0E` cY 2*a $a 1a ^_ ba _a ?_ mla ` aO_ ba 1_ ma \0E` cO �a ^_ cl eW X ) *hY h[OY�;Y hUOa qkv_ Na O,FOa �_ <a ,a r 
AjvE` sO_ 8a ?,E` tO_ 8a 1-E` uO�_ u[a $a "l %kh �a ?,E` QO�a 1-E` vO�_ v[a $a "l %kh �a ?,E` SO_ S_ s6GO�a 1-E` >O0_ >[a $a "l %kh �a ?,E` AO�a 1-E` wO�_ w[a $a "l %kh �a ?,E` UO�a B-E` CO�_ C[a $a "l %kh �a &,a xa y_ Na O,FO�a ?,E` LO_ LE` zO)_ La {a |m+ pE` LO�a &,E` }O_ L[a @\[Zk\Z*a H_ }a I_ La J Kk2E` ~O_ ~a %E` �O�a &,a � �_ 6a 1_ A/j [kv +_ 6a 1_ A/E` �O�a ^_ �l eO_ �a @&E` �Y H '*a $a 1a ^_ 6a _a ?_ Ala ` aE` �W X ) *hO�a ^_ �l eO_ �a @&E` �Y hY hO_ 8a 1,E` �O_ �a ?,E` �O_ �a @&E` �O)_ �a �a �m+ pE` �O)_ �a �a �m+ pE` �O_ �_ Na O,FO_ �a Tl/E` �O_ z_ Na O,FO_ �a Tk/_ z%E` �O_ �[a @\[Z*a Ha �a I_ �a J Kk\Zi2E` �O)_ �a �a �m+ pE` �Oa �kv_ Na O,FO !*a $a Ba ^�a _a ?_ �la ` aW X ) *hO�a B_ �/j [kv a�a B_ �/E` �O_ �a �&E` �Oa �_ �%a �%_ �%a �%_ �%a �%E` �Oga � )_ �_ �l+ �E` �VOa �_ Na O,FY h[OY��O_ Ua �%E` �O_ Aa @&E` �O)_ �a �a �m+ pE` �O_ Ua @&E` �O)_ �a �a �m+ pE` �O !*a $a Ba ^�a _a ?_ �la ` aW X ) *hO�a B_ �/j [kvF�a B_ �/E` �O_ �a �&E` �Oa �E` �Oa �E` �Oa �E` �OjvE` �O�a B-E` #O �_ #[a $a "l %kh  �a &,a �  �a �_ Na O,FO_ za Z&E` �O_ �a Tm/E` �Oa �_ Na O,FO)_ �a �a �m+ pE` �O_ �a �%a �%_ Q%a �%_ S%a �%_ A%a �%_ U%a �%_ �%_ �%_ �%_ �%E` �O_ �_ �6GY h[OY�^Oa �_ S%a �%_ A%a �%_ �%a �%_ �%a �%_ �%a �%E` �Oga � )_ �_ �l+ �E` �VY h[OY��O_ Aa �%E` �O !*a $a Ba ^�a _a ?_ �la ` aW X ) *hO�a B_ �/j [kv3�a B_ �/E` �O_ �a �&E` �Oa �E` �Oa �E` �Oa �E` �OjvE` �O�a B-E` #O �_ #[a $a "l %kh  �a &,a �  ��a ?,a @&E` �O_ �[a @\[Zk\Z*a Ha �a I_ �a J Kk2E` �O)_ �a �a �m+ pE` �O_ �a �%a �%_ Q%a �%_ S%a �%_ A%a �%_ �%_ �%_ �%_ �%E` �O_ �_ �6GY h[OY�aOa �_ S%a �%_ �%a �%_ �%a �%E` �Oga � )_ �_ �l+ �E` �VY h[OY��O_ Sa �%E` �O !*a $a Ba ^�a _a ?_ �la ` aW X ) *hO�a B_ �/j [kvA�a B_ �/E` �O_ �a �&E` �Oa �E` �Oa �E` �Oa �E` �OjvE` �O�a B-E` #O �_ #[a $a "l %kh  �a &,a �  ��a ?,a @&E` �O_ �[a @\[Zk\Z*a Ha �a I_ �a J Kk2E` �O)_ �a �a �m+ pE` �O_ �a �%a �%_ Q%a �%_ S%a �%_ �%_ �%_ �%_ �%E` �O_ �_ �6GY h[OY�iO_ Sa Z&a �  a �a Z&E` SY hOa �_ S%a �%_ �%a �%E` �Oga � )_ �_ �l+ �E` �VY h[OY�%O_ Qa �%E` �O #*a $a Ba ^_ 8a _a ?_ �la ` aW X ) *hO_ 8a B_ �/j [kv ?_ 8a B_ �/E` �O_ �a �&E` �Oa �E` �Oga � )_ �_ �l+ �E` �VY h[OY�mOa �a �%a �%a �%a �%a �%a �%a �%a �%a �%a �%a �%a �%a �%a �%a �%a �%a �%a �%a �%a �%a �%a �%a %a%a%a%E`O_a R-a Z&E`O �_[a $a "l %kh _ s� ϧE` SO_ Sa%E` �O !*a $a Ba ^�a _a ?_ �la ` aW X ) *hO ��a B_ �/j [kv s�a B_ �/E` �O_ �a �&E` �OaE` �O_ Sa Z&a  a	a Z&E` SY hOa
_ S%a%_ �%a%E` �Oga � )_ �_ �l+ �E` �VY hW X ) *hY h[OY�#OPY6_ <a ,a �_ 8a ?,E`O_ 8a 1-E` uOjvE` sO�_ u[a $a "l %kh �a ?,E` QO�a 1-E` vO^_ v[a $a "l %kh �a ?,E` SO_ S_ s6GO�a 1-E` >O�_ >[a $a "l %kh �a ?,E` AO�a B-E` COO_ C[a $a "l %kh �a ?,E` LO�a &,a �a_ Na O,FOa�a &,%E` GO_ La Tk/E` ~O)_ ~aam+ pE` ~O_ ~a%E` �Oakv_ Na O,FO_ 6a 1_ A/j [kv +_ 6a 1_ A/E` �O�a ^_ �l eO_ �a @&E` �Y H '*a $a 1a ^_ 6a _a ?_ Ala ` aE` �W X ) *hO�a ^_ �l eO_ �a @&E` �Y hO_ 8a 1,E` �O_ �a ?,E` �O_ �a @&E` �O)_ �aam+ pE` �O_ �_ Na O,FO_ �a Tl/E` �O_ L_ Na O,FO_ �a Tk/_ L%E` �O_ �[a @\[Z*a Haa I_ �a J Kk\Zi2E` �O)_ �aam+ pE` �Oakv_ Na O,FO !*a $a Ba ^�a _a ?_ �la ` aW X ) *hO�a B_ �/j [kv U�a B_ �/E` �O_ �a �&E` �Oa_ �%a%_ �%a%_ �%a%E` �Oga � )_ �_ �l+ �E` �VY h[OY��O_ Aa %E` �O_ Aa @&E` �O)_ �a!a"m+ pE` �O !*a $a Ba ^�a _a ?_ �la ` aW X ) *hO�a B_ �/j [kv3�a B_ �/E` �O_ �a �&E` �Oa#E` �Oa$E` �Oa%E` �OjvE` �O�a B-E` #O �_ #[a $a "l %kh  �a &,a&  ��a ?,a @&E` �O_ �[a @\[Zk\Z*a Ha'a I_ �a J Kk2E` �O)_ �a(a)m+ pE` �O_ �a*%a+%_ Q%a,%_ S%a-%_ A%a.%_ �%_ �%_ �%_ �%E` �O_ �_ �6GY h[OY�aOa/_ S%a0%_ �%a1%_ �%a2%E` �Oga � )_ �_ �l+ �E` �VY hO_ Sa3%E` �O !*a $a Ba ^�a _a ?_ �la ` aW X ) *hO�a B_ �/j [kvA�a B_ �/E` �O_ �a �&E` �Oa4E` �Oa5E` �Oa6E` �OjvE` �O�a B-E` #O �_ #[a $a "l %kh  �a &,a7  ��a ?,a @&E` �O_ �[a @\[Zk\Z*a Ha8a I_ �a J Kk2E` �O)_ �a9a:m+ pE` �O_ �a;%a<%_ Q%a=%_ S%a>%_ �%_ �%_ �%_ �%E` �O_ �_ �6GY h[OY�iO_ Sa Z&a?  a@a Z&E` SY hOaA_ S%aB%_ �%aC%E` �Oga � )_ �_ �l+ �E` �VY h[OY�wO_ QaD%E` �O #*a $a Ba ^_ 8a _a ?_ �la ` aW X ) *hO_ 8a B_ �/j [kv ?_ 8a B_ �/E` �O_ �a �&E` �OaEE` �Oga � )_ �_ �l+ �E` �VY h[OY��[OY��Y hOaFaG%aH%aI%aJ%aK%aL%aM%aN%aO%aP%aQ%aR%aS%aT%aU%aV%aW%aX%aY%aZ%a[%a\%a]%a^%a_%a`%E`O_a R-a Z&E`O �_[a $a "l %kh _ s� ϧE` SO_ Saa%E` �O !*a $a Ba ^�a _a ?_ �la ` aW X ) *hO ��a B_ �/j [kv s�a B_ �/E` �O_ �a �&E` �OabE` �O_ Sa Z&ac  ada Z&E` SY hOae_ S%af%_ �%ag%E` �Oga � )_ �_ �l+ �E` �VY hW X ) *hY h[OY�#OPU ascr  ��ޭ