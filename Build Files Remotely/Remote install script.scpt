FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
"Remote install script"
written by Ed Babcock
greenyouse@gmail.com

v1.0.4 June 9 2012

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
     � 	 	� 
 " R e m o t e   i n s t a l l   s c r i p t " 
 w r i t t e n   b y   E d   B a b c o c k 
 g r e e n y o u s e @ g m a i l . c o m 
 
 v 1 . 0 . 4   J u n e   9   2 0 1 2 
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
 l     ��������  ��  ��        l      ��  ��    � � This script will use your server's location to write a custom script that can be used for remote updates.  The appliation needs your info in order to transfer the files with an scp and an rsync over ssh. 
     �  �   T h i s   s c r i p t   w i l l   u s e   y o u r   s e r v e r ' s   l o c a t i o n   t o   w r i t e   a   c u s t o m   s c r i p t   t h a t   c a n   b e   u s e d   f o r   r e m o t e   u p d a t e s .     T h e   a p p l i a t i o n   n e e d s   y o u r   i n f o   i n   o r d e r   t o   t r a n s f e r   t h e   f i l e s   w i t h   a n   s c p   a n d   a n   r s y n c   o v e r   s s h .   
      l     ��������  ��  ��        l     ����  r         I    �� ��
�� .sysoexecTEXT���     TEXT  m        �   w   - h   |   s o r t   - u   - t '   '   - k 1 , 1   |   w h i l e   r e a d   u s e r   e t c 
 d o 
     h o m e d i r = $ ( d s c l   .   - r e a d   / U s e r s / $ u s e r   N F S H o m e D i r e c t o r y   |   c u t   - d '   '   - f 2 ) 
     e c h o   $ u s e r 
 d o n e��    o      ���� 0 username userName��  ��        l    ����  I   ������
�� .sysobeepnull��� ��� long��  ��  ��  ��        l     ����   I   �� !��
�� .sysodlogaskr        TEXT ! m     " " � # # t P l e a s e   s e l e c t   a   l o c a t i o n   f o r   y o u r   a u t o - u p d a t e   s c r i p t   t o   g o��  ��  ��     $ % $ l    &���� & r     ' ( ' c     ) * ) l    +���� + I   ���� ,
�� .sysostflalis    ��� null��   , �� -��
�� 
prmp - m     . . � / / v P l e a s e   s e l e c t   a   l o c a t i o n   f o r   y o u r   a u t o - u p d a t e   s c r i p t   t o   g o .��  ��  ��   * m    ��
�� 
alis ( o      ���� 0 buildfolder buildFolder��  ��   %  0 1 0 l     ��������  ��  ��   1  2 3 2 l    # 4���� 4 r     # 5 6 5 m     !��
�� boovfals 6 o      ���� 
0 escape  ��  ��   3  7 8 7 l  $ � 9���� 9 W   $ � : ; : k   , � < <  = > = I  , 1������
�� .sysobeepnull��� ��� long��  ��   >  ? @ ? r   2 ? A B A I  2 ;�� C D
�� .sysodlogaskr        TEXT C m   2 3 E E � F F H P l e a s e   e n t e r   y o u r   s e r v e r ' s   l o c a t i o n : D �� G��
�� 
dtxt G b   4 7 H I H m   4 5 J J � K K   I m   5 6 L L � M M   U S E R N A M E @ x . x . x . x��   B o      ���� 0 locationquery locationQuery @  N O N r   @ K P Q P n   @ G R S R 1   C G��
�� 
ttxt S o   @ C���� 0 locationquery locationQuery Q o      ����  0 serverlocation serverLocation O  T U T r   L W V W V n  L S X Y X 1   O S��
�� 
txdl Y 1   L O��
�� 
ascr W o      ���� 0 oldtid oldTID U  Z [ Z r   X c \ ] \ m   X [ ^ ^ � _ _  @ ] n      ` a ` 1   ^ b��
�� 
txdl a 1   [ ^��
�� 
ascr [  b c b r   d p d e d n   d l f g f 4   g l�� h
�� 
citm h m   j k����  g o   d g����  0 serverlocation serverLocation e o      ���� "0 remote_username remote_userName c  i j i r   q } k l k n   q y m n m 4   t y�� o
�� 
citm o m   w x����  n o   q t����  0 serverlocation serverLocation l o      ���� 0 serverip serverIP j  p q p r   ~ � r s r o   ~ ����� 0 oldtid oldTID s n      t u t 1   � ���
�� 
txdl u 1   � ���
�� 
ascr q  v w v r   � � x y x I  � ��� z {
�� .sysodlogaskr        TEXT z b   � � | } | b   � � ~  ~ b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � � ^ S o   t h i s   i s   y o u r   s e r v e r ' s   l o c a t i o n   a n d   U s e r n a m e ? � o   � ���
�� 
ret  � o   � ���
�� 
ret  � o   � �����  0 serverlocation serverLocation � o   � ���
�� 
ret  � m   � � � � � � �  U s e r n a m e :     � o   � ����� "0 remote_username remote_userName � o   � ���
�� 
ret   o   � ���
�� 
ret  } m   � � � � � � � 6 ( m a k e   s u r e   t h i s   i s   c o r r e c t ) { �� ���
�� 
btns � J   � � � �  � � � m   � � � � � � �  C a n c e l �  � � � m   � � � � � � �  n o �  ��� � m   � � � � � � �  y e s��  ��   y o      ���� 0 thecheck theCheck w  ��� � Z   � � � ��� � � =  � � � � � n   � � � � � 1   � ���
�� 
bhit � o   � ����� 0 thecheck theCheck � m   � � � � � � �  n o � r   � � � � � m   � ���
�� boovfals � o      ���� 
0 escape  ��   � Z   � � � ����� � =  � � � � � n   � � � � � 1   � ���
�� 
bhit � o   � ����� 0 thecheck theCheck � m   � � � � � � �  y e s � r   � � � � � m   � ���
�� boovtrue � o      ���� 
0 escape  ��  ��  ��   ; =  ( + � � � o   ( )���� 
0 escape   � m   ) *��
�� boovtrue��  ��   8  � � � l     ��������  ��  ��   �  � � � l  � ����� � r   � � � � c   � � � � l  � ����� � I  ��� � �
�� .gtqpchltns    @   @ ns   � J   �
 � �  � � � m   � � � � � � �  M a c   O S   X �  � � � m   � � � � � � � 
 L i n u x �  � � � m   �  � � � � �  * B S D �  � � � m    � � � � �  W i n d o w s �  ��� � m   � � � � � 
 O t h e r��   � �� ���
�� 
prmp � m   � � � � � b P l e a s e   c h o o s e   t h e   o p e r a t i n g   s y s t e m   o n   y o u r   s e r v e r��  ��  ��   � m  ��
�� 
ctxt � o      ���� 0 os_query OS_Query��  ��   �  � � � l l ����� � Z  l � ��� � � = " � � � o  ���� 0 os_query OS_Query � m  ! � � � � �  M a c   O S   X � r  %4 � � � b  %0 � � � b  %, � � � m  %( � � � � �  : \ " / U s e r s / � o  (+���� "0 remote_username remote_userName � m  ,/ � � � � � � / l i b r a r y / a p p l i c a t i o n \ \ s u p p o r t / x b m c / u s e r d a t a / d a t a b a s e / M y V i d e o s 6 0 . d b \ " � o      ���� 0 remote_xbmc_database  ��   � Z  7l � ��� � � = 7> � � � o  7:���� 0 os_query OS_Query � m  := � � � � � 
 L i n u x � r  AP � � � b  AL � � � b  AH � � � m  AD � � � � �  : h o m e / � o  DG���� "0 remote_username remote_userName � m  HK � � �   L / . x b m c / u s e r d a t a / D a t a b a s e / M y V i d e o s 6 0 . d b � o      ���� 0 remote_xbmc_database  ��   � Z  Sl�� = SZ o  SV���� 0 os_query OS_Query m  VY �  * B S D r  ]l	 b  ]h

 b  ]d m  ]` �  : h o m e / o  `c���� "0 remote_username remote_userName m  dg � L / . x b m c / u s e r d a t a / D a t a b a s e / M y V i d e o s 6 0 . d b	 o      ���� 0 remote_xbmc_database  ��   k  ol  Z  o:���� = ov o  or���� 0 os_query OS_Query m  ru �  W i n d o w s k  y6  r  y~ m  yz��
�� boovfals o      ���� 0 innerescape innerEscape  !  W  "#" k  �$$ %&% I �������
�� .sysobeepnull��� ��� long��  �  & '(' r  ��)*) I ���~+,
�~ .sysodlogaskr        TEXT+ m  ��-- �.. f P l e a s e   e n t e r   y o u r   d r i v e   n a m e   ( f o l l o w e d   b y   a   c o l o n ) :, �}/�|
�} 
dtxt/ c  ��010 m  ��22 �33  C :1 m  ���{
�{ 
utxt�|  * o      �z�z 0 
drivequery 
driveQuery( 454 r  ��676 n  ��898 1  ���y
�y 
ttxt9 o  ���x�x 0 
drivequery 
driveQuery7 o      �w�w 0 	drivename 	driveName5 :;: r  ��<=< I ���v>?
�v .sysodlogaskr        TEXT> b  ��@A@ b  ��BCB b  ��DED m  ��FF �GG > I s   t h i s   t h e   c o r r e c t   d r i v e   n a m e ?E o  ���u
�u 
ret C o  ���t
�t 
ret A o  ���s�s 0 	drivename 	driveName? �rH�q
�r 
btnsH J  ��II JKJ m  ��LL �MM  C a n c e lK NON m  ��PP �QQ  n oO R�pR m  ��SS �TT  y e s�p  �q  = o      �o�o 0 
innercheck 
innerCheck; UVU r  ��WXW I  ���nY�m�n 0 replace_chars  Y Z[Z o  ���l�l 0 	drivename 	driveName[ \]\ m  ��^^ �__  :] `�k` m  ��aa �bb  $�k  �m  X o      �j�j 0 	drivename 	driveNameV c�ic Z  �de�hfd = ��ghg n  ��iji 1  ���g
�g 
bhitj o  ���f�f 0 
innercheck 
innerCheckh m  ��kk �ll  n oe r  ��mnm m  ���e
�e boovfalsn o      �d�d 0 innerescape innerEscape�h  f Z  �op�c�bo = �	qrq n  �sts 1  �a
�a 
bhitt o  ��`�` 0 
innercheck 
innerCheckr m  uu �vv  y e sp r  wxw m  �_
�_ boovtruex o      �^�^ 0 innerescape innerEscape�c  �b  �i  # = ��yzy o  ���]�] 0 innerescape innerEscapez m  ���\
�\ boovtrue! {|{ r  4}~} c  0� l .��[�Z� I .�Y��X
�Y .aevtmvolnull���     TEXT� b  *��� b  &��� b  "��� m  �� ���  s m b : / /� o  !�W�W 0 serverip serverIP� m  "%�� ���  /� o  &)�V�V 0 	drivename 	driveName�X  �[  �Z  � m  ./�U
�U 
alis~ o      �T�T 0 remoteserver remoteServer| ��S� l 55�R���R  �  I hope this works  :-\   � ��� , I   h o p e   t h i s   w o r k s     : - \�S  ��  ��   ��Q� Z  ;l���P�O� = ;B��� o  ;>�N�N 0 os_query OS_Query� m  >A�� ��� 
 O t h e r� k  Eh�� ��� r  EX��� I ET�M��
�M .sysodlogaskr        TEXT� m  EH�� ��� j E n t e r   t h e   d e s t i n a t i o n   o f   y o u r   M y V i d e o s 6 0 . d b   X B M C   f i l e� �L��K
�L 
dtxt� b  IP��� m  IL�� ���  � m  LO�� ���  / y o u r / p a t h / h e r e�K  � o      �J�J (0 mysterydestination mysteryDestination� ��I� r  Yh��� b  Yd��� m  Y\�� ���  :� n  \c��� 1  _c�H
�H 
ttxt� o  \_�G�G (0 mysterydestination mysteryDestination� o      �F�F 0 remote_xbmc_database  �I  �P  �O  �Q  ��  ��   � ��� l     �E�D�C�E  �D  �C  � ��� l m��B�A� Z  m���@�?� > mt��� o  mp�>�> 0 os_query OS_Query� m  ps�� ���  W i n d o w s� k  w�� ��� r  wz��� m  wx�=
�= boovfals� o      �<�< 
0 escape  � ��;� W  {��� k  ��� ��� I ���:�9�8
�: .sysobeepnull��� ��� long�9  �8  � ��� r  ����� I ���7��
�7 .sysodlogaskr        TEXT� m  ���� ��� P l e a s e   e n t e r   t h e   p a t h   t o   y o u r   s e r v e r   f o l d e r   ( t h e   r o o t   d i r e c t o r y   f o r   y o u r   w e b s i t e   l o c a t e d   o n   t h e   s e r v e r ,   D O   N O T   u s e   " : " ,   u s e   " / " ) :� �6��5
�6 
dtxt� b  ����� m  ���� ���  � m  ���� ��� $ / w h a t ' s / t h e / p a t h / ?�5  � o      �4�4  0 serverlocquery serverLocQuery� ��� r  ����� b  ����� m  ���� ���  :� n  ����� 1  ���3
�3 
ttxt� o  ���2�2  0 serverlocquery serverLocQuery� o      �1�1 0 rootlocation rootLocation� ��� r  ����� I ���0��
�0 .sysodlogaskr        TEXT� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ��� r S o   t h i s   i s   t h e   r o o t   d i r e c t o r y   f o r   y o u r   s i t e   o n   t h e   s e v e r ?� o  ���/
�/ 
ret � o  ���.
�. 
ret � o  ���-�- 0 rootlocation rootLocation� o  ���,
�, 
ret � o  ���+
�+ 
ret � o  ���*
�* 
ret � m  ���� ��� 6 ( m a k e   s u r e   t h i s   i s   c o r r e c t )� �)��(
�) 
btns� J  ���� ��� m  ���� ���  C a n c e l� ��� m  ��   �  n o� �' m  �� �  y e s�'  �(  � o      �&�& 0 checkno2 checkNo2� �% Z  ��$ = ��	
	 n  �� 1  ���#
�# 
bhit o  ���"�" 0 checkno2 checkNo2
 m  �� �  n o r  �� m  ���!
�! boovfals o      � �  
0 escape  �$   Z  ��� = � n  �� 1  ���
� 
bhit o  ���� 0 checkno2 checkNo2 m  � �  y e s r   m  �
� boovtrue o      �� 
0 escape  �  �  �%  � = � o  ��� 
0 escape   m  ���
� boovtrue�;  �@  �?  �B  �A  �  l     ����  �  �     l !��! r  "#" m  �
� boovfals# o      �� 
0 escape  �  �    $%$ l �&��& W  �'(' k  "�)) *+* I "'���
� .sysobeepnull��� ��� long�  �  + ,-, r  (;./. I (7�01
� .sysodlogaskr        TEXT0 m  (+22 �33 � P l e a s e   e n t e r   t h e   n a m e   o f   y o u r   f r o n t p a g e   v i d e o   f i l e   o n   y o u r   s e r v e r1 �
4�	
�
 
dtxt4 b  ,3565 m  ,/77 �88  6 m  /299 �::   w h a t ' s _ t h e . n a m e ?�	  / o      �� 0 
indexquery 
indexQuery- ;<; r  <G=>= n  <C?@? 1  ?C�
� 
ttxt@ o  <?�� 0 
indexquery 
indexQuery> o      �� 0 	videoname 	videoName< ABA r  H�CDC I H}�EF
� .sysodlogaskr        TEXTE b  HkGHG b  HgIJI b  HcKLK b  H_MNM b  H[OPO b  HWQRQ b  HSSTS b  HOUVU m  HKWW �XX \ I s   t h i s   t h e   n a m e   o f   y o u r   f r o n t p a g e   v i d e o   f i l e ?V o  KN�
� 
ret T o  OR�
� 
ret R o  SV�� 0 	videoname 	videoNameP o  WZ� 
�  
ret N o  [^��
�� 
ret L o  _b��
�� 
ret J o  cf��
�� 
ret H m  gjYY �ZZ 6 ( m a k e   s u r e   t h i s   i s   c o r r e c t )F ��[��
�� 
btns[ J  ny\\ ]^] m  nq__ �``  c a n c e l^ aba m  qtcc �dd  n ob e��e m  twff �gg  y e s��  ��  D o      ���� 0 	check_no2  B h��h Z  ��ij��ki = ��lml n  ��non 1  ����
�� 
bhito o  ������ 0 	check_no2  m m  ��pp �qq  n oj r  ��rsr m  ����
�� boovfalss o      ���� 
0 escape  ��  k Z  ��tu����t = ��vwv n  ��xyx 1  ����
�� 
bhity o  ������ 0 checkno2 checkNo2w m  ��zz �{{  y e su r  ��|}| m  ����
�� boovtrue} o      ���� 
0 escape  ��  ��  ��  ( = !~~ o  ���� 
0 escape   m   ��
�� boovtrue�  �  % ��� l     ��������  ��  ��  � ��� l �������� I ��������
�� .sysobeepnull��� ��� long��  ��  ��  ��  � ��� l �������� r  ����� I ������
�� .sysodlogaskr        TEXT� m  ���� ��� . W i l l   y o u   u s e   s u b t i t l e s ?� �����
�� 
btns� J  ���� ��� m  ���� ���  Y e s� ���� m  ���� ���  N o��  ��  � o      ���� 0 presubquery preSubQuery��  ��  � ��� l �������� Z  ��������� = ����� n  ����� 1  ����
�� 
bhit� o  ������ 0 presubquery preSubQuery� m  ���� ���  Y e s� k  ���� ��� r  ����� J  ���� ��� m  ���� ���  . s r t� ��� m  ���� ���  . t x t� ��� m  ���� ���  . m k s� ���� m  ���� ���  . v t t��  � o      ���� 0 extensionlist extensionList� ��� r  �
��� c  ���� l ������� I �����
�� .gtqpchltns    @   @ ns  � o  ������ 0 extensionlist extensionList� ����
�� 
prmp� m  ���� ��� J W h a t   s u b t i t l e   f i l e   t y p e   w i l l   y o u   u s e ?� �����
�� 
mlsl� m  ����
�� boovfals��  ��  ��  � m  ��
�� 
ctxt� o      ���� 0 subtypequery subTypeQuery� ��� r  ���� J  ��� ��� m  �� ���   a b   - -   A b k h a z i a n .� ��� m  �� ���  a a   - -   A f a r .� ��� m  �� ���   a f   - -   A f r i k a a n s .� ��� m  �� ���  s q   - -   A l b a n i a n .� ��� m  �� ���  a m   - -   A m h a r i c .� ��� m  �� ���  a r   - -   A r a b i c .� ��� m   �� ���   a n   - -   A r a g o n e s e .� ��� m   #�� ���  h y   - -   A r m e n i a n .� ��� m  #&�� ���  a s   - -   A s s a m e s e .� ��� m  &)�� ���  a y   - -   A y m a r a .� ��� m  ),�� ��� $ a z   - -   A z e r b a i j a n i .� ��� m  ,/�� ���  b a   - -   B a s h k i r .� ��� m  /2�� ���  e u   - -   B a s q u e .� ��� m  25   �  b n   - -   B e n g a l i .�  m  58 �  d z   - -   B h u t a n i .  m  8; �		  b h   - -   B i h a r i . 

 m  ;> �  b i   - -   B i s l a m a .  m  >A �  b r   - -   B r e t o n .  m  AD �   b g   - -   B u l g a r i a n .  m  DG �  m y   - -   B u r m e s e .  m  GJ � & b e   - -   B y e l o r u s s i a n .  m  JM   �!!   k m   - -   C a m b o d i a n . "#" m  MP$$ �%%  c a   - -   C a t a l a n .# &'& m  PS(( �))  z h   - -   C h i n e s e .' *+* m  SV,, �--  z h   - -   C h i n e s e .+ ./. m  VY00 �11  c o   - -   C o r s i c a n ./ 232 m  Y\44 �55  h r   - -   C r o a t i a n .3 676 m  \_88 �99  c s   - -   C z e c h .7 :;: m  _b<< �==  d a   - -   D a n i s h .; >?> m  be@@ �AA  n l   - -   D u t c h .? BCB m  ehDD �EE  e n   - -   E n g l i s h .C FGF m  hkHH �II   e o   - -   E s p e r a n t o .G JKJ m  knLL �MM  e t   - -   E s t o n i a n .K NON m  nqPP �QQ  f o   - -   F a e r o e s e .O RSR m  qtTT �UU  f a   - -   F a r s i .S VWV m  twXX �YY  f j   - -   F i j i .W Z[Z m  wz\\ �]]  f i   - -   F i n n i s h .[ ^_^ m  z}`` �aa  f r   - -   F r e n c h ._ bcb m  }�dd �ee  f y   - -   F r i s i a n .c fgf m  ��hh �ii  g l   - -   G a l i c i a n .g jkj m  ��ll �mm  g d   - -   G a e l i c .k non m  ��pp �qq  g v   - -   G a e l i c .o rsr m  ��tt �uu  k a   - -   G e o r g i a n .s vwv m  ��xx �yy  d e   - -   G e r m a n .w z{z m  ��|| �}}  e l   - -   G r e e k .{ ~~ m  ���� ��� $ k l   - -   G r e e n l a n d i c . ��� m  ���� ���  g n   - -   G u a r a n i .� ��� m  ���� ���  g u   - -   G u j a r a t i .� ��� m  ���� ��� * h t   - -   H a i t i a n   C r e o l e .� ��� m  ���� ���  h a   - -   H a u s a .� ��� m  ���� ���  h e   - -   H e b r e w .� ��� m  ���� ���  h i   - -   H i n d i .� ��� m  ���� ���   h u   - -   H u n g a r i a n .� ��� m  ���� ���   i s   - -   I c e l a n d i c .� ��� m  ���� ���  i o   - -   I d o .� ��� m  ���� ��� " i d   - -   I n d o n e s i a n .� ��� m  ���� ��� $ i a   - -   I n t e r l i n g u a .� ��� m  ���� ��� $ i e   - -   I n t e r l i n g u e .� ��� m  ���� ���   i u   - -   I n u k t i t u t .� ��� m  ���� ���  i k   - -   I n u p i a k .� ��� m  ���� ���  g a   - -   I r i s h .� ��� m  ���� ���  i t   - -   I t a l i a n .� ��� m  ���� ���  j a   - -   J a p a n e s e .� ��� m  ���� ���  j v   - -   J a v a n e s e .� ��� m  ���� ���  k n   - -   K a n n a d a .� ��� m  ���� ���  k s   - -   K a s h m i r i .� ��� m  ���� ���  k k   - -   K a z a k h .� ��� m  ���� ��� $ r w   - -   K i n y a r w a n d a .� ��� m  ���� ���  k y   - -   K i r g h i z .� ��� m  ���� ���  r n   - -   K i r u n d i .� ��� m  ���� ���  k o   - -   K o r e a n .� ��� m  ���� ���  k u   - -   K u r d i s h .� ��� m  ���� ���  l o   - -   L a o t h i a n .� ��� m  ���� ���  l a   - -   L a t i n .� ��� m  ���� ���  l v   - -   L a t v i a n .� ��� m  ���� ��� " l i   - -   L i m b u r g i s h .� ��� m  ���� ���  l n   - -   L i n g a l a .� ��� m  ��   � " l t   - -   L i t h u a n i a n .�  m  �� � " m k   - -   M a c e d o n i a n .  m  �� �		  m g   - -   M a l a g a s y . 

 m  �� �  m s   - -   M a l a y .  m  � �   m l   - -   M a l a y a l a m .  m   �  m t   - -   M a l t e s e .  m   �  m i   - -   M a o r i .  m  
 �  m r   - -   M a r a t h i .  m  
   �!!   m o   - -   M o l d a v i a n . "#" m  $$ �%%   m n   - -   M o n g o l i a n .# &'& m  (( �))  n a   - -   N a u r u .' *+* m  ,, �--  n e   - -   N e p a l i .+ ./. m  00 �11   n o   - -   N o r w e g i a n ./ 232 m  44 �55  o c   - -   O c c i t a n .3 676 m  88 �99  o r   - -   O r i y a .7 :;: m  "<< �==  o m   - -   O r o m o .; >?> m  "%@@ �AA  p s   - -   P a s h t o .? BCB m  %(DD �EE  p l   - -   P o l i s h .C FGF m  (+HH �II " p t   - -   P o r t u g u e s e .G JKJ m  +.LL �MM  p a   - -   P u n j a b i .K NON m  .1PP �QQ  q u   - -   Q u e c h u a .O RSR m  14TT �UU * r m   - -   R h a e t o - R o m a n c e .S VWV m  47XX �YY  r o   - -   R o m a n i a n .W Z[Z m  7:\\ �]]  r u   - -   R u s s i a n .[ ^_^ m  :=`` �aa  s m   - -   S a m o a n ._ bcb m  =@dd �ee  s g   - -   S a n g r o .c fgf m  @Chh �ii  s a   - -   S a n s k r i t .g jkj m  CFll �mm  s r   - -   S e r b i a n .k non m  FIpp �qq * s h   - -   S e r b o - C r o a t i a n .o rsr m  ILtt �uu  s t   - -   S e s o t h o .s vwv m  LOxx �yy  t n   - -   S e t s w a n a .w z{z m  OR|| �}}  s n   - -   S h o n a .{ ~~ m  RU�� ��� " i i   - -   S i c h u a n   Y i . ��� m  UX�� ���  s d   - -   S i n d h i .� ��� m  X[�� ���   s i   - -   S i n h a l e s e .� ��� m  [^�� ���  s s   - -   S i s w a t i .� ��� m  ^a�� ���  s k   - -   S l o v a k .� ��� m  ad�� ���   s l   - -   S l o v e n i a n .� ��� m  dg�� ���  s o   - -   S o m a l i .� ��� m  gj�� ���  e s   - -   S p a n i s h .� ��� m  jm�� ���   s u   - -   S u n d a n e s e .� ��� m  mp�� ���  s w   - -   S w a h i l i .� ��� m  ps�� ���  s v   - -   S w e d i s h .� ��� m  sv�� ���  t l   - -   T a g a l o g .� ��� m  vy�� ���  t g   - -   T a j i k .� ��� m  y|�� ���  t a   - -   T a m i l .� ��� m  |�� ���  t t   - -   T a t a r .� ��� m  ��� ���  t e   - -   T e l u g u .� ��� m  ���� ���  t h   - -   T h a i .� ��� m  ���� ���  b o   - -   T i b e t a n .� ��� m  ���� ���  t i   - -   T i g r i n y a .� ��� m  ���� ���  t o   - -   T o n g a .� ��� m  ���� ���  t s   - -   T s o n g a .� ��� m  ���� ���  t r   - -   T u r k i s h .� ��� m  ���� ���  t k   - -   T u r k m e n .� ��� m  ���� ���  t w   - -   T w i .� ��� m  ���� ���  u g   - -   U i g h u r .� ��� m  ���� ���   u k   - -   U k r a i n i a n .� ��� m  ���� ���  u r   - -   U r d u .� ��� m  ���� ���  u z   - -   U z b e k .� ��� m  ���� ��� " v i   - -   V i e t n a m e s e .� ��� m  ���� ���  v o   - -   V o l a p � k .� ��� m  ���� ���  w a   - -   W a l l o n .� ��� m  ���� ���  c y   - -   W e l s h .� ��� m  ��   �  w o   - -   W o l o f .�  m  �� �  x h   - -   X h o s a .  m  �� �		  y i   - -   Y i d d i s h . 

 m  �� �  y o   - -   Y o r u b a . �� m  �� �  z u   - -   Z u l u .��  � o      ���� 0 subtitlequery subtitleQuery� �� r  �� c  �� l ������ I ����
�� .gtqpchltns    @   @ ns   o  ������ 0 subtitlequery subtitleQuery ��
�� 
prmp m  �� � d W h i c h   s u b t i t l e   l a n g a u g e s   w i l l   y o u   u s e ?   (#   +   c l i c k ) ����
�� 
mlsl m  ����
�� boovtrue��  ��  ��   m  ����
�� 
ctxt o      ���� 0 
menuchoice 
menuChoice��  ��  ��  ��  ��  �  l     ��������  ��  ��    !  l �
"����" r  �
#$# I ���%&
�� .sysodlogaskr        TEXT% b  ��'(' b  ��)*) b  ��+,+ m  ��-- �.. � D o   y o u   w a n t   a   f u l l y   a u t o m a t e d   s c r i p t   w i t h   n o   S S H   p a s s w o r d   p r o m p t ?, o  ����
�� 
ret * o  ����
�� 
ret ( m  ��// �00 � ( m a k e   s u r e   y o u ' v e   c o p i e d   y o u r   p u b l i c   k e y   o n t o   t h e   r e m o t e   s e r v e r   b e f o r e   d o i n g   t h i s )& ��1��
�� 
btns1 J  �22 343 m  ��55 �66  Y e s4 7��7 m  � 88 �99  N o��  ��  $ o      ���� 0 	waitquery 	waitQuery��  ��  ! :;: l *<����< Z  *=>��?= = @A@ n  BCB 1  ��
�� 
bhitC o  ���� 0 	waitquery 	waitQueryA m  DD �EE  N o> r   FGF m  HH �II  2 0G o      ���� 0 thewait theWait��  ? r  #*JKJ m  #&LL �MM  1 0K o      ���� 0 thewait theWait��  ��  ; NON l     ��������  ��  ��  O PQP l +RR����R O  +RSTS r  1QUVU I 1M����W
�� .corecrel****      � null��  W ��XY
�� 
koclX m  58��
�� 
fileY ��Z[
�� 
inshZ o  ;<���� 0 buildfolder buildFolder[ ��\��
�� 
prdt\ K  ?G]] ��^��
�� 
pnam^ m  BE__ �`` 0 M o i r a i   A u t o - U p d a t e r . s c p t��  ��  V o      ���� 0 	buildfile 	buildFileT m  +.aa�                                                                                  MACS  alis    r  Macintosh HD               Ʉ�zH+     j
Finder.app                                                       ���8t        ����  	                CoreServices    Ʌ�      �8�e       j   &   %  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��  Q bcb l     ��������  ��  ��  c ded l S%f����f O  S%ghg l Y$ijki k  Y$ll mnm r  Ygopo e  Ycqq n  Ycrsr 1  ^b��
�� 
pnams 1  Y^��
�� 
sdskp o      ���� 0 hd_name HD_namen tut r  h{vwv c  hwxyx l huz����z b  hu{|{ b  hq}~} b  ho� o  hk���� 0 hd_name HD_name� m  kn�� ���  : U s e r s :~ o  op���� 0 username userName| m  qt�� ��� : : L i b r a r y : A p p l i c a t i o n   S u p p o r t :��  ��  y m  uv��
�� 
alisw o      ���� 0 addondir addonDiru ���� Z  |$������� H  |��� l |������� I |������
�� .coredoexbool        obj � n |���� 4  ����
�� 
cfol� l �������� c  ����� m  ���� ��� $ M o i r a i _ w e b _ b u i l d e r� m  ����
�� 
TEXT��  ��  � o  |���� 0 addondir addonDir��  ��  ��  � k  � �� ��� I ����~�
� .corecrel****      � null�~  � �}��
�} 
kocl� m  ���|
�| 
cfol� �{��
�{ 
insh� o  ���z�z 0 addondir addonDir� �y��x
�y 
prdt� K  ���� �w��v
�w 
pnam� m  ���� ��� $ M o i r a i _ w e b _ b u i l d e r�v  �x  � ��� r  ����� n ����� 4  ���u�
�u 
cfol� l ����t�s� c  ����� m  ���� ��� $ M o i r a i _ w e b _ b u i l d e r� m  ���r
�r 
TEXT�t  �s  � o  ���q�q 0 addondir addonDir� o      �p�p 0 	moiraidir 	moiraiDir� ��� I ���o�n�
�o .corecrel****      � null�n  � �m��
�m 
kocl� m  ���l
�l 
cfol� �k��
�k 
insh� o  ���j�j 0 	moiraidir 	moiraiDir� �i��h
�i 
prdt� K  ���� �g��f
�g 
pnam� m  ���� ��� 
 S i t e s�f  �h  � ��� I ��e�d�
�e .corecrel****      � null�d  � �c��
�c 
kocl� m  ���b
�b 
file� �a��
�a 
insh� o  ���`�` 0 	moiraidir 	moiraiDir� �_��^
�_ 
prdt� K  ���� �]��\
�] 
pnam� m  ���� ���  N e w M o v i e _ d a t a�\  �^  � ��[� I  �Z�Y�
�Z .corecrel****      � null�Y  � �X��
�X 
kocl� m  	�W
�W 
file� �V��
�V 
insh� o  �U�U 0 	moiraidir 	moiraiDir� �T��S
�T 
prdt� K  �� �R��Q
�R 
pnam� m  �� ���  N e w t v s h o w _ d a t a�Q  �S  �[  ��  ��  ��  j ? 9makes Moirai directory in "~/library/application support"   k ��� r m a k e s   M o i r a i   d i r e c t o r y   i n   " ~ / l i b r a r y / a p p l i c a t i o n   s u p p o r t "h m  SV���                                                                                  MACS  alis    r  Macintosh HD               Ʉ�zH+     j
Finder.app                                                       ���8t        ����  	                CoreServices    Ʌ�      �8�e       j   &   %  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��  e ��� l     �P�O�N�P  �O  �N  � ��� l &1��M�L� r  &1��� c  &-��� o  &)�K�K 0 	buildfile 	buildFile� m  ),�J
�J 
ctxt� o      �I�I 0 	buildfile 	buildFile�M  �L  � ��� l     �H���H  � N Henter the scripts here as variables and write variables to the buildFile   � ��� � e n t e r   t h e   s c r i p t s   h e r e   a s   v a r i a b l e s   a n d   w r i t e   v a r i a b l e s   t o   t h e   b u i l d F i l e� ��� l     �G�F�E�G  �F  �E  � ��� l 29��D�C� r  29��� m  25�� ���J ( * 
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
 * )� o      �B�B 0 
thelicense 
theLicense�D  �C  � ��� l     �A�@�?�A  �@  �?  � ��� l :o��>�=� Z  :o���<�� = :A��� o  :=�;�; 0 os_query OS_Query� m  =@�� ���  W i n d o w s� l DK���� k  DK�� ��� l DD�:�9�8�:  �9  �8  � ��7� r  DK��� m  DG�� ���v t e l l   a p p l i c a t i o n   " F i n d e r "  	 s e t   h o m e l i b   t o   f o l d e r   " l i b r a r y "   o f   h o m e  	 s e t   h o m e A p p   t o   f o l d e r   " a p p l i c a t i o n   s u p p o r t "   o f   h o m e l i b  	 s e t   h o m e M o i r a i   t o   f o l d e r   " M o i r a i _ w e b _ b u i l d e r "   o f   h o m e A p p 
 	 s e t   l i b F o l d e r   t o   f o l d e r   " p r o g r a m   f i l e s "   o f   r e m o t e S e r v e r  	 s e t   x b m c F o l   t o   f o l d e r   " x b m c "   o f   l i b F o l d e r  	 s e t   u s e r D a t a   t o   f o l d e r   " u s e r d a t a "   o f   x b m c F o l  	 s e t   d a t a F o l   t o   f o l d e r   " D a t a b a s e "   o f   u s e r D a t a  	 s e t   v i d e o D a t a b a s e   t o   f i l e   " M y V i d e o s 6 0 . d b "   o f   d a t a F o l  	 c o p y   v i d e o D a t a b a s e   t o   d e s k t o p  	 m o v e   f i l e   " M y V i d e o s 6 0 . d b "   o f   d e s k t o p   t o   h o m e A p p   w i t h   r e p l a c i n g  	 m o v e   d a t a F i l e   t o   d a t a F o l   w i t h   r e p l a c i n g  e n d   t e l l� o      �6�6  0 server_to_host server_to_Host�7  � "  !!! new section for windows   � ��� 8   ! ! !   n e w   s e c t i o n   f o r   w i n d o w s�<  � r  No   b  Nk b  Ng b  Nc b  N_	 b  N[

 b  NW b  NS m  NQ � � a c t i v a t e   a p p l i c a t i o n   " T e r m i n a l "  t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "  	 t e l l   p r o c e s s   " T e r m i n a l "  	 	 k e y s t r o k e   " c d   / u s e r s / o  QR�5�5 0 username userName m  SV � n / l i b r a r y / ' a p p l i c a t i o n   s u p p o r t ' / M o i r a i _ w e b _ b u i l d e r ;   s c p   o  WZ�4�4  0 serverlocation serverLocation	 o  [^�3�3 0 remote_xbmc_database   m  _b � B   M y V i d e o s 6 0 . d b "   &   r e t u r n  	 	 d e l a y   o  cf�2�2 0 thewait theWait m  gj � �  	 e n d   t e l l  	 t e l l   a p p l i c a t i o n   " F i n d e r "   t o   q u i t   a p p l i c a t i o n   " T e r m i n a l "  e n d   t e l l o      �1�1  0 server_to_host server_to_Host�>  �=  �  l pw�0�/ r  pw m  ps �L� ( *   T h i s   s c r i p t   w i l l   r e t r i e v e   t h e   l i s t   o f   m o v i e s   o n   t h e   s e r v e r   ( u s i n g   t h e   M y V i d e o s 6 0 . d b )   a n d   b u i l d   a l l   t h e   n e c c e s s a r y   H T M L   p a g e s   f o r   t h e   w e b s i t e .     I n s t e a d   o f   j u s t   u p d a t i n g   t h e   s i t e ,   i t   r e b u i l d s   a l l   t h e   w e b p a g e s   f r o m   s c r a t c h .     I t ' s   d i f f i c u l t   t o   u p d a t e   w i t h o u t   r e b u i d i n g   e v e r y t h i n g   b e c a u s e   m a n y   H T M L   p a g e s   d e p e n d   u p o n   o t h e r   p a g e s   s o   d e l e t i n g   a n d   a d d i n g   o n l y   s e l e c t   p a g e s   w i l l   l e a v e   s o m e   w e b   p a g e s   w i t h   d e a d   l i n k s   o r   n e w   c o n t e n t   t h a t   h a s   n o   l i n k .     I f   y o u   c a n   d e s i g n   a   m e t h o d   t o   o n l y   u p d a t e   a   m i n i m a l   n u m b e r   o f   p a g e s ,   t h a t   s h o u l d   s p e e d   u p   t h e   u p d a t e   p r o c e s s   s i g n i f i c a n t l y . 
 * )   s e t   t h e N u m b e r s   t o   { " 0 " ,   " 1 " ,   " 2 " ,   " 3 " ,   " 4 " ,   " 5 " ,   " 6 " ,   " 7 " ,   " 8 " ,   " 9 " }  s e t   n u m b e r L a b e l   t o   { " - " }  s e t   t h e S p a c e s   t o   { "   " }  s e t   t h e C o l o n s   t o   { " : " }  s e t   t h e D a s h e s   t o   { " _ " }   - - h e l p f u l   f o r   d i s p l a y i n g   n a m e s   i n   h t m l 5   l i s t   g e n e r a t i o n  s e t   t h e N o r m a l C h a r a c t e r s   t o   { " / " }   - - c h a n g e   " : "   t o   " / "   f o r   h t m l 5   c o d i n g   t e l l   a p p l i c a t i o n   " F i n d e r "  	 s e t   H D _ n a m e   t o   g e t   n a m e   o f   s t a r t u p   d i s k  e n d   t e l l  s e t   u s e r N a m e   t o   d o   s h e l l   s c r i p t   " w   - h   |   s o r t   - u   - t '   '   - k 1 , 1   |   w h i l e   r e a d   u s e r   e t c 
 d o 
     h o m e d i r = $ ( d s c l   .   - r e a d   / U s e r s / $ u s e r   N F S H o m e D i r e c t o r y   |   c u t   - d '   '   - f 2 ) 
     e c h o   $ u s e r 
 d o n e "  - - b e l o w   i s   t h e   s e c t i o n   f o r   t h e   n e w   d a t a b a s e   f o r   m o v i e s  s e t   l o c   t o   s p a c e   &   " ~ / l i b r a r y / ' a p p l i c a t i o n   s u p p o r t ' / M o i r a i _ w e b _ B u i l d e r / M y V i d e o s 6 0 . d b "   &   s p a c e  s e t   h e a d   t o   " s q l i t e 3   - l i n e "   &   l o c   &   q u o t e   - -   t h e   " - l i n e "   o p t i o n   o u t p u t s   t h e   c o l u m n   d a t a   a n d   h e a d i n g   o n e   l i n e   a t   a   t i m e   -   u s e f u l   f o r   p a r s i n g   t h e   o u t p u t   f o r   p a r t i c u l a r   d a t a   i t e m s .  s e t   t a i l   t o   q u o t e  s e t   A l l   t o   " s e l e c t   c 2 2   f r o m   m o v i e ;   "   - -   r e t r i e v e s   t h e   t i t l e s   f r o m   t h e   m o v i e   t a b l e  s e t   m o v i e T a b l e   t o   d o   s h e l l   s c r i p t   h e a d   &   A l l   &   t a i l  s e t   m o v i e T a b l e   t o   m o v i e T a b l e   a s   t e x t  s e t   a l l P a r a   t o   e v e r y   p a r a g r a p h   i n   m o v i e T a b l e   - - w o n k y   b u t   . . .  s e t   n e w T i t l e L i s t   t o   { }  r e p e a t   w i t h   a P a r a   i n   a l l P a r a   - - l o o p   f o r   M o v i e   T i t l e s !  	 i f   ( t e x t   o f   a P a r a )  "`   " "   t h e n  	 	 s e t   a T i t l e   t o   t e x t   ( ( o f f s e t   o f   "   c 2 2   =   "   i n   a P a r a )   +   7 )   t h r u   - 1   o f   a P a r a  	 	 c o p y   a T i t l e   t o   e n d   o f   n e w T i t l e L i s t  	 e n d   i f  e n d   r e p e a t  s e t   n e w T i t l e L i s t   t o   m y   r e p l a c e _ c h a r s ( n e w T i t l e L i s t ,   " =   " ,   r e t u r n )   - - c r e a t e s   v e r i t c a l   l i s t   t e l l   a p p l i c a t i o n   " F i n d e r "  	 s e t   M o i r a i _ d i r   t o   ( H D _ n a m e   &   " : U s e r s : "   &   u s e r N a m e   &   " : L i b r a r y : A p p l i c a t i o n   S u p p o r t : M o i r a i _ w e b _ b u i l d e r : " )   a s   a l i a s  	 i f   n o t   ( e x i s t s   f i l e   ( " N e w M o v i e _ d a t a "   a s   s t r i n g )   i n   M o i r a i _ d i r )   t h e n  	 	 m a k e   n e w   f i l e   a t   M o i r a i _ d i r   w i t h   p r o p e r t i e s   { n a m e : " N e w M o v i e _ d a t a " }  	 e n d   i f  	 s e t   m o v i e _ d a t a   t o   ( H D _ n a m e   &   " : U s e r s : "   &   u s e r N a m e   &   " : L i b r a r y : A p p l i c a t i o n   S u p p o r t : M o i r a i _ w e b _ b u i l d e r : N e w M o v i e _ d a t a : " )  	 m y   w r i t e _ t o _ f i l e ( n e w T i t l e L i s t ,   m o v i e _ d a t a ,   f a l s e )   - - f a l s e   w i l l   e r a s e   p r e v i o u s   c o n t e n t s   f r o m   t h e   t e x t   f i l e  	 s e t   m o v i e _ d a t a   t o   m o v i e _ d a t a   a s   s t r i n g  	 s e t   t h e   o p e n _ m o v i e _ d a t a   t o   o p e n   f o r   a c c e s s   f i l e   m o v i e _ d a t a   w i t h   w r i t e   p e r m i s s i o n  	 s e t   n e w I n f o   t o   r e a d   f i l e   m o v i e _ d a t a   u s i n g   d e l i m i t e r   " =   "  	 c l o s e   a c c e s s   t h e   o p e n _ m o v i e _ d a t a  	 s e t   n e w I n f o T e x t   t o   n e w I n f o   a s   t e x t  	 - - L e t s   a d d   H T M L   p a g e s   n o w  	  	 s e t   m o v i e _ d a t a   t o   ( H D _ n a m e   &   " : U s e r s : "   &   u s e r N a m e   &   " : L i b r a r y : A p p l i c a t i o n   S u p p o r t : M o i r a i _ w e b _ b u i l d e r : N e w M o v i e _ d a t a : " )   a s   a l i a s  	 s e t   m o i r a i D i r   t o   f o l d e r   o f   m o v i e _ d a t a  	 s e t   A p p _ f o l d e r   t o   f o l d e r   ( " S i t e s " )   i n   m o i r a i D i r  	 i f   n o t   ( e x i s t s   f o l d e r   ( " M o v i e s "   a s   s t r i n g )   i n   A p p _ f o l d e r )   t h e n   - - c h e c k   f o r   f o l d e r s  	 	 m a k e   n e w   f o l d e r   a t   A p p _ f o l d e r   w i t h   p r o p e r t i e s   { n a m e : " M o v i e s " }  	 e n d   i f  	 s e t   m o v i e D i r   t o   f o l d e r   ( " M o v i e s "   a s   s t r i n g )   i n   A p p _ f o l d e r  	 i f   ( c o u n t   o f   i t e m s   i n   m o v i e D i r )   i s   g r e a t e r   t h a n   1   t h e n   - - c l e a r   f o l d e r s  	 	 d e l e t e   e v e r y   i t e m   i n   m o v i e D i r  	 e n d   i f  	 i f   n o t   ( e x i s t s   f o l d e r   ( " v i d e o s "   a s   s t r i n g )   i n   A p p _ f o l d e r )   t h e n  	 	 m a k e   n e w   f o l d e r   a t   A p p _ f o l d e r   w i t h   p r o p e r t i e s   { n a m e : " v i d e o s " }  	 e n d   i f  	 s e t   v i d e o D i r   t o   f o l d e r   ( " v i d e o s "   a s   s t r i n g )   i n   A p p _ f o l d e r  	 i f   n o t   ( e x i s t s   f o l d e r   ( " M o v i e s "   a s   s t r i n g )   i n   v i d e o D i r )   t h e n  	 	 m a k e   n e w   f o l d e r   a t   v i d e o D i r   w i t h   p r o p e r t i e s   { n a m e : " M o v i e s " }  	 e n d   i f  	 s e t   v i d _ M o v i e D i r   t o   f o l d e r   ( " M o v i e s "   a s   s t r i n g )   i n   v i d e o D i r  	 i f   ( c o u n t   o f   i t e m s   i n   v i d _ M o v i e D i r )   i s   g r e a t e r   t h a n   1   t h e n  	 	 d e l e t e   e v e r y   i t e m   i n   v i d _ M o v i e D i r  	 e n d   i f  	 s e t   o l d T I D   t o   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s  	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   r e t u r n  	 s e t   a l l C o n t e n t   t o   e v e r y   t e x t   i t e m   o f   n e w I n f o T e x t  	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   o l d T I D  	 s e t   f i r s t T e x t   t o   t e x t   i t e m   1   o f   a l l C o n t e n t  	 s e t   f i r s t T e x t   t o   m y   t r i m _ l i n e ( f i r s t T e x t ,   "   " ,   0 )   - - g e t   r i d   o f   a n   e m p t y   s p a c e  	 c o p y   f i r s t T e x t   t o   t e x t   i t e m   1   o f   a l l C o n t e n t  	 s e t   o l d T I D   t o   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s  	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   r e t u r n   &   "   "  	 s e t   a l l C o n t e n t   t o   e v e r y   t e x t   i t e m   o f   a l l C o n t e n t  	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   o l d T I D  	 r e p e a t   w i t h   a n I t e m   i n   a l l C o n t e n t  	 	 s e t   o l d T I D   t o   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s  	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " M o v i e s / "  	 	 s e t   t i t l e I n f o   t o   t e x t   i t e m   2   o f   a n I t e m  	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " . "  	 	 s e t   l e t t e r N a m e   t o   f i r s t   c h a r a c t e r   o f   t i t l e I n f o   a s   t e x t  	 	 s e t   l e t t e r N a m e   t o   m y   C a p i t a l i z e F i r s t L e t t e r _ o f E v e r y W o r d ( l e t t e r N a m e )  	 	 s e t   s h o w N a m e   t o   t e x t   i t e m   1   o f   t i t l e I n f o   a s   t e x t  	 	 s e t   e p i s o d e N a m e   t o   t i t l e I n f o   a s   t e x t  	 	 s e t   s h o w N a m e   t o   m y   r e p l a c e _ c h a r s ( s h o w N a m e ,   "   " ,   " _ " )  	 	 s e t   e p i s o d e N a m e   t o   m y   r e p l a c e _ c h a r s ( e p i s o d e N a m e ,   "   " ,   " _ " ) 
 	 	 t r y  	 	 s e t   a S h o w   t o   m a k e   n e w   f o l d e r   a t   v i d _ M o v i e D i r   w i t h   p r o p e r t i e s   { n a m e : s h o w N a m e } 
 	 	 e n d   t r y  	 	 s e t   a n E p i s o d e   t o   m a k e   n e w   f i l e   a t   a S h o w   w i t h   p r o p e r t i e s   { n a m e : e p i s o d e N a m e }  	 e n d   r e p e a t  	 - - n o w   w e ' l l   b u i l d   H T M L   f i l e s !  	 - - t h i s   p a r t   i s   m e s s y   a n d   c o m p l e x ,   w o r k   h e r e   w o u l d   b e   g r e a t l y   a p p r e c i a t e d !   : - )  	  	 s e t   a z M e n u N a m e   t o   " A - Z M e n u "   - - t h i s   b u i l d s   t h e   M o v i e   h t m l   d i r e c t o r y  	 s e t   s h o w L i s t   t o   f o l d e r s   i n   v i d _ M o v i e D i r  	 r e p e a t   w i t h   a S h o w   i n   s h o w L i s t  	 	 s e t   e p i s o d e L i s t   t o   f i l e s   i n   a S h o w  	 	 r e p e a t   w i t h   a V i d   i n   e p i s o d e L i s t  	 	 	 s e t   a L a b e l   t o   e p i s o d e N a m e   a s   t e x t  	 	 	 i f   a L a b e l   d o e s   n o t   e n d   w i t h   " . n f o "   t h e n   - - K e e p s   . n f o   f i l e s   i n   t h e i r   p l a c e  	 	 	 	 s e t   l e t t e r T i t l e   t o   l e t t e r N a m e   a s   t e x t  	 	 	 	 s e t   s h o w T i t l e   t o   s h o w N a m e   a s   t e x t  	 	 	 	 t r y  	 	 	 	 	 s e t   o l d L e t t e r   t o   l e t t e r T i t l e   - - t e s t   f o r   n u m b e r  	 	 	 	 	 s e t   l e t t e r T i t l e   t o   n u m b e r  	 	 	 	 	 s e t   n u m T e s t   t o   t r u e  	 	 	 	 	 s e t   l e t t e r T i t l e   t o   o l d L e t t e r  	 	 	 	 e n d   t r y  	 	 	 	 i f   n u m T e s t   i s   t r u e   t h e n  	 	 	 	 	 s e t   l e t t e r T i t l e   t o   m y   n u m b e r C o r r e c t i o n ( l e t t e r T i t l e )   - - c o n v e r t   n u m b e r   t o   " N u m "  	 	 	 	 e n d   i f  	 	 	 	 i f   n o t   ( e x i s t s   f o l d e r   ( a z M e n u N a m e   a s   s t r i n g )   i n   m o v i e D i r )   t h e n  	 	 	 	 	 s e t   a l p h a F o l d e r   t o   m a k e   n e w   f o l d e r   a t   m o v i e D i r   w i t h   p r o p e r t i e s   { n a m e : a z M e n u N a m e }  	 	 	 	 	 s e t   a l p h a F o l d e r   t o   f o l d e r   n a m e d   a z M e n u N a m e   i n   m o v i e D i r  	 	 	 	 e l s e  	 	 	 	 	 s e t   a l p h a F o l d e r   t o   f o l d e r   n a m e d   a z M e n u N a m e   i n   m o v i e D i r  	 	 	 	 e n d   i f  	 	 	 	 i f   n o t   ( e x i s t s   f o l d e r   ( l e t t e r T i t l e   a s   s t r i n g )   i n   a l p h a F o l d e r )   t h e n  	 	 	 	 	 m a k e   n e w   f o l d e r   a t   a l p h a F o l d e r   w i t h   p r o p e r t i e s   { n a m e : l e t t e r T i t l e }  	 	 	 	 	 s e t   l e t t e r F o l d e r   t o   f o l d e r   n a m e d   l e t t e r T i t l e   i n   a l p h a F o l d e r  	 	 	 	 e l s e  	 	 	 	 	 s e t   l e t t e r F o l d e r   t o   f o l d e r   n a m e d   l e t t e r T i t l e   i n   a l p h a F o l d e r  	 	 	 	 e n d   i f  	 	 	 	 i f   n o t   ( e x i s t s   f o l d e r   ( s h o w T i t l e   a s   s t r i n g )   i n   l e t t e r F o l d e r )   t h e n  	 	 	 	 	 m a k e   n e w   f o l d e r   a t   l e t t e r F o l d e r   w i t h   p r o p e r t i e s   { n a m e : s h o w T i t l e }  	 	 	 	 	 s e t   s h o w F o l d e r   t o   f o l d e r   n a m e d   s h o w T i t l e   i n   l e t t e r F o l d e r  	 	 	 	 e l s e  	 	 	 	 	 s e t   s h o w F o l d e r   t o   f o l d e r   n a m e d   s h o w T i t l e   i n   l e t t e r F o l d e r  	 	 	 	 e n d   i f  	 	 	 	 t r y   - - d o n e   t o   p r e v e n t   d u p l i c a t e s   f r o m   b e i n g   e n t e r e d  	 	 	 	 	 m o v e   a V i d   t o   s h o w F o l d e r  	 	 	 	 e n d   t r y  	 	 	 e n d   i f  	 	 e n d   r e p e a t  	 e n d   r e p e a t  	 s e t   a z L i s t   t o   f o l d e r s   i n   m o v i e D i r  	 s e t   c r e a t e d L e t t e r s   t o   { }   - -   u s e d   f o r   d e t e r m i n i n g   l e t t e r s   a t   t h e   e n d  	 r e p e a t   w i t h   a z M e n u   i n   a z L i s t  	 	 s e t   a z M e n u N a m e   t o   n a m e   o f   a z M e n u  	 	 s e t   l e t t e r L i s t   t o   f o l d e r s   i n   a z M e n u  	 	 r e p e a t   w i t h   a L e t t e r   i n   l e t t e r L i s t  	 	 	 s e t   l e t t e r N a m e   t o   n a m e   o f   a L e t t e r  	 	 	 c o p y   l e t t e r N a m e   t o   e n d   o f   c r e a t e d L e t t e r s   - - u s e d   f o r   l e t t e r s   a t   t h e   e n d  	 	 	 s e t   s h o w L i s t   t o   f o l d e r s   i n   a L e t t e r  	 	 	 r e p e a t   w i t h   a S h o w   i n   s h o w L i s t  	 	 	 	 s e t   s h o w N a m e   t o   n a m e   o f   a S h o w  	 	 	 	 s e t   e p i s o d e L i s t   t o   f i l e s   i n   a S h o w  	 	 	 	 r e p e a t   w i t h   a n E p i s o d e   i n   e p i s o d e L i s t  	 	 	 	 	 s e t   e p i s o d e N a m e   t o   n a m e   o f   a n E p i s o d e  	 	 	 	 	 i f   n a m e   e x t e n s i o n   o f   a n E p i s o d e  "`   " h t m l "   t h e n   - - a v o i d s   h t m l   f i l e s  	 	 	 	 	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " . "  	 	 	 	 	 	 	 s e t   t h e E x t e n s i o n   t o   " . "   &   n a m e   e x t e n s i o n   o f   a n E p i s o d e  	 	 	 	 	 	 	 s e t   e p i s o d e T i t l e   t o   t e x t   i t e m   1   o f   e p i s o d e N a m e  	 	 	 	 	 	 	 s e t   e p i s o d e T i t l e   t o   m y   r e p l a c e _ c h a r s ( e p i s o d e T i t l e ,   "   " ,   " _ " )   - - c h a n g e s   "   "   t o   " _ "  	 	 	 	 	 	 	 s e t   d o c N a m e   t o   e p i s o d e T i t l e   &   " . h t m l "  	 	 	 	 	 	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   { " " }  	 	 	 	 	 	 	 i f   { e x i s t s   f o l d e r   ( s h o w N a m e )   i n   v i d _ M o v i e D i r }   t h e n  	 	 	 	 	 	 	 	 s e t   a l t S h o w   t o   f o l d e r   ( s h o w N a m e )   i n   v i d _ M o v i e D i r  	 	 	 	 	 	 	 	 m o v e   a n E p i s o d e   t o   a l t S h o w  	 	 	 	 	 	 	 	 s e t   c u r r e n t L o c   t o   a l t S h o w   a s   t e x t  	 	 	 	 	 	 	 e l s e  	 	 	 	 	 	 	 	 t r y  	 	 	 	 	 	 	 	 	 s e t   a l t S h o w   t o   m a k e   n e w   f o l d e r   a t   v i d _ M o v i e D i r   w i t h   p r o p e r t i e s   { n a m e : s h o w N a m e }  	 	 	 	 	 	 	 	 e n d   t r y  	 	 	 	 	 	 	 	 m o v e   a n E p i s o d e   t o   a l t S h o w  	 	 	 	 	 	 	 	 s e t   c u r r e n t L o c   t o   a l t S h o w   a s   t e x t  	 	 	 	 	 	 	 e n d   i f  	 	 	 	 	 	 e n d   i f  	 	 	 	 	 s e t   p a r e n t F o l   t o   f o l d e r   o f   m o v i e D i r   - - u s e d   a s   a   d e l i m i t e r   ( h e h e h e )  	 	 	 	 	 s e t   p a r e n t N a m e   t o   n a m e   o f   p a r e n t F o l  	 	 	 	 	 s e t   p a t h N a m e   t o   c u r r e n t L o c   a s   t e x t  	 	 	 	 	 s e t   p a t h N a m e   t o   m y   r e p l a c e _ c h a r s ( p a t h N a m e ,   "   " ,   " _ " )   - - c h a n g e s   "   "   t o   " _ "  	 	 	 	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   p a r e n t N a m e   - - t h i s   a l l   p o i n t s  	 	 	 	 	 s e t   a l m o s t L o c   t o   t e x t   i t e m   2   o f   p a t h N a m e   - - t o   t h e   f i l e   f o r   t h e   H T M L  	 	 	 	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   e p i s o d e N a m e  	 	 	 	 	 s e t   n e a r l y L o c   t o   t e x t   i t e m   1   o f   a l m o s t L o c   &   e p i s o d e N a m e  	 	 	 	 	 s e t   f i l e L o c   t o   t e x t   ( ( o f f s e t   o f   " : "   i n   n e a r l y L o c )   +   1 )   t h r u   - 1   o f   n e a r l y L o c  	 	 	 	 	 s e t   f i l e L o c   t o   m y   r e p l a c e _ c h a r s ( f i l e L o c ,   " : " ,   " / " )  	 	 	 	 	 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . . . . # # # . . .  	 	 	 	 	 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . - - - - - - - - - - - . . # # . # # . .  	 	 	 	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   { " " }   - - - - - - - - - - - - - - - - - - - - - - - . . # # . . . # # .  	 	 	 	 	 t r y   - - p r e v e n t s   d u p l i c a t e s   f r o m   b e i n g   w r i t t e n - - - - - - - - - - - - - - - - - - - - - - - - - . . # # . . . . . # #  	 	 	 	 	 	 m a k e   n e w   f i l e   a t   a S h o w   w i t h   p r o p e r t i e s   { n a m e : d o c N a m e }   - - # # # # # #  	 	 	 	 	 e n d   t r y   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . # #  	 	 	 	 	 i f   { e x i s t s   f i l e   ( d o c N a m e )   i n   a S h o w }   t h e n   - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . # #  	 	 	 	 	 	 s e t   d F i l e   t o   f i l e   ( d o c N a m e )   i n   a S h o w  	 	 	 	 	 	 s e t   e p i s o d e F i l e   t o   d F i l e   a s   a l i a s  	 	 	 	 	 	 - - C o d e   f o r   e p i s o d e   h t m l   t e x t   f i l e !  	 	 	 	 	 	 - - y o u   s h o u l d   m o d i f y   t h i s   f o r   y o u r   o w n   c o d i n g   n e e d s   o f   c o u r s e 
 	 	 	 	 	 	 o      �.�. 0 remote_updater1  �0  �/     l x�!�-�,! Z  x�"#�+$" = x�%&% n  x'(' 1  {�*
�* 
bhit( o  x{�)�) 0 presubquery preSubQuery& m  �)) �**  Y e s# k  �v++ ,-, r  ��./. J  ���(�(  / o      �'�' 0 subtitlehtml subtitleHTML- 010 r  ��232 n ��454 1  ���&
�& 
txdl5 1  ���%
�% 
ascr3 o      �$�$ 0 oldtid oldTID1 676 r  ��898 m  ��:: �;;  .9 n     <=< 1  ���#
�# 
txdl= 1  ���"
�" 
ascr7 >?> r  ��@A@ n  ��BCB 2  ���!
�! 
citmC o  ��� �  0 
menuchoice 
menuChoiceA o      �� 0 
allchoices 
allChoices? DED X  �fF�GF Z  �aHI��H E  ��JKJ o  ���� 0 
menuchoice 
menuChoiceK o  ���� 0 anitem anItemI k  �]LL MNM r  ��OPO o  ���� 0 oldtid oldTIDP n     QRQ 1  ���
� 
txdlR 1  ���
� 
ascrN STS r  ��UVU n ��WXW 1  ���
� 
txdlX 1  ���
� 
ascrV o      �� 0 oldtid oldTIDT YZY r  ��[\[ m  ��]] �^^    - -  \ n     _`_ 1  ���
� 
txdl` 1  ���
� 
ascrZ aba r  ��cdc n  ��efe 4 ���g
� 
citmg m  ���� f o  ���� 0 anitem anItemd o      �� 0 
theheading 
theHeadingb hih r  �jkj n  �lml 4 ��n
� 
citmn m  �� m o  ���� 0 anitem anItemk o      �
�
 0 namelang nameLangi opo r  	qrq o  	�	�	 0 oldtid oldTIDr n     sts 1  �
� 
txdlt 1  �
� 
ascrp uvu r   wxw n yzy 1  �
� 
txdlz 1  �
� 
ascrx o      �� 0 oldtid oldTIDv {|{ r  !,}~} m  !$ ���  .~ n     ��� 1  '+�
� 
txdl� 1  $'�
� 
ascr| ��� r  -T��� b  -P��� b  -L��� b  -H��� b  -D��� b  -@��� b  -<��� b  -8��� b  -4��� m  -0�� ��� � < t r a c k   k i n d = ' s u b t i t l e s '   s r c = ' . . / . . / . . / . . / v i d e o s / s u b t i t l e s / "   &   e p i s o d e T i t l e   &   � 
 	 	 	 " .� o  03�� 0 namelang nameLang� o  47� �  0 subtypequery subTypeQuery� m  8;�� ���  '   s r c l a n g = '� o  <?���� 0 
theheading 
theHeading� m  @C�� ���  '   l a b e l = '� l 
DG������ o  DG���� 0 namelang nameLang��  ��  � m  HK�� ���  '   / >� o  LO��
�� 
ret � o      ���� 0 	totallist 	totalList� ���� s  U]��� o  UX���� 0 	totallist 	totalList� n      ���  ;  [\� o  X[���� 0 subtitlehtml subtitleHTML��  �  �  � 0 anitem anItemG o  ������ 0 
allchoices 
allChoicesE ��� l gg��������  ��  ��  � ���� r  gv��� b  gr��� b  gn��� m  gj�� ��� s e t   e p i s o d e T e x t   t o   " < ! D O C T Y P E   h t m l > 
 < h t m l > 	 	       
         < h e a d > 
                 < t i t l e > "   &   s h o w N a m e   &   " < / t i t l e > 
                 < l i n k   h r e f = ' h t t p : / / v j s . z e n c d n . n e t / c / v i d e o - j s . c s s '   r e l = ' s t y l e s h e e t ' > 
                 < s c r i p t   s r c = ' h t t p : / / v j s . z e n c d n . n e t / c / v i d e o . j s ' > < / s c r i p t > 
                 < s t y l e > 
                         b o d y   { 
                                 b a c k g r o u n d - c o l o r :   # 0 0 0 0 0 0 
                         } 
                         . b u t t o n   { 
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
                 < / s t y l e > 
         < / h e a d >                 
         < b o d y > 
                 < v i d e o   i d = ' e x a m p l e _ v i d e o _ 1 '   c l a s s = ' v i d e o - j s   v j s - d e f a u l t - s k i n '     
             c o n t r o l s   p r e l o a d = ' a u t o '   w i d t h = ' 1 0 8 0 '   h e i g h t = ' 7 2 0 '   a u t o p l a y   
             d a t a - s e t u p = ' { \ " e x a m p l e _ o p t i o n \ " : t r u e } ' >     
             < s o u r c e   s r c = ' . . / . . / . . / . . / "   &   f i l e L o c   &   " '   t y p e = ' v i d e o / m p 4 ' / > 
             < s o u r c e   s r c = ' . . / . . / . . / . . / "   &   f i l e L o c   &   " '   t y p e = ' v i d e o / o g g ' / > 
             < s o u r c e   s r c = ' . . / . . / . . / . . / "   &   f i l e L o c   &   " '   t y p e = ' v i d e o / w e b m '   / > 
            � o  jm���� 0 subtitlehtml subtitleHTML� m  nq�� ���
 
                     < / v i d e o > 
                     < b u t t o n   i d = ' f u l l s c r e e n v i d '   c l a s s = ' b u t t o n ' > F u l l s c r e e n   v i d e o < / b u t t o n > 
                     < s c r i p t   t y p e = ' t e x t / j a v a s c r i p t ' > 
                             ( f u n c t i o n ( w i n d o w ,   d o c u m e n t ) { 
 	 	 	 v a r   $   =   f u n c t i o n ( s e l e c t o r , c o n t e x t ) { r e t u r n ( c o n t e x t | | d o c u m e n t ) . q u e r y S e l e c t o r ( s e l e c t o r ) } ; 
 	 	 	 
 	 	 	 v a r   v i d e o     =   $ ( \ " v i d e o \ " ) , 
 	 	 	 	 i f r a m e   =   $ ( \ " i f r a m e \ " ) , 
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
 	 	 	 v a r   f u l l s c r e e n v i d e o   =   f u l l s c r e e n ( d o c u m e n t . c r e a t e E l e m e n t ( \ " v i d e o \ " ) ) ; 
 	 	 	 
 	 	 	 / /   W e b k i t   u s e s   ' r e q u e s t F u l l S c r e e n '   f o r   n o n   v i d e o   e l e m e n t s 
 	 	 	 v a r   f u l l s c r e e n o t h e r   =   f u l l s c r e e n ( d o c u m e n t . c r e a t e E l e m e n t ( \ " i f r a m e \ " ) ) ; 
 
 	 	 	 i f ( ! f u l l s c r e e n )   { 
 	 	 	 	 a l e r t ( \ " F u l l s c r e e n   w o n ' t   w o r k ,   p l e a s e   m a k e   s u r e   y o u ' r e   u s i n g   a   b r o w s e r   t h a t   s u p p o r t s   i t   a n d   y o u   h a v e   e n a b l e d   t h e   f e a t u r e \ " ) ; 
 	 	 	 	 r e t u r n ; 
 	 	 	 } 
 	 	 	 
 	 	 	 / /   S h o u l d   a d d   p r e f i x e d   e v e n t s   f o r   p o t e n t i a l   m s / o   o r   u n p r e f i x e d   s u p p o r t   t o o 
 	 	 	 v i d e o . a d d E v e n t L i s t e n e r ( \ " w e b k i t f u l l s c r e e n c h a n g e \ " , f u n c t i o n ( ) { 
 	 	 	 	 c o n s o l e . l o g ( d o c u m e n t . w e b k i t I s F u l l S c r e e n ) ; 
 	 	 	 } ,   f a l s e ) ; 
 	 	 	 v i d e o . a d d E v e n t L i s t e n e r ( \ " m o z f u l l s c r e e n c h a n g e \ " , f u n c t i o n ( ) { 
 	 	 	 	 c o n s o l e . l o g ( d o c u m e n t . m o z F u l l S c r e e n ) ; 
 	 	 	 } ,   f a l s e ) ; 
 
 	 	 	 $ ( \ " # f u l l s c r e e n v i d \ " ) . a d d E v e n t L i s t e n e r ( \ " c l i c k \ " ,   f u n c t i o n ( ) { 
 	 	 	 	 / /   T h e   t e s t   r e t u r n s   a   s t r i n g   s o   w e   c a n   e a s i l y   c a l l   i t   o n   a   c l i c k   e v e n t 
 	 	 	 	 v i d e o [ f u l l s c r e e n v i d e o ] ( ) ; 
 	 	 	 } ,   f a l s e ) ; 
 	 	 	 $ ( \ " # f u l l s c r e e n i f r a m e \ " ) . a d d E v e n t L i s t e n e r ( \ " c l i c k \ " ,   f u n c t i o n ( ) { 
 	 	 	 	 / /   i f r a m e   f u l l s c r e e n   a n d   n o n   v i d e o   e l e m e n t s   i n   w e b k i t   u s e   r e q u e s t   o v e r   e n t e r 
 	 	 	 	 i f r a m e [ f u l l s c r e e n o t h e r ] ( ) ; 
 	 	 	 } ,   f a l s e ) ; 
 	 	 } ) ( t h i s ,   t h i s . d o c u m e n t ) ; 
                         < / s c r i p t > 
             < / b o d y > 
     < / h t m l > "� o      ���� 0 remote_updater2  ��  �+  $ r  y���� m  y|�� ���> s e t   e p i s o d e T e x t   t o   " < ! D O C T Y P E   h t m l > 
 < h t m l > 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	       
         < h e a d > 
 	 < t i t l e > "   &   s h o w N a m e   &   " < / t i t l e > 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
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
                     < s o u r c e   s r c = ' . . / . . / . . / . . / "   &   f i l e L o c   &   " '   t y p e = ' v i d e o / m p 4 ' / > 
                     < s o u r c e   s r c = ' . . / . . / . . / . . / "   &   f i l e L o c   &   " '   t y p e = ' v i d e o / o g g ' / > 
                     < s o u r c e   s r c = ' . . / . . / . . / . . / "   &   f i l e L o c   &   " '   t y p e = ' v i d e o / w e b m '   / > 
     < / v i d e o > 
     < b u t t o n   i d = ' f u l l s c r e e n v i d '   c l a s s = ' b u t t o n ' > F u l l s c r e e n   v i d e o < / b u t t o n > 
 < / d i v > 
     < s c r i p t > 
           ( f u n c t i o n ( w i n d o w ,   d o c u m e n t ) { 
 	 	 	 v a r   $   =   f u n c t i o n ( s e l e c t o r , c o n t e x t ) { r e t u r n ( c o n t e x t | | d o c u m e n t ) . q u e r y S e l e c t o r ( s e l e c t o r ) } ; 
 	 	 	 
 	 	 	 v a r   v i d e o     =   $ ( \ " v i d e o \ " ) , 
 	 	 	 	 i f r a m e   =   $ ( \ " i f r a m e \ " ) , 
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
 	 	 	 v a r   f u l l s c r e e n v i d e o   =   f u l l s c r e e n ( d o c u m e n t . c r e a t e E l e m e n t ( \ " v i d e o \ " ) ) ; 
 	 	 	 
 	 	 	 / /   W e b k i t   u s e s   ' r e q u e s t F u l l S c r e e n '   f o r   n o n   v i d e o   e l e m e n t s 
 	 	 	 v a r   f u l l s c r e e n o t h e r   =   f u l l s c r e e n ( d o c u m e n t . c r e a t e E l e m e n t ( \ " i f r a m e \ " ) ) ; 
 
 	 	 	 i f ( ! f u l l s c r e e n )   { 
 	 	 	 	 a l e r t ( \ " F u l l s c r e e n   w o n ' t   w o r k ,   p l e a s e   m a k e   s u r e   y o u ' r e   u s i n g   a   b r o w s e r   t h a t   s u p p o r t s   i t   a n d   y o u   h a v e   e n a b l e d   t h e   f e a t u r e \ " ) ; 
 	 	 	 	 r e t u r n ; 
 	 	 	 } 
 	 	 	 
 	 	 	 / /   S h o u l d   a d d   p r e f i x e d   e v e n t s   f o r   p o t e n t i a l   m s / o   o r   u n p r e f i x e d   s u p p o r t   t o o 
 	 	 	 v i d e o . a d d E v e n t L i s t e n e r ( \ " w e b k i t f u l l s c r e e n c h a n g e \ " , f u n c t i o n ( ) { 
 	 	 	 	 c o n s o l e . l o g ( d o c u m e n t . w e b k i t I s F u l l S c r e e n ) ; 
 	 	 	 } ,   f a l s e ) ; 
 	 	 	 v i d e o . a d d E v e n t L i s t e n e r ( \ " m o z f u l l s c r e e n c h a n g e \ " , f u n c t i o n ( ) { 
 	 	 	 	 c o n s o l e . l o g ( d o c u m e n t . m o z F u l l S c r e e n ) ; 
 	 	 	 } ,   f a l s e ) ; 
 
 	 	 	 $ ( \ " # f u l l s c r e e n v i d \ " ) . a d d E v e n t L i s t e n e r ( \ " c l i c k \ " ,   f u n c t i o n ( ) { 
 	 	 	 	 / /   T h e   t e s t   r e t u r n s   a   s t r i n g   s o   w e   c a n   e a s i l y   c a l l   i t   o n   a   c l i c k   e v e n t 
 	 	 	 	 v i d e o [ f u l l s c r e e n v i d e o ] ( ) ; 
 	 	 	 } ,   f a l s e ) ; 
 	 	 	 $ ( \ " # f u l l s c r e e n i f r a m e \ " ) . a d d E v e n t L i s t e n e r ( \ " c l i c k \ " ,   f u n c t i o n ( ) { 
 	 	 	 	 / /   i f r a m e   f u l l s c r e e n   a n d   n o n   v i d e o   e l e m e n t s   i n   w e b k i t   u s e   r e q u e s t   o v e r   e n t e r 
 	 	 	 	 i f r a m e [ f u l l s c r e e n o t h e r ] ( ) ; 
 	 	 	 } ,   f a l s e ) ; 
 	 	 } ) ( t h i s ,   t h i s . d o c u m e n t ) ; 
         < / s c r i p t > 
 < / b o d y > 
 < / h t m l > "� o      ���� 0 remote_updater2  �-  �,    ��� l �������� r  ����� m  ���� ���� 
 i g n o r i n g   a p p l i c a t i o n   r e s p o n s e s  	 	 	 	 	 	 	 s e t   e p i s o d e F i l e   t o   m y   w r i t e C o d e ( e p i s o d e F i l e ,   e p i s o d e T e x t )  	 	 	 	 	 	 e n d   i g n o r i n g  	 	 	 	 	 e n d   i f  	 	 	 	 e n d   r e p e a t  	 	 	 	 s e t   d o c N a m e   t o   s h o w N a m e   &   " . h t m l "  	 	 	 	 s e t   a l t S h o w N a m e   t o   s h o w N a m e   a s   t e x t  	 	 	 	 s e t   a l t S h o w N a m e   t o   m y   r e p l a c e _ c h a r s ( a l t S h o w N a m e ,   " _ " ,   "   " )  	 	 	 	 t r y  	 	 	 	 	 m a k e   n e w   f i l e   a t   a L e t t e r   w i t h   p r o p e r t i e s   { n a m e : d o c N a m e }  	 	 	 	 e n d   t r y  	 	 	 	 i f   { e x i s t s   f i l e   ( d o c N a m e )   i n   a L e t t e r }   t h e n  	 	 	 	 	 s e t   d F i l e   t o   f i l e   ( d o c N a m e )   i n   a L e t t e r  	 	 	 	 	 s e t   e p i s o d e F i l e   t o   d F i l e   a s   a l i a s  	 	 	 	 	 s e t   l i s t P a r t 1   t o   " < l i > < a   h r e f = ' "   - - a u t o   g e n e r a t e   H T M L   l i s t s - - - - - . # # # # # # # . . .  	 	 	 	 	 s e t   l i s t P a r t 6   t o   " ' > "   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . # # . 	      	 	 	 	 	 s e t   l i s t P a r t 8   t o   " < / a > < / l i > "   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . # # . 	  	 	 	 	 	 s e t   s h o w H t m l L i s t   t o   { }   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # # # # # # . . . .  	 	 	 	 	 s e t   a l l F i l e s   t o   e v e r y   f i l e   i n   a S h o w   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . # # .  	 	 	 	 	 r e p e a t   w i t h   a F i l e   i n   a l l F i l e s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . # # .  	 	 	 	 	 	 i f   n a m e   e x t e n s i o n   o f   a F i l e   i s   " h t m l "   t h e n   - - - - - - - - - - - - - - - - - - - . # # # # # # # . . . . 	  	 	 	 	 	 	 	 s e t   h t m l F i l e   t o   n a m e   o f   a F i l e   a s   t e x t  	 	 	 	 	 	 	 s e t   t r u e S e a s o n N a m e   t o   t e x t   1   t h r u   ( ( o f f s e t   o f   " . "   i n   h t m l F i l e )   -   1 )   o f   h t m l F i l e  	 	 	 	 	 	 	 s e t   t r u e S e a s o n N a m e   t o   m y   r e p l a c e _ c h a r s ( t r u e S e a s o n N a m e ,   " _ " ,   "   " )  	 	 	 	 	 	 	 s e t   t o t a l L i s t   t o   l i s t P a r t 1   &   " . . / . . / . . / M o v i e s "   &   " / "   &   a z M e n u N a m e   &   " / "   &   l e t t e r N a m e   &   " / "   &   s h o w N a m e   &   " / "   &   h t m l F i l e   &   l i s t P a r t 6   &   t r u e S e a s o n N a m e   &   l i s t P a r t 8  	 	 	 	 	 	 	 c o p y   t o t a l L i s t   t o   e n d   o f   s h o w H t m l L i s t  	 	 	 	 	 	 e n d   i f  	 	 	 	 	 e n d   r e p e a t  	 	 	 	 	 s e t   e p i s o d e T e x t   t o   " < ! D o c t y p e   h t m l > 
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
                         w i d t h : 5 0 0 p x ; 
                         l i n e - h e i g h t : 2 0 p x ; 
                         f o n t - s i z e : 1 9 p x ; 
                 } 
 
                 . S E _ n a v   l i   a   { 
                         t e x t - d e c o r a t i o n : n o n e ; 
                         d i s p l a y : b l o c k ; 
                         c o l o r : # F F F F F F ; 
                         p a d d i n g : 2 p x ; 
                         f o n t - s i z e : 1 3 ; 
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
                         < l i > < a   h r e f = ' . . / . . / . . / M o v i e s / A - Z m e n u / "   &   l e t t e r N a m e   &   " . h t m l ' >   . . < / a > < / l i > 
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
                         c o l o r : # 7 0 8 0 9 0 ; p o s i t i o n : a b s o l u t e ; t o p : 2 ; l e f t : 2 0 p x ; h e i g h t : 1 0 0 p x ; w i d t h : 6 0 0 p x ' > "   &   a l t S h o w N a m e   &   " < / h e a d e r >                 
                 < u l   c l a s s = ' S E _ n a v '   s t y l e = ' p o s i t i o n : a b s o l u t e ; t o p : 1 1 0 p x ; ' > "   &   �  	 	 	 	 	 	 s h o w H t m l L i s t   &   " 
 	 	 < / u l > 
         < / d i v > 
 < / b o d y > 
 < / h t m l > "  	 	 	 	 	 i g n o r i n g   a p p l i c a t i o n   r e s p o n s e s  	 	 	 	 	 	 s e t   e p i s o d e F i l e   t o   m y   w r i t e C o d e ( e p i s o d e F i l e ,   e p i s o d e T e x t )  	 	 	 	 	 e n d   i g n o r i n g  	 	 	 	 e n d   i f  	 	 	 	 s e t   d o c N a m e   t o   l e t t e r N a m e   &   " . h t m l "  	 	 	 	 t r y  	 	 	 	 	 m a k e   n e w   f i l e   a t   ( a z M e n u )   w i t h   p r o p e r t i e s   { n a m e : d o c N a m e }  	 	 	 	 e n d   t r y  	 	 	 	 i f   { e x i s t s   f i l e   ( d o c N a m e )   i n   a z M e n u }   t h e n  	 	 	 	 	 s e t   d F i l e   t o   f i l e   ( d o c N a m e )   i n   a z M e n u   - - 	 	 	 - - - - - . . # # # # # # . . .  	 	 	 	 	 s e t   e p i s o d e F i l e   t o   d F i l e   a s   a l i a s   - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . # # .  	 	 	 	 	 s e t   l i s t P a r t 1   t o   " < l i > < a   h r e f = ' "   - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . . . . . .  	 	 	 	 	 s e t   l i s t P a r t 6   t o   " ' > "   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . . . . . .  	 	 	 	 	 s e t   l i s t P a r t 8   t o   " < / a > < / l i > "   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . . . . . . .  	 	 	 	 	 s e t   l e t t e r H t m l L i s t   t o   { }   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . # # . .  	 	 	 	 	 s e t   a l l F i l e s   t o   e v e r y   f i l e   i n   a L e t t e r   - - - - - - - - - - - - - - - - - - - - - - - - . # # # # # # .   . . .  	 	 	 	 	 r e p e a t   w i t h   a F i l e   i n   a l l F i l e s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  	 	 	 	 	 	 i f   n a m e   e x t e n s i o n   o f   a F i l e   i s   " h t m l "   t h e n  	 	 	 	 	 	 	 s e t   h t m l F i l e   t o   n a m e   o f   a F i l e   a s   t e x t  	 	 	 	 	 	 	 s e t   t r u e S h o w N a m e   t o   t e x t   1   t h r u   ( ( o f f s e t   o f   " . "   i n   h t m l F i l e )   -   1 )   o f   h t m l F i l e  	 	 	 	 	 	 	 s e t   t r u e S h o w N a m e   t o   m y   r e p l a c e _ c h a r s ( t r u e S h o w N a m e ,   " _ " ,   "   " )  	 	 	 	 	 	 	 s e t   t o t a l L i s t   t o   l i s t P a r t 1   &   " . . / . . / M o v i e s "   &   " / "   &   a z M e n u N a m e   &   " / "   &   l e t t e r N a m e   &   " / "   &   h t m l F i l e   &   l i s t P a r t 6   &   t r u e S h o w N a m e   &   l i s t P a r t 8  	 	 	 	 	 	 	 c o p y   t o t a l L i s t   t o   e n d   o f   l e t t e r H t m l L i s t  	 	 	 	 	 	 e n d   i f  	 	 	 	 	 e n d   r e p e a t  	 	 	 	 	 i f   l e t t e r N a m e   a s   s t r i n g   i s   " - "   t h e n  	 	 	 	 	 	 s e t   l e t t e r N a m e   t o   " # "   a s   s t r i n g  	 	 	 	 	 e n d   i f  	 	 	 	 	 s e t   e p i s o d e T e x t   t o   " < ! D o c t y p e   h t m l > 
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
                         w i d t h : 5 0 0 p x ; 
                         l i n e - h e i g h t : 2 0 p x ; 
                         f o n t - s i z e : 1 9 p x ; 
                 } 
 
                 . S E _ n a v   l i   a   { 
                         t e x t - d e c o r a t i o n : n o n e ; 
                         d i s p l a y : b l o c k ; 
                         c o l o r : # F F F F F F ; 
                         p a d d i n g : 2 p x ; 
                         f o n t - s i z e : 1 3 ; 
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
                         c o l o r : # 7 0 8 0 9 0 ; p o s i t i o n : a b s o l u t e ; t o p : 2 ; l e f t : 2 0 p x ; h e i g h t : 1 0 0 p x ; w i d t h : 6 0 0 p x ' > "   &   l e t t e r N a m e   &   " < / h e a d e r >                 
                 < u l   c l a s s = ' S E _ n a v '   s t y l e = ' p o s i t i o n : a b s o l u t e ; t o p : 1 1 0 p x ; ' > "   &   �  	 	 	 	 	 	 l e t t e r H t m l L i s t   &   " 
 	 	   < / u l > 
         < / d i v > 
 < / b o d y > 
 < / h t m l > "  	 	 	 	 	 i g n o r i n g   a p p l i c a t i o n   r e s p o n s e s  	 	 	 	 	 	 s e t   e p i s o d e F i l e   t o   m y   w r i t e C o d e ( e p i s o d e F i l e ,   e p i s o d e T e x t )  	 	 	 	 	 e n d   i g n o r i n g  	 	 	 	 e n d   i f  	 	 	 e n d   r e p e a t  	 	 	 s e t   d o c N a m e   t o   a z M e n u N a m e   &   " . h t m l "   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # # # # # # # .  	 	 	 t r y   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . . . # #  	 	 	 	 m a k e   n e w   f i l e   a t   ( m o v i e D i r )   w i t h   p r o p e r t i e s   { n a m e : d o c N a m e }   - - - - - # # . . . . . . . . . . . . . . . # #  	 	 	 e n d   t r y   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . . . . . . # #  	 	 	 i f   { e x i s t s   f i l e   ( d o c N a m e )   i n   m o v i e D i r }   t h e n   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . . . . # #  	 	 	 	 s e t   d F i l e   t o   f i l e   ( d o c N a m e )   i n   m o v i e D i r   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . . . # #  	 	 	 	 s e t   e p i s o d e F i l e   t o   d F i l e   a s   a l i a s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # # # # # # # .  	 	 	 	 s e t   e p i s o d e T e x t   t o   " < ! D o c t y p e   h t m l > 
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
 < / h t m l > "  	 	 	 	 i g n o r i n g   a p p l i c a t i o n   r e s p o n s e s  	 	 	 	 	 s e t   e p i s o d e F i l e   t o   m y   w r i t e C o d e ( e p i s o d e F i l e ,   e p i s o d e T e x t )  	 	 	 	 e n d   i g n o r i n g  	 	 	 e n d   i f  	 	 e n d   r e p e a t  	 e n d   r e p e a t  	 s e t   a l l L e t t e r s   t o   " - "   &   " A "   &   " B "   &   " C "   &   " D "   &   " E "   &   " F "   &   " G "   &   " H "   &   " I "   &   " J "   &   " K "   &   " L "   &   " M "   &   " N "   &   " O "   &   " P "   &   " Q "   &   " R "   &   " S "   &   " T "   &   " U "   &   " V "   &   " W "   &   " X "   &   " Y "   &   " Z "  	 s e t   a l l I t e m s   t o   e v e r y   c h a r a c t e r   o f   a l l L e t t e r s   a s   s t r i n g  	 r e p e a t   w i t h   a n I t e m   i n   a l l I t e m s  	 	 i f   c r e a t e d L e t t e r s   d o e s   n o t   c o n t a i n   a n I t e m   t h e n  	 	 	 s e t   l e t t e r N a m e   t o   a n I t e m  	 	 	 s e t   d o c N a m e   t o   l e t t e r N a m e   &   " . h t m l "  	 	 	 t r y  	 	 	 	 m a k e   n e w   f i l e   a t   ( a z M e n u )   w i t h   p r o p e r t i e s   { n a m e : d o c N a m e }  	 	 	 e n d   t r y  	 	 	 t r y  	 	 	 	 i f   { e x i s t s   f i l e   ( d o c N a m e )   i n   a z M e n u }   t h e n  	 	 	 	 	 s e t   d F i l e   t o   f i l e   ( d o c N a m e )   i n   a z M e n u   - - 	 	 	 	 d 8 8 8 8  	 	 	 	 	 s e t   e p i s o d e F i l e   t o   d F i l e   a s   a l i a s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - d 8 P 8 8 8      	 	 	 	 	 s e t   l e t t e r H t m l L i s t   t o   " "  	 	 	 	 	 i f   l e t t e r N a m e   a s   s t r i n g   i s   " - "   t h e n  	 	 	 	 	 	 s e t   l e t t e r N a m e   t o   " # "   a s   s t r i n g  	 	 	 	 	 e n d   i f  	 	 	 	 	 s e t   e p i s o d e T e x t   t o   " < ! D o c t y p e   h t m l > 
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
                         t e x t - d e c o r a t i o n : n o n e ; 
                         d i s p l a y : b l o c k ; 
                         c o l o r : # F F F F F F ; 
                         p a d d i n g : 2 p x ; 
                         f o n t - s i z e : 1 3 ; 
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
                         c o l o r : # 7 0 8 0 9 0 ; p o s i t i o n : a b s o l u t e ; t o p : 2 ; l e f t : 2 0 p x ; h e i g h t : 1 0 0 p x ; w i d t h : 6 0 0 p x ' > "   &   l e t t e r N a m e   &   " < / h e a d e r >                 
                 < u l   c l a s s = ' S E _ n a v '   s t y l e = ' p o s i t i o n : a b s o l u t e ; t o p : 1 2 5 p x ; ' > "   &   �  	 	 	 	 	 	 l e t t e r H t m l L i s t   &   " 
 	 	   < / u l > 
         < / d i v > 
 < / b o d y > 
 < / h t m l > "  	 	 	 	 	 i g n o r i n g   a p p l i c a t i o n   r e s p o n s e s  	 	 	 	 	 	 s e t   e p i s o d e F i l e   t o   m y   w r i t e C o d e ( e p i s o d e F i l e ,   e p i s o d e T e x t )  	 	 	 	 	 e n d   i g n o r i n g  	 	 	 	 e n d   i f   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8 8 8 8 8 8 8  	 	 	 e n d   t r y  	 	 e n d   i f  	 e n d   r e p e a t   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8  	  	  e n d   t e l l  - - - - - - - - - - - - - - - - - - - - - - - - - - - -   ( *   T h i s   s c r i p t   w i l l   r e t r i e v e   t h e   l i s t   o f   t v   s h o w s   o n   t h e   s e r v e r   ( u s i n g   t h e   M y V i d e o s 6 0 . d b )   a n d   b u i l d   a l l   t h e   n e c c e s s a r y   H T M L   p a g e s   f o r   t h e   w e b s i t e .     I n s t e a d   o f   j u s t   u p d a t i n g   t h e   s i t e ,   i t   r e b u i l d s   a l l   t h e   w e b p a g e s   f r o m   s c r a t c h .     I t ' s   d i f f i c u l t   t o   u p d a t e   w i t h o u t   r e b u i d i n g   e v e r y t h i n g   b e c a u s e   m a n y   H T M L   p a g e s   d e p e n d   u p o n   o t h e r   p a g e s   s o   d e l e t i n g   a n d   a d d i n g   o n l y   s e l e c t   p a g e s   w i l l   l e a v e   s o m e   w e b   p a g e s   w i t h   d e a d   l i n k s   o r   n e w   c o n t e n t   t h a t   h a s   n o   l i n k .     I f   y o u   c a n   d e s i g n   a   m e t h o d   t o   o n l y   u p d a t e   a   m i n i m a l   n u m b e r   o f   p a g e s ,   t h a t   s h o u l d   s p e e d   u p   t h e   u p d a t e   p r o c e s s   s i g n i f i c a n t l y . 
 * )   - - b e l o w   i s   t h e   s e c t i o n   f o r   t h e   n e w   d a t a b a s e   f o r   T V   S h o w s  s e t   l o c   t o   s p a c e   &   " ~ / l i b r a r y / ' a p p l i c a t i o n   s u p p o r t ' / M o i r a i _ w e b _ B u i l d e r / M y V i d e o s 6 0 . d b "   &   s p a c e  s e t   h e a d   t o   " s q l i t e 3   - l i n e "   &   l o c   &   q u o t e   - -   t h e   " - l i n e "   o p t i o n   o u t p u t s   t h e   c o l u m n   d a t a   a n d   h e a d i n g   o n e   l i n e   a t   a   t i m e   -   u s e f u l   f o r   p a r s i n g   t h e   o u t p u t   f o r   p a r t i c u l a r   d a t a   i t e m s .  s e t   t a i l   t o   q u o t e  s e t   A l l   t o   " s e l e c t   c 1 8   f r o m   e p i s o d e ; "   - - r e t r i e v e s   t h e   t i t l e s   f r o m   t h e   t v s h o w   t a b l e  s e t   t v s h o w T a b l e   t o   d o   s h e l l   s c r i p t   h e a d   &   A l l   &   t a i l  s e t   t v s h o w T a b l e   t o   t v s h o w T a b l e   a s   t e x t  s e t   a l l P a r a   t o   e v e r y   p a r a g r a p h   i n   t v s h o w T a b l e  s e t   n e w T i t l e L i s t   t o   { }  r e p e a t   w i t h   a P a r a   i n   a l l P a r a   - - l o o p   f o r   T V   S h o w   t i t l e s !  	 i f   ( t e x t   o f   a P a r a )  "`   " "   t h e n  	 	 s e t   a T i t l e   t o   t e x t   ( ( o f f s e t   o f   "   c 1 8   =   "   i n   a P a r a )   +   7 )   t h r u   - 1   o f   a P a r a  	 	 c o p y   a T i t l e   t o   e n d   o f   n e w T i t l e L i s t  	 e n d   i f  e n d   r e p e a t  s e t   n e w T i t l e L i s t   t o   m y   r e p l a c e _ c h a r s ( n e w T i t l e L i s t ,   " =   " ,   r e t u r n )   - - c r e a t e s   v e r i t c a l   l i s t  t e l l   a p p l i c a t i o n   " F i n d e r "  	 s e t   M o i r a i _ d i r   t o   ( H D _ n a m e   &   " : U s e r s : "   &   u s e r N a m e   &   " : L i b r a r y : A p p l i c a t i o n   S u p p o r t : M o i r a i _ w e b _ b u i l d e r : " )   a s   a l i a s  	 i f   n o t   ( e x i s t s   f i l e   ( " N e w t v s h o w _ d a t a "   a s   s t r i n g )   i n   M o i r a i _ d i r )   t h e n  	 	 m a k e   n e w   f i l e   a t   M o i r a i _ d i r   w i t h   p r o p e r t i e s   { n a m e : " N e w t v s h o w _ d a t a " }  	 e n d   i f  	 s e t   t v s h o w _ d a t a   t o   ( H D _ n a m e   &   " : U s e r s : "   &   u s e r N a m e   &   " : L i b r a r y : A p p l i c a t i o n   S u p p o r t : M o i r a i _ w e b _ b u i l d e r : N e w t v s h o w _ d a t a : " )  	 m y   w r i t e _ t o _ f i l e ( n e w T i t l e L i s t ,   t v s h o w _ d a t a ,   f a l s e )   - - f a l s e   w i l l   e r a s e   p r e v i o u s   c o n t e n t s   f r o m   t h e   t e x t   f i l e  	 s e t   t v s h o w _ d a t a   t o   t v s h o w _ d a t a   a s   s t r i n g  	 s e t   t h e   o p e n _ t v s h o w _ d a t a   t o   o p e n   f o r   a c c e s s   f i l e   t v s h o w _ d a t a   w i t h   w r i t e   p e r m i s s i o n  	 s e t   n e w I n f o   t o   r e a d   f i l e   t v s h o w _ d a t a   u s i n g   d e l i m i t e r   " =   "  	 c l o s e   a c c e s s   t h e   o p e n _ t v s h o w _ d a t a  	 s e t   n e w I n f o T e x t   t o   n e w I n f o   a s   t e x t  	 - - L e t s   a d d   H T M L   p a g e s   n o w  	  	 s e t   t v s h o w _ d a t a   t o   ( H D _ n a m e   &   " : U s e r s : "   &   u s e r N a m e   &   " : L i b r a r y : A p p l i c a t i o n   S u p p o r t : M o i r a i _ w e b _ b u i l d e r : N e w t v s h o w _ d a t a : " )   a s   a l i a s  	 s e t   m o i r a i D i r   t o   f o l d e r   o f   t v s h o w _ d a t a  	 s e t   A p p _ f o l d e r   t o   f o l d e r   ( " S i t e s " )   i n   m o i r a i D i r  	 i f   n o t   ( e x i s t s   f o l d e r   ( " T V _ S h o w s "   a s   s t r i n g )   i n   A p p _ f o l d e r )   t h e n   - - c h e c k   f o r   f o l d e r s  	 	 m a k e   n e w   f o l d e r   a t   A p p _ f o l d e r   w i t h   p r o p e r t i e s   { n a m e : " T V _ S h o w s " }  	 e n d   i f  	 s e t   t v s h o w D i r   t o   f o l d e r   ( " T V _ S h o w s "   a s   s t r i n g )   i n   A p p _ f o l d e r  	 i f   ( c o u n t   o f   i t e m s   i n   t v s h o w D i r )   i s   g r e a t e r   t h a n   1   t h e n   - - c l e a r   f o l d e r s  	 	 d e l e t e   e v e r y   i t e m   i n   t v s h o w D i r  	 e n d   i f  	 i f   n o t   ( e x i s t s   f o l d e r   ( " v i d e o s "   a s   s t r i n g )   i n   A p p _ f o l d e r )   t h e n  	 	 m a k e   n e w   f o l d e r   a t   A p p _ f o l d e r   w i t h   p r o p e r t i e s   { n a m e : " v i d e o s " }  	 e n d   i f  	 s e t   v i d e o D i r   t o   f o l d e r   ( " v i d e o s "   a s   s t r i n g )   i n   A p p _ f o l d e r  	 i f   n o t   ( e x i s t s   f o l d e r   ( " T V _ S h o w s "   a s   s t r i n g )   i n   v i d e o D i r )   t h e n  	 	 m a k e   n e w   f o l d e r   a t   v i d e o D i r   w i t h   p r o p e r t i e s   { n a m e : " T V _ S h o w s " }  	 e n d   i f  	 s e t   v i d _ T v s h o w D i r   t o   f o l d e r   ( " T V _ S h o w s "   a s   s t r i n g )   i n   v i d e o D i r  	 i f   ( c o u n t   o f   i t e m s   i n   v i d _ T v s h o w D i r )   i s   g r e a t e r   t h a n   1   t h e n  	 	 d e l e t e   e v e r y   i t e m   i n   v i d _ T v s h o w D i r  	 e n d   i f  	 s e t   o l d T I D   t o   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s  	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   r e t u r n  	 s e t   a l l C o n t e n t   t o   e v e r y   t e x t   i t e m   o f   n e w I n f o T e x t  	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   o l d T I D  	 s e t   f i r s t T e x t   t o   t e x t   i t e m   1   o f   a l l C o n t e n t  	 s e t   f i r s t T e x t   t o   m y   t r i m _ l i n e ( f i r s t T e x t ,   "   " ,   0 )   - - g e t   r i d   o f   a n   e m p t y   s p a c e  	 c o p y   f i r s t T e x t   t o   t e x t   i t e m   1   o f   a l l C o n t e n t  	 s e t   o l d T I D   t o   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s  	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   r e t u r n  	 s e t   a l l C o n t e n t   t o   e v e r y   t e x t   i t e m   o f   a l l C o n t e n t  	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   o l d T I D  	 r e p e a t   w i t h   a n I t e m   i n   a l l C o n t e n t  	 	 s e t   o l d T I D   t o   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s  	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " T V _ S h o w s / "  	 	 s e t   t i t l e I n f o   t o   t e x t   i t e m   2   o f   a n I t e m  	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " / " 
 	 	 s e t   t h e C o u n t   t o   c o u n t   t e x t   i t e m s   o f   t i t l e I n f o 
 	 	 i f   t h e C o u n t   i s   g r e a t e r   t h a n   1   t h e n  	 	 	 s e t   a l l I n f o   t o   t e x t   i t e m   2   o f   t i t l e I n f o  	 	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " . "  	 	 	 s e t   l e t t e r N a m e   t o   f i r s t   c h a r a c t e r   o f   a l l I n f o   a s   t e x t  	 	 	 s e t   l e t t e r N a m e   t o   m y   C a p i t a l i z e F i r s t L e t t e r _ o f E v e r y W o r d ( l e t t e r N a m e )  	 	 	 s e t   s h o w N a m e   t o   t e x t   i t e m   1   o f   a l l I n f o   a s   t e x t  	 	 	 s e t   s e a s o n N a m e   t o   t e x t   i t e m   2   o f   a l l I n f o   a s   t e x t  	 	 	 s e t   e p i s o d e N a m e   t o   a l l I n f o   a s   t e x t 
 	 	 	 t r y  	 	 	 s e t   a S h o w   t o   m a k e   n e w   f o l d e r   a t   v i d _ T v s h o w D i r   w i t h   p r o p e r t i e s   { n a m e : s h o w N a m e } 
 	 	 	 e n d   t r y  	 	 	 s e t   a n E p i s o d e   t o   m a k e   n e w   f i l e   a t   a S h o w   w i t h   p r o p e r t i e s   { n a m e : e p i s o d e N a m e }  	 	 e n d   i f  	 e n d   r e p e a t  	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   o l d T I D  	  	 - - n o w   w e ' l l   b u i l d   H T M L   f i l e s !  	 - - t h i s   p a r t   i s   m e s s y   a n d   c o m p l e x ,   w o r k   h e r e   w o u l d   b e   g r e a t l y   a p p r e c i a t e d !   : - )  	  	 s e t   s h o w L i s t   t o   f o l d e r s   i n   v i d _ T v s h o w D i r   - - c h a n g e s   t i t l e   o f   e a c h   v i d e o   f i l e   f o r   l a t e r   s t e p  	 r e p e a t   w i t h   a S h o w   i n   s h o w L i s t  	 	 s e t   e p i s o d e L i s t   t o   e v e r y   f i l e   i n   a S h o w  	 	 r e p e a t   w i t h   a n E p i s o d e   i n   e p i s o d e L i s t   - - b e l o w   c h a n g e s   t h e   n a m e  	 	 	 s e t   s e m i E p i s o d e N a m e   t o   n a m e   o f   a n E p i s o d e   a s   t e x t  	 	 	 i f   s e m i E p i s o d e N a m e   d o e s   n o t   e n d   w i t h   " . n f o "   t h e n   - - K e e p s   . n f o   f i l e s   i n   t h e i r   p l a c e  	 	 	 	 s e t   o l d T I D   t o   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s  	 	 	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " . "  	 	 	 	 s e t   l e t t e r N a m e   t o   f i r s t   c h a r a c t e r   o f   s e m i E p i s o d e N a m e   a s   t e x t  	 	 	 	 s e t   l e t t e r N a m e   t o   m y   C a p i t a l i z e F i r s t L e t t e r _ o f E v e r y W o r d ( l e t t e r N a m e )  	 	 	 	 s e t   s h o w N a m e   t o   t e x t   i t e m   1   o f   s e m i E p i s o d e N a m e   a s   t e x t  	 	 	 	 s e t   s e a s o n N a m e   t o   t e x t   i t e m   2   o f   s e m i E p i s o d e N a m e   a s   t e x t  	 	 	 	 s e t   e p i s o d e N a m e   t o   t e x t   i t e m   3   o f   s e m i E p i s o d e N a m e   a s   t e x t  	 	 	 	 s e t   t h e E x t e n s i o n   t o   " . "   &   n a m e   e x t e n s i o n   o f   a n E p i s o d e  	 	 	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " . "  	 	 	 	 t r y  	 	 	 	 	 s e t   o l d L e t t e r   t o   l e t t e r N a m e   - - t e s t   f o r   n u m b e r  	 	 	 	 	 s e t   l e t t e r N a m e   t o   n u m b e r  	 	 	 	 	 s e t   n u m T e s t   t o   t r u e  	 	 	 	 	 s e t   l e t t e r N a m e   t o   o l d L e t t e r  	 	 	 	 e n d   t r y  	 	 	 	 i f   n u m T e s t   i s   t r u e   t h e n  	 	 	 	 	 s e t   l e t t e r N a m e   t o   m y   n u m b e r C o r r e c t i o n ( l e t t e r N a m e )   - - c o n v e r t   n u m b e r   t o   " N u m "  	 	 	 	 e n d   i f  	 	 	 	 i f   n o t   ( e x i s t s   f o l d e r   ( a z M e n u N a m e   a s   s t r i n g )   i n   t v s h o w D i r )   t h e n  	 	 	 	 	 s e t   a l p h a F o l d e r   t o   m a k e   n e w   f o l d e r   a t   t v s h o w D i r   w i t h   p r o p e r t i e s   { n a m e : a z M e n u N a m e }  	 	 	 	 e l s e  	 	 	 	 	 s e t   a l p h a F o l d e r   t o   f o l d e r   n a m e d   a z M e n u N a m e   i n   t v s h o w D i r  	 	 	 	 e n d   i f  	 	 	 	 i f   n o t   ( e x i s t s   f o l d e r   ( l e t t e r N a m e   a s   s t r i n g )   i n   a l p h a F o l d e r )   t h e n  	 	 	 	 	 s e t   l e t t e r F o l d e r   t o   m a k e   n e w   f o l d e r   a t   a l p h a F o l d e r   w i t h   p r o p e r t i e s   { n a m e : l e t t e r N a m e }  	 	 	 	 e l s e  	 	 	 	 	 s e t   l e t t e r F o l d e r   t o   f o l d e r   n a m e d   l e t t e r N a m e   i n   a l p h a F o l d e r  	 	 	 	 e n d   i f  	 	 	 	 i f   n o t   ( e x i s t s   f o l d e r   ( s h o w N a m e   a s   s t r i n g )   i n   l e t t e r F o l d e r )   t h e n  	 	 	 	 	 s e t   s h o w F o l d e r   t o   m a k e   n e w   f o l d e r   a t   l e t t e r F o l d e r   w i t h   p r o p e r t i e s   { n a m e : s h o w N a m e }  	 	 	 	 e l s e  	 	 	 	 	 s e t   s h o w F o l d e r   t o   f o l d e r   n a m e d   s h o w N a m e   i n   l e t t e r F o l d e r  	 	 	 	 e n d   i f  	 	 	 	 i f   n o t   ( e x i s t s   f o l d e r   ( s e a s o n N a m e   a s   s t r i n g )   i n   s h o w F o l d e r )   t h e n  	 	 	 	 	 s e t   s e a s o n F o l d e r   t o   m a k e   n e w   f o l d e r   a t   s h o w F o l d e r   w i t h   p r o p e r t i e s   { n a m e : s e a s o n N a m e }  	 	 	 	 e l s e  	 	 	 	 	 s e t   s e a s o n F o l d e r   t o   f o l d e r   n a m e d   s e a s o n N a m e   i n   s h o w F o l d e r  	 	 	 	 e n d   i f  	 	 	 	 t r y   - - d o n e   t o   p r e v e n t   d u p l i c a t e s   f r o m   b e i n g   e n t e r e d  	 	 	 	 	 i f   ( e x i s t s   f i l e   ( e p i s o d e N a m e )   i n   s e a s o n F o l d e r )   t h e n  	 	 	 	 	 e l s e  	 	 	 	 	 	 m o v e   a n E p i s o d e   t o   s e a s o n F o l d e r  	 	 	 	 	 e n d   i f  	 	 	 	 e n d   t r y  	 	 	 e n d   i f  	 	 e n d   r e p e a t  	 e n d   r e p e a t  	 s e t   t v N a m e   t o   n a m e   o f   t v s h o w D i r  	 s e t   c r e a t e d L e t t e r s   t o   { }   - -   u s e d   f o r   d e t e r m i n i n g   l e t t e r s   a t   t h e   e n d  	 s e t   a z L i s t   t o   f o l d e r s   i n   t v s h o w D i r   - - N E E D E D   F O R   H E I R A R C H Y   D O N ' T   E R A S E ! ! !  	 r e p e a t   w i t h   a z M e n u   i n   a z L i s t  	 	 s e t   a z M e n u N a m e   t o   n a m e   o f   a z M e n u  	 	 s e t   l e t t e r L i s t   t o   f o l d e r s   i n   a z M e n u  	 	 r e p e a t   w i t h   a L e t t e r   i n   l e t t e r L i s t  	 	 	 s e t   l e t t e r N a m e   t o   n a m e   o f   a L e t t e r  	 	 	 c o p y   l e t t e r N a m e   t o   e n d   o f   c r e a t e d L e t t e r s   - - u s e d   f o r   l e t t e r s   a t   t h e   e n d  	 	 	 s e t   s h o w L i s t   t o   f o l d e r s   i n   a L e t t e r  	 	 	 r e p e a t   w i t h   a S h o w   i n   s h o w L i s t  	 	 	 	 s e t   s h o w N a m e   t o   n a m e   o f   a S h o w  	 	 	 	 s e t   s e a s o n L i s t   t o   f o l d e r s   i n   a S h o w  	 	 	 	 r e p e a t   w i t h   a S e a s o n   i n   s e a s o n L i s t  	 	 	 	 	 s e t   s e a s o n N a m e   t o   n a m e   o f   a S e a s o n  	 	 	 	 	 s e t   e p i s o d e L i s t   t o   f i l e s   i n   a S e a s o n  	 	 	 	 	 r e p e a t   w i t h   a n E p i s o d e   i n   e p i s o d e L i s t  	 	 	 	 	 	 i f   n a m e   e x t e n s i o n   o f   a n E p i s o d e  "`   " h t m l "   t h e n   - - a v o i d   h t m l   f i l e s  	 	 	 	 	 	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " . "  	 	 	 	 	 	 	 s e t   e p i s o d e N a m e   t o   n a m e   o f   a n E p i s o d e  	 	 	 	 	 	 	 s e t   o r i g E p i s o d e N a m e   t o   e p i s o d e N a m e   - - b a c k u p   o f   t h e   n a m e !  	 	 	 	 	 	 	 s e t   e p i s o d e N a m e   t o   m y   r e p l a c e _ c h a r s ( e p i s o d e N a m e ,   "   " ,   " _ " )  	 	 	 	 	 	 	 s e t   e p i s o d e E x t e n s i o n   t o   n a m e   e x t e n s i o n   o f   a n E p i s o d e 
 	 	 	 	 	 	 	 s e t   a c t u a l E p i s o d e T i t l e   t o   t e x t   1   t h r u   ( ( o f f s e t   o f   e p i s o d e E x t e n s i o n   �  	 	 	 	 	 	 	 	 	 i n   o r i g E p i s o d e N a m e )   -   1 )   o f   o r i g E p i s o d e N a m e  	 	 	 	 	 	 	 s e t   e p i s o d e T i t l e   t o   t e x t   1   t h r u   ( ( o f f s e t   o f   e p i s o d e E x t e n s i o n   i n   e p i s o d e N a m e )   -   1 )   o f   e p i s o d e N a m e  	 	 	 	 	 	 	 s e t   d o c N a m e   t o   e p i s o d e T i t l e   &   " h t m l "  	 	 	 	 	 	 	 i f   n a m e   e x t e n s i o n   o f   a n E p i s o d e  "`   " h t m l "   t h e n   - - m o v e   a n E p i s o d e   t o   v i d D i r e c t o r y   a n d   r e b u i l d   f i l e s y s t e m  	 	 	 	 	 	 	 	 i f   { e x i s t s   f o l d e r   ( s h o w N a m e )   i n   v i d _ T v s h o w D i r }   t h e n  	 	 	 	 	 	 	 	 	 s e t   a l t S h o w   t o   f o l d e r   ( s h o w N a m e )   i n   v i d _ T v s h o w D i r  	 	 	 	 	 	 	 	 	 m o v e   a n E p i s o d e   t o   a l t S h o w   - - m o v e   t o   S e a s o n   i n   v i d D i r e c t o r y  	 	 	 	 	 	 	 	 	 s e t   c u r r e n t L o c   t o   a l t S h o w   a s   t e x t  	 	 	 	 	 	 	 	 e l s e  	 	 	 	 	 	 	 	 	 t r y  	 	 	 	 	 	 	 	 	 	 s e t   a l t S h o w   t o   m a k e   n e w   f o l d e r   a t   v i d _ T v s h o w D i r   w i t h   p r o p e r t i e s   { n a m e : s h o w N a m e }  	 	 	 	 	 	 	 	 	 e n d   t r y  	 	 	 	 	 	 	 	 	 m o v e   a n E p i s o d e   t o   a l t S h o w  	 	 	 	 	 	 	 	 	 s e t   c u r r e n t L o c   t o   a l t S h o w   a s   t e x t  	 	 	 	 	 	 	 	 e n d   i f  	 	 	 	 	 	 	 e n d   i f  	 	 	 	 	 	 e n d   i f  	 	 	 	 	 	 s e t   p a r e n t F o l   t o   f o l d e r   o f   t v s h o w D i r   - - u s e d   a s   a   d e l i m i t e r !   ( m w a h a h a h a )  	 	 	 	 	 	 s e t   p a r e n t N a m e   t o   n a m e   o f   p a r e n t F o l  	 	 	 	 	 	 s e t   p a t h N a m e   t o   c u r r e n t L o c   a s   t e x t  	 	 	 	 	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   p a r e n t N a m e   - - t h i s   a l l   p o i n t s  	 	 	 	 	 	 s e t   a l m o s t L o c   t o   t e x t   i t e m   2   o f   p a t h N a m e   - - t o   t h e   f i l e   f o r   t h e   H T M L  	 	 	 	 	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   o r i g E p i s o d e N a m e   - - c o d i n g  	 	 	 	 	 	 s e t   n e a r l y L o c   t o   t e x t   i t e m   1   o f   a l m o s t L o c   &   o r i g E p i s o d e N a m e  	 	 	 	 	 	 s e t   f i l e L o c   t o   t e x t   ( ( o f f s e t   o f   " : "   i n   n e a r l y L o c )   +   1 )   t h r u   - 1   o f   n e a r l y L o c  	 	 	 	 	 	 s e t   f i l e L o c   t o   m y   r e p l a c e _ c h a r s ( f i l e L o c ,   " : " ,   " / " )  	 	 	 	 	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   { " " }  	 	 	 	 	 	 t r y   - - p r e v e n t s   d u p l i c a t e s   f r o m   b e i n g   w r i t t e n - - - - - - - - - - - - - - - - - - - - - - - - - - - - . . . d 8 8 8  	 	 	 	 	 	 	 m a k e   n e w   f i l e   a t   a S e a s o n   w i t h   p r o p e r t i e s   { n a m e : d o c N a m e }   - - d 8 8 8 8  	 	 	 	 	 	 e n d   t r y   - - 	 	 	 	 	 	 	 	 	 	 	 	 	 8 8 8  	 	 	 	 	 	 i f   { e x i s t s   f i l e   ( d o c N a m e )   i n   a S e a s o n }   t h e n   - - 	 	 	 	 	 	 8 8 8  	 	 	 	 	 	 	 s e t   d F i l e   t o   f i l e   ( d o c N a m e )   i n   a S e a s o n   - - 	 	 	 	 	 	 8 8 8  	 	 	 	 	 	 	 s e t   e p i s o d e F i l e   t o   d F i l e   a s   a l i a s   - - 	 	 	 	 	 	 	 8 8 8  	 	 	 	 	 	 	 - - C o d e   f o r   e p i s o d e   h t m l   t e x t   f i l e ! - - - 	 	 	 	 	 	       	 8 8 8  	 	 	 	 	 	 	 - - y o u   c a n   m o d i f y   t h i s   f o r   y o u r   o w n   c o d i n g   n e e d s   o f   c o u r s e                 8 8 8 8 8 8 8 
 	 	 	 	 	 	 	� o      ���� 0 remote_updater3  ��  ��  � ��� l �	������� Z  �	������� = ����� n  ����� 1  ����
�� 
bhit� o  ������ 0 presubquery preSubQuery� m  ���� ���  Y e s� k  �	��� ��� r  ����� J  ������  � o      ���� 0 subtitlehtml subtitleHTML� ��� r  ����� n ����� 1  ����
�� 
txdl� 1  ����
�� 
ascr� o      ���� 0 oldtid oldTID� ��� r  ����� m  ���� ���  .� n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ����� n  ����� 2  ����
�� 
citm� o  ������ 0 
menuchoice 
menuChoice� o      ���� 0 
allchoices 
allChoices� ��� X  �	w����� Z  �	r������� E  ����� o  ������ 0 
menuchoice 
menuChoice� o  ������ 0 anitem anItem� k  �	n�� ��� r  ����� o  ������ 0 oldtid oldTID� n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ����� n ����� 1  ����
�� 
txdl� 1  ����
�� 
ascr� o      ���� 0 oldtid oldTID� ��� r  �	��� m  ���� ���    - -  � n     ��� 1  �	��
�� 
txdl� 1  ����
�� 
ascr� � � r  		 n  		
 4 		
��
�� 
citm m  			����  o  		���� 0 anitem anItem o      ���� 0 
theheading 
theHeading   r  			 n  		

 4 		��
�� 
citm m  		����  o  		���� 0 anitem anItem	 o      ���� 0 namelang nameLang  r  		% o  		���� 0 oldtid oldTID n      1  	 	$��
�� 
txdl 1  		 ��
�� 
ascr  r  	&	1 n 	&	- 1  	)	-��
�� 
txdl 1  	&	)��
�� 
ascr o      ���� 0 oldtid oldTID  r  	2	= m  	2	5 �  . n       1  	8	<��
�� 
txdl  1  	5	8��
�� 
ascr !"! r  	>	e#$# b  	>	a%&% b  	>	]'(' b  	>	Y)*) b  	>	U+,+ b  	>	Q-.- b  	>	M/0/ b  	>	I121 b  	>	E343 m  	>	A55 �66 � < t r a c k   k i n d = ' s u b t i t l e s '   s r c = ' . . / . . / . . / . . / . . / v i d e o s / s u b t i t l e s / "   &   a c t u a l E p i s o d e T i t l e   � 
 	 	 	 &   "4 o  	A	D���� 0 namelang nameLang2 o  	E	H���� 0 subtypequery subTypeQuery0 m  	I	L77 �88  '   s r c l a n g = '. o  	M	P���� 0 
theheading 
theHeading, m  	Q	T99 �::  '   l a b e l = '* l 
	U	X;����; o  	U	X���� 0 namelang nameLang��  ��  ( m  	Y	\<< �==  '   / >& o  	]	`��
�� 
ret $ o      ���� 0 	totallist 	totalList" >��> s  	f	n?@? o  	f	i���� 0 	totallist 	totalList@ n      ABA  ;  	l	mB o  	i	l���� 0 subtitlehtml subtitleHTML��  ��  ��  �� 0 anitem anItem� o  ������ 0 
allchoices 
allChoices� CDC l 	x	x��������  ��  ��  D E��E r  	x	�FGF b  	x	�HIH b  	x	JKJ m  	x	{LL �MM s e t   e p i s o d e T e x t   t o   " < ! D O C T Y P E   h t m l > 
 < h t m l > 	 	       
         < h e a d > 
                 < t i t l e > "   &   s h o w N a m e   &   " < / t i t l e > 
                 < l i n k   h r e f = ' h t t p : / / v j s . z e n c d n . n e t / c / v i d e o - j s . c s s '   r e l = ' s t y l e s h e e t ' > 
                 < s c r i p t   s r c = ' h t t p : / / v j s . z e n c d n . n e t / c / v i d e o . j s ' > < / s c r i p t > 
                 < s t y l e > 
                         b o d y   { 
                                 b a c k g r o u n d - c o l o r :   # 0 0 0 0 0 0 
                         } 
                         . b u t t o n   { 
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
                 < / s t y l e > 
         < / h e a d >                 
         < b o d y > 
                 < v i d e o   i d = ' e x a m p l e _ v i d e o _ 1 '   c l a s s = ' v i d e o - j s   v j s - d e f a u l t - s k i n '     
             c o n t r o l s   p r e l o a d = ' a u t o '   w i d t h = ' 1 0 8 0 '   h e i g h t = ' 7 2 0 '   a u t o p l a y   
             d a t a - s e t u p = ' { \ " e x a m p l e _ o p t i o n \ " : t r u e } ' >     
             < s o u r c e   s r c = ' . . / . . / . . / . . / . . / "   &   f i l e L o c   &   " '   t y p e = ' v i d e o / m p 4 ' / > 
             < s o u r c e   s r c = ' . . / . . / . . / . . / . . / "   &   f i l e L o c   &   " '   t y p e = ' v i d e o / o g g ' / > 
             < s o u r c e   s r c = ' . . / . . / . . / . . / . . / "   &   f i l e L o c   &   " '   t y p e = ' v i d e o / w e b m '   / > 
            K o  	{	~���� 0 subtitlehtml subtitleHTMLI m  		�NN �OO
 
                     < / v i d e o > 
                     < b u t t o n   i d = ' f u l l s c r e e n v i d '   c l a s s = ' b u t t o n ' > F u l l s c r e e n   v i d e o < / b u t t o n > 
                     < s c r i p t   t y p e = ' t e x t / j a v a s c r i p t ' > 
                             ( f u n c t i o n ( w i n d o w ,   d o c u m e n t ) { 
 	 	 	 v a r   $   =   f u n c t i o n ( s e l e c t o r , c o n t e x t ) { r e t u r n ( c o n t e x t | | d o c u m e n t ) . q u e r y S e l e c t o r ( s e l e c t o r ) } ; 
 	 	 	 
 	 	 	 v a r   v i d e o     =   $ ( \ " v i d e o \ " ) , 
 	 	 	 	 i f r a m e   =   $ ( \ " i f r a m e \ " ) , 
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
 	 	 	 v a r   f u l l s c r e e n v i d e o   =   f u l l s c r e e n ( d o c u m e n t . c r e a t e E l e m e n t ( \ " v i d e o \ " ) ) ; 
 	 	 	 
 	 	 	 / /   W e b k i t   u s e s   ' r e q u e s t F u l l S c r e e n '   f o r   n o n   v i d e o   e l e m e n t s 
 	 	 	 v a r   f u l l s c r e e n o t h e r   =   f u l l s c r e e n ( d o c u m e n t . c r e a t e E l e m e n t ( \ " i f r a m e \ " ) ) ; 
 
 	 	 	 i f ( ! f u l l s c r e e n )   { 
 	 	 	 	 a l e r t ( \ " F u l l s c r e e n   w o n ' t   w o r k ,   p l e a s e   m a k e   s u r e   y o u ' r e   u s i n g   a   b r o w s e r   t h a t   s u p p o r t s   i t   a n d   y o u   h a v e   e n a b l e d   t h e   f e a t u r e \ " ) ; 
 	 	 	 	 r e t u r n ; 
 	 	 	 } 
 	 	 	 
 	 	 	 / /   S h o u l d   a d d   p r e f i x e d   e v e n t s   f o r   p o t e n t i a l   m s / o   o r   u n p r e f i x e d   s u p p o r t   t o o 
 	 	 	 v i d e o . a d d E v e n t L i s t e n e r ( \ " w e b k i t f u l l s c r e e n c h a n g e \ " , f u n c t i o n ( ) { 
 	 	 	 	 c o n s o l e . l o g ( d o c u m e n t . w e b k i t I s F u l l S c r e e n ) ; 
 	 	 	 } ,   f a l s e ) ; 
 	 	 	 v i d e o . a d d E v e n t L i s t e n e r ( \ " m o z f u l l s c r e e n c h a n g e \ " , f u n c t i o n ( ) { 
 	 	 	 	 c o n s o l e . l o g ( d o c u m e n t . m o z F u l l S c r e e n ) ; 
 	 	 	 } ,   f a l s e ) ; 
 
 	 	 	 $ ( \ " # f u l l s c r e e n v i d \ " ) . a d d E v e n t L i s t e n e r ( \ " c l i c k \ " ,   f u n c t i o n ( ) { 
 	 	 	 	 / /   T h e   t e s t   r e t u r n s   a   s t r i n g   s o   w e   c a n   e a s i l y   c a l l   i t   o n   a   c l i c k   e v e n t 
 	 	 	 	 v i d e o [ f u l l s c r e e n v i d e o ] ( ) ; 
 	 	 	 } ,   f a l s e ) ; 
 	 	 	 $ ( \ " # f u l l s c r e e n i f r a m e \ " ) . a d d E v e n t L i s t e n e r ( \ " c l i c k \ " ,   f u n c t i o n ( ) { 
 	 	 	 	 / /   i f r a m e   f u l l s c r e e n   a n d   n o n   v i d e o   e l e m e n t s   i n   w e b k i t   u s e   r e q u e s t   o v e r   e n t e r 
 	 	 	 	 i f r a m e [ f u l l s c r e e n o t h e r ] ( ) ; 
 	 	 	 } ,   f a l s e ) ; 
 	 	 } ) ( t h i s ,   t h i s . d o c u m e n t ) ; 
                         < / s c r i p t > 
             < / b o d y > 
     < / h t m l > "G o      ���� 0 remote_updater4  ��  ��  � r  	�	�PQP m  	�	�RR �SSP s e t   e p i s o d e T e x t   t o   " < ! D O C T Y P E   h t m l > 
 < h t m l > 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	       
         < h e a d > 
 	 < t i t l e > "   &   s h o w N a m e   &   " < / t i t l e > 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
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
                     < s o u r c e   s r c = ' . . / . . / . . / . . / . . / "   &   f i l e L o c   &   " '   t y p e = ' v i d e o / m p 4 ' / > 
                     < s o u r c e   s r c = ' . . / . . / . . / . . / . . / "   &   f i l e L o c   &   " '   t y p e = ' v i d e o / o g g ' / > 
                     < s o u r c e   s r c = ' . . / . . / . . / . . / . . / "   &   f i l e L o c   &   " '   t y p e = ' v i d e o / w e b m '   / > 
     < / v i d e o > 
     < b u t t o n   i d = ' f u l l s c r e e n v i d '   c l a s s = ' b u t t o n ' > F u l l s c r e e n   v i d e o < / b u t t o n > 
 < / d i v > 
     < s c r i p t > 
           ( f u n c t i o n ( w i n d o w ,   d o c u m e n t ) { 
 	 	 	 v a r   $   =   f u n c t i o n ( s e l e c t o r , c o n t e x t ) { r e t u r n ( c o n t e x t | | d o c u m e n t ) . q u e r y S e l e c t o r ( s e l e c t o r ) } ; 
 	 	 	 
 	 	 	 v a r   v i d e o     =   $ ( \ " v i d e o \ " ) , 
 	 	 	 	 i f r a m e   =   $ ( \ " i f r a m e \ " ) , 
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
 	 	 	 v a r   f u l l s c r e e n v i d e o   =   f u l l s c r e e n ( d o c u m e n t . c r e a t e E l e m e n t ( \ " v i d e o \ " ) ) ; 
 	 	 	 
 	 	 	 / /   W e b k i t   u s e s   ' r e q u e s t F u l l S c r e e n '   f o r   n o n   v i d e o   e l e m e n t s 
 	 	 	 v a r   f u l l s c r e e n o t h e r   =   f u l l s c r e e n ( d o c u m e n t . c r e a t e E l e m e n t ( \ " i f r a m e \ " ) ) ; 
 
 	 	 	 i f ( ! f u l l s c r e e n )   { 
 	 	 	 	 a l e r t ( \ " F u l l s c r e e n   w o n ' t   w o r k ,   p l e a s e   m a k e   s u r e   y o u ' r e   u s i n g   a   b r o w s e r   t h a t   s u p p o r t s   i t   a n d   y o u   h a v e   e n a b l e d   t h e   f e a t u r e \ " ) ; 
 	 	 	 	 r e t u r n ; 
 	 	 	 } 
 	 	 	 
 	 	 	 / /   S h o u l d   a d d   p r e f i x e d   e v e n t s   f o r   p o t e n t i a l   m s / o   o r   u n p r e f i x e d   s u p p o r t   t o o 
 	 	 	 v i d e o . a d d E v e n t L i s t e n e r ( \ " w e b k i t f u l l s c r e e n c h a n g e \ " , f u n c t i o n ( ) { 
 	 	 	 	 c o n s o l e . l o g ( d o c u m e n t . w e b k i t I s F u l l S c r e e n ) ; 
 	 	 	 } ,   f a l s e ) ; 
 	 	 	 v i d e o . a d d E v e n t L i s t e n e r ( \ " m o z f u l l s c r e e n c h a n g e \ " , f u n c t i o n ( ) { 
 	 	 	 	 c o n s o l e . l o g ( d o c u m e n t . m o z F u l l S c r e e n ) ; 
 	 	 	 } ,   f a l s e ) ; 
 
 	 	 	 $ ( \ " # f u l l s c r e e n v i d \ " ) . a d d E v e n t L i s t e n e r ( \ " c l i c k \ " ,   f u n c t i o n ( ) { 
 	 	 	 	 / /   T h e   t e s t   r e t u r n s   a   s t r i n g   s o   w e   c a n   e a s i l y   c a l l   i t   o n   a   c l i c k   e v e n t 
 	 	 	 	 v i d e o [ f u l l s c r e e n v i d e o ] ( ) ; 
 	 	 	 } ,   f a l s e ) ; 
 	 	 	 $ ( \ " # f u l l s c r e e n i f r a m e \ " ) . a d d E v e n t L i s t e n e r ( \ " c l i c k \ " ,   f u n c t i o n ( ) { 
 	 	 	 	 / /   i f r a m e   f u l l s c r e e n   a n d   n o n   v i d e o   e l e m e n t s   i n   w e b k i t   u s e   r e q u e s t   o v e r   e n t e r 
 	 	 	 	 i f r a m e [ f u l l s c r e e n o t h e r ] ( ) ; 
 	 	 	 } ,   f a l s e ) ; 
 	 	 } ) ( t h i s ,   t h i s . d o c u m e n t ) ; 
         < / s c r i p t > 
 < / b o d y > 
 < / h t m l > "Q o      ���� 0 remote_updater4  ��  ��  � TUT l 	�	�V����V r  	�	�WXW m  	�	�YY �ZZ�� 
 i g n o r i n g   a p p l i c a t i o n   r e s p o n s e s  	 	 	 	 	 	 	 	 s e t   e p i s o d e F i l e   t o   m y   w r i t e C o d e ( e p i s o d e F i l e ,   e p i s o d e T e x t )  	 	 	 	 	 	 	 e n d   i g n o r i n g  	 	 	 	 	 	 	 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . d 8 8 8 8 b .  	 	 	 	 	 	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " "   - - - - - - - - - - - - - - - - - d 8 8 P     Y 8 8 b  	 	 	 	 	 	 e n d   i f   - - - - - - - - - - - - - 	 	 	 - - -                                                 - - - - - - - - - - - - -                                   8 8 8  	 	 	 	 	 e n d   r e p e a t   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -       	 - -   - - - - - - - -                               - - -                       . d 8 8 P  	 	 	 	 	 s e t   d o c N a m e   t o   s e a s o n N a m e   &   " . h t m l "   - - - - - - 	 	       - - - - - - - - - - - - -           . o d 8 8 8 P I  	 	 	 	 	 s e t   a l t S h o w N a m e   t o   s h o w N a m e   a s   t e x t   - - - - - - - - - - -         - - - - - - - - - - - - -         d 8 8 P I  	 	 	 	 	 s e t   a l t S h o w N a m e   t o   m y   r e p l a c e _ c h a r s ( a l t S h o w N a m e ,   " _ " ,   "   " )   - - 8 8 8 I    	 	 	 	 	 s e t   a l t S e a s o n N a m e   t o   s e a s o n N a m e   a s   t e x t   - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8 8 8 8 8 8 8 8    	 	 	 	 	 s e t   a l t S e a s o n N a m e   t o   m y   r e p l a c e _ c h a r s ( a l t S e a s o n N a m e ,   " _ " ,   "   " )  	 	 	 	 	 t r y  	 	 	 	 	 	 m a k e   n e w   f i l e   a t   a S h o w   w i t h   p r o p e r t i e s   { n a m e : d o c N a m e }  	 	 	 	 	 e n d   t r y  	 	 	 	 	 i f   { e x i s t s   f i l e   ( d o c N a m e )   i n   a S h o w }   t h e n  	 	 	 	 	 	 s e t   d F i l e   t o   f i l e   ( d o c N a m e )   i n   a S h o w  	 	 	 	 	 	 s e t   e p i s o d e F i l e   t o   d F i l e   a s   a l i a s  	 	 	 	 	 	 s e t   l i s t P a r t 1   t o   " < l i > < a   h r e f = ' "   - - a u t o   g e n e r a t e   H T M L   l i s t s  	 	 	 	 	 	 s e t   l i s t P a r t 7   t o   " ' > "  	 	 	 	 	 	 s e t   l i s t P a r t 9   t o   " < / a > < / l i > "  	 	 	 	 	 	 s e t   s e a s o n H t m l L i s t   t o   { }  	 	 	 	 	 	 s e t   a l l F i l e s   t o   e v e r y   f i l e   i n   a S e a s o n  	 	 	 	 	 	 r e p e a t   w i t h   a F i l e   i n   a l l F i l e s  	 	 	 	 	 	 	 i f   n a m e   e x t e n s i o n   o f   a F i l e   i s   " h t m l "   t h e n  	 	 	 	 	 	 	 	 s e t   h t m l F i l e   t o   n a m e   o f   a F i l e   a s   t e x t 
 	 	 	 	 	 	 	 	 s e t   o l d T I D   t o   a p p l e s c r i p t ' s   t e x t   i t e m   d e l i m i t e r s 
 	 	 	 	 	 	 	 	 s e t   a p p l e s c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " . "  	 	 	 	 	 	 	 	 s e t   t r u e E p i s o d e N a m e   t o   t e x t   i t e m   3   o f   h t m l F i l e 
 	 	 	 	 	 	 	 	 s e t   o l d T I D   t o   a p p l e s c r i p t ' s   t e x t   i t e m   d e l i m i t e r s  	 	 	 	 	 	 	 	 s e t   t r u e E p i s o d e N a m e   t o   m y   r e p l a c e _ c h a r s ( t r u e E p i s o d e N a m e ,   "   " ,   " _ " )  	 	 	 	 	 	 	 	 s e t   t o t a l L i s t   t o   l i s t P a r t 1   &   " . . / . . / . . / . . / T V _ S h o w s "   &   " / "   &   a z M e n u N a m e   &   " / "   &   l e t t e r N a m e   &   " / "   &   s h o w N a m e   &   " / "   &   s e a s o n N a m e   &   " / "   &   h t m l F i l e   &   l i s t P a r t 7   &   t r u e E p i s o d e N a m e   &   l i s t P a r t 9  	 	 	 	 	 	 	 	 c o p y   t o t a l L i s t   t o   e n d   o f   s e a s o n H t m l L i s t  	 	 	 	 	 	 	 e n d   i f  	 	 	 	 	 	 e n d   r e p e a t  	 	 	 	 	 	 s e t   e p i s o d e T e x t   t o   " < ! D o c t y p e   h t m l > 
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
                         w i d t h : 5 0 0 p x ; 
                         l i n e - h e i g h t : 2 0 p x ; 
                         f o n t - s i z e :   1 9 p x ; 
                 } 
 
                 . S E _ n a v   l i   a   { 
                         t e x t - d e c o r a t i o n : n o n e ; 
                         d i s p l a y : b l o c k ; 
                         c o l o r : # F F F F F F ; 
                         p a d d i n g : 2 p x ; 
                         f o n t - s i z e : 1 3 ; 
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
 	           h e i g h t : 1 0 0 p x ; 
 	           w i d t h : 6 5 0 p x ; 
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
                         < l i > < a   h r e f = ' . . / . . / . . / . . / T V _ S h o w s / A - Z m e n u / "   &   l e t t e r N a m e   &   " / "   &   s h o w N a m e   &   " . h t m l ' >   . . < / a > < / l i > 
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
                 < h e a d e r   i d = ' s h o w T i t l e '   > "   &   a l t S h o w N a m e   &   " < / h e a d e r > 
                 < h e a d e r   i d = ' s e a s o n T i t l e '   > "   &   a l t S e a s o n N a m e   &   " < / h e a d e r > 
                 < u l   c l a s s = ' S E _ n a v ' > "   &   �  	 	 	 	 	 	 	 s e a s o n H t m l L i s t   &   " 
 	 	 < / u l > 
         < / d i v > 
 < / b o d y > 
 < / h t m l > "  	 	 	 	 	 	 i g n o r i n g   a p p l i c a t i o n   r e s p o n s e s  	 	 	 	 	 	 	 s e t   e p i s o d e F i l e   t o   m y   w r i t e C o d e ( e p i s o d e F i l e ,   e p i s o d e T e x t )  	 	 	 	 	 	 e n d   i g n o r i n g  	 	 	 	 	 e n d   i f  	 	 	 	 e n d   r e p e a t  	 	 	 	 s e t   d o c N a m e   t o   s h o w N a m e   &   " . h t m l "  	 	 	 	 t r y  	 	 	 	 	 m a k e   n e w   f i l e   a t   a L e t t e r   w i t h   p r o p e r t i e s   { n a m e : d o c N a m e }  	 	 	 	 e n d   t r y  	 	 	 	 i f   { e x i s t s   f i l e   ( d o c N a m e )   i n   a L e t t e r }   t h e n  	 	 	 	 	 s e t   d F i l e   t o   f i l e   ( d o c N a m e )   i n   a L e t t e r  	 	 	 	 	 s e t   e p i s o d e F i l e   t o   d F i l e   a s   a l i a s   - - 	 	 	 	 	 	 	 . d 8 8 8 8 b .  	 	 	 	 	 s e t   l i s t P a r t 1   t o   " < l i > < a   h r e f = ' "   - - a u t o   g e n e r a t e   H T M L   l i s t s - - - - - - - d 8 8 P     Y 8 8 b  	 	 	 	 	 s e t   l i s t P a r t 6   t o   " ' > "   - - 	 	 	 	 	 	 	 	 	 	 	     . d 8 8 P  	 	 	 	 	 s e t   l i s t P a r t 8   t o   " < / a > < / l i > "   - - 	 	 	 	 	 	 	 	 	 8 8 8 8 I  	 	 	 	 	 s e t   s h o w H t m l L i s t   t o   { }   - - 	 	 	 	 	 	 	 	 	 	     I Y 8 b .  	 	 	 	 	 s e t   a l l F i l e s   t o   e v e r y   f i l e   i n   a S h o w   - - 	 	 	 	 	 	 	 8 8 8         8 8 8  	 	 	 	 	 r e p e a t   w i t h   a F i l e   i n   a l l F i l e s   - - 	 	 	 	 	 	 	 	 Y 8 8 b     d 8 8 P  	 	 	 	 	 	 i f   n a m e   e x t e n s i o n   o f   a F i l e   i s   " h t m l "   t h e n   - - - 	 	 	 	   I Y 8 8 8 8 P I  	 	 	 	 	 	 	 s e t   h t m l F i l e   t o   n a m e   o f   a F i l e   a s   t e x t  	 	 	 	 	 	 	 s e t   t r u e S e a s o n N a m e   t o   t e x t   1   t h r u   ( ( o f f s e t   o f   " . "   i n   h t m l F i l e )   -   1 )   o f   h t m l F i l e  	 	 	 	 	 	 	 s e t   t r u e S e a s o n N a m e   t o   m y   r e p l a c e _ c h a r s ( t r u e S e a s o n N a m e ,   " _ " ,   "   " )  	 	 	 	 	 	 	 s e t   t o t a l L i s t   t o   l i s t P a r t 1   &   " . . / . . / . . / T V _ S h o w s "   &   " / "   &   a z M e n u N a m e   &   " / "   &   l e t t e r N a m e   &   " / "   &   s h o w N a m e   &   " / "   &   h t m l F i l e   &   l i s t P a r t 6   &   t r u e S e a s o n N a m e   &   l i s t P a r t 8  	 	 	 	 	 	 	 c o p y   t o t a l L i s t   t o   e n d   o f   s h o w H t m l L i s t  	 	 	 	 	 	 e n d   i f  	 	 	 	 	 e n d   r e p e a t  	 	 	 	 	 s e t   e p i s o d e T e x t   t o   " < ! D o c t y p e   h t m l > 
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
                         w i d t h : 5 0 0 p x ; 
                         l i n e - h e i g h t : 2 0 p x ; 
                         f o n t - s i z e : 1 9 p x ; 
                 } 
 
                 . S E _ n a v   l i   a   { 
                         t e x t - d e c o r a t i o n : n o n e ; 
                         d i s p l a y : b l o c k ; 
                         c o l o r : # F F F F F F ; 
                         p a d d i n g : 2 p x ; 
                         f o n t - s i z e : 1 3 ; 
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
                         < l i > < a   h r e f = ' . . / . . / . . / T V _ S h o w s / A - Z m e n u / "   &   l e t t e r N a m e   &   " . h t m l ' >   . . < / a > < / l i > 
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
                         c o l o r : # 7 0 8 0 9 0 ; p o s i t i o n : a b s o l u t e ; t o p : 2 ; l e f t : 2 0 p x ; h e i g h t : 1 0 0 p x ; w i d t h : 6 0 0 p x ' > "   &   a l t S h o w N a m e   &   " < / h e a d e r >                 
                 < u l   c l a s s = ' S E _ n a v '   s t y l e = ' p o s i t i o n : a b s o l u t e ; t o p : 1 2 5 p x ; ' > "   &   �  	 	 	 	 	 	 s h o w H t m l L i s t   &   " 
 	 	 < / u l > 
         < / d i v > 
 < / b o d y > 
 < / h t m l > "  	 	 	 	 	 i g n o r i n g   a p p l i c a t i o n   r e s p o n s e s  	 	 	 	 	 	 s e t   e p i s o d e F i l e   t o   m y   w r i t e C o d e ( e p i s o d e F i l e ,   e p i s o d e T e x t )  	 	 	 	 	 e n d   i g n o r i n g  	 	 	 	 e n d   i f  	 	 	 e n d   r e p e a t  	 	 	 s e t   d o c N a m e   t o   l e t t e r N a m e   &   " . h t m l "  	 	 	 t r y  	 	 	 	 m a k e   n e w   f i l e   a t   ( a z M e n u )   w i t h   p r o p e r t i e s   { n a m e : d o c N a m e }  	 	 	 e n d   t r y  	 	 	 i f   { e x i s t s   f i l e   ( d o c N a m e )   i n   a z M e n u }   t h e n  	 	 	 	 s e t   d F i l e   t o   f i l e   ( d o c N a m e )   i n   a z M e n u   - - 	 	 	 	 d 8 8 8 8  	 	 	 	 s e t   e p i s o d e F i l e   t o   d F i l e   a s   a l i a s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - d 8 P 8 8 8      	 	 	 	 s e t   l i s t P a r t 1   t o   " < l i > < a   h r e f = ' "   - - - - - - - - - - - - - - - - - - - - - - - - - - d 8 P   8 8 8  	 	 	 	 s e t   l i s t P a r t 6   t o   " ' > "   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - d 8 P     8 8 8  	 	 	 	 s e t   l i s t P a r t 8   t o   " < / a > < / l i > "   - - - - - - - - - - - - - - - - - - - - - - - - - - - - d 8 8       8 8 8    	 	 	 	 s e t   l e t t e r H t m l L i s t   t o   { }   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8 8 8 8 8 8 8 8  	 	 	 	 s e t   a l l F i l e s   t o   e v e r y   f i l e   i n   a L e t t e r   - - - - - - - - - - - - - - - - - - - - - - - -           8 8 8    	 	 	 	 r e p e a t   w i t h   a F i l e   i n   a l l F i l e s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8  	 	 	 	 	 i f   n a m e   e x t e n s i o n   o f   a F i l e   i s   " h t m l "   t h e n  	 	 	 	 	 	 s e t   h t m l F i l e   t o   n a m e   o f   a F i l e   a s   t e x t  	 	 	 	 	 	 s e t   t r u e S h o w N a m e   t o   t e x t   1   t h r u   ( ( o f f s e t   o f   " . "   i n   h t m l F i l e )   -   1 )   o f   h t m l F i l e  	 	 	 	 	 	 s e t   t r u e S h o w N a m e   t o   m y   r e p l a c e _ c h a r s ( t r u e S h o w N a m e ,   " _ " ,   "   " )  	 	 	 	 	 	 s e t   t o t a l L i s t   t o   l i s t P a r t 1   &   " . . / . . / T V _ S h o w s "   &   " / "   &   a z M e n u N a m e   &   " / "   &   l e t t e r N a m e   &   " / "   &   h t m l F i l e   &   l i s t P a r t 6   &   t r u e S h o w N a m e   &   l i s t P a r t 8  	 	 	 	 	 	 c o p y   t o t a l L i s t   t o   e n d   o f   l e t t e r H t m l L i s t  	 	 	 	 	 e n d   i f  	 	 	 	 e n d   r e p e a t  	 	 	 	 i f   l e t t e r N a m e   a s   s t r i n g   i s   " - "   t h e n  	 	 	 	 	 s e t   l e t t e r N a m e   t o   " # "   a s   s t r i n g  	 	 	 	 e n d   i f  	 	 	 	 s e t   e p i s o d e T e x t   t o   " < ! D o c t y p e   h t m l > 
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
                         w i d t h : 5 0 0 p x ; 
                         l i n e - h e i g h t : 2 0 p x ; 
                         f o n t - s i z e : 1 9 p x ; 
                 } 
 
                 . S E _ n a v   l i   a   { 
                         t e x t - d e c o r a t i o n : n o n e ; 
                         d i s p l a y : b l o c k ; 
                         c o l o r : # F F F F F F ; 
                         p a d d i n g : 2 p x ; 
                         f o n t - s i z e : 1 3 ; 
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
                         c o l o r : # 7 0 8 0 9 0 ; p o s i t i o n : a b s o l u t e ; t o p : 2 ; l e f t : 2 0 p x ; h e i g h t : 1 0 0 p x ; w i d t h : 3 0 0 p x ' > "   &   l e t t e r N a m e   &   " < / h e a d e r >                 
                 < u l   c l a s s = ' S E _ n a v '   s t y l e = ' p o s i t i o n : a b s o l u t e ; t o p : 7 5 p x ; ' > "   &   �  	 	 	 	 	 l e t t e r H t m l L i s t   &   " 
 	 	   < / u l > 
         < / d i v > 
 < / b o d y > 
 < / h t m l > "  	 	 	 	 i g n o r i n g   a p p l i c a t i o n   r e s p o n s e s  	 	 	 	 	 s e t   e p i s o d e F i l e   t o   m y   w r i t e C o d e ( e p i s o d e F i l e ,   e p i s o d e T e x t )  	 	 	 	 e n d   i g n o r i n g  	 	 	 e n d   i f   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8 8 8 8 8 8 8  	 	 e n d   r e p e a t   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8  	 	 s e t   d o c N a m e   t o   a z M e n u N a m e   &   " . h t m l "   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8  	 	 t r y   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8 8 8 8 8 b .  	 	 	 m a k e   n e w   f i l e   a t   ( t v s h o w D i r )   w i t h   p r o p e r t i e s   { n a m e : d o c N a m e }   - - - - - - - - - - I Y 8 8 b  	 	 e n d   t r y   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8  	 	 i f   { e x i s t s   f i l e   ( d o c N a m e )   i n   t v s h o w D i r }   t h e n   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - Y 8 8 b     d 8 8 P    	 	 	 s e t   d F i l e   t o   f i l e   ( d o c N a m e )   i n   t v s h o w D i r   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - I Y 8 8 8 8 P I  	 	 	 s e t   e p i s o d e F i l e   t o   d F i l e   a s   a l i a s  	 	 	 s e t   e p i s o d e T e x t   t o   " < ! D o c t y p e   h t m l > 
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
 < / h t m l > "  	 	 	 i g n o r i n g   a p p l i c a t i o n   r e s p o n s e s  	 	 	 	 s e t   e p i s o d e F i l e   t o   m y   w r i t e C o d e ( e p i s o d e F i l e ,   e p i s o d e T e x t )  	 	 	 e n d   i g n o r i n g  	 	 e n d   i f   - - t h e   s e c t i o n   b e l o w   m a k e s   b l a n k   p a g e s   f o r   u n u s e d   l e t t e r s  	 e n d   r e p e a t  	 s e t   a l l L e t t e r s   t o   " - "   &   " A "   &   " B "   &   " C "   &   " D "   &   " E "   &   " F "   &   " G "   &   " H "   &   " I "   &   " J "   &   " K "   &   " L "   &   " M "   &   " N "   &   " O "   &   " P "   &   " Q "   &   " R "   &   " S "   &   " T "   &   " U "   &   " V "   &   " W "   &   " X "   &   " Y "   &   " Z "  	 s e t   a l l I t e m s   t o   e v e r y   c h a r a c t e r   o f   a l l L e t t e r s   a s   s t r i n g  	 r e p e a t   w i t h   a n I t e m   i n   a l l I t e m s  	 	 i f   c r e a t e d L e t t e r s   d o e s   n o t   c o n t a i n   a n I t e m   t h e n  	 	 	 s e t   l e t t e r N a m e   t o   a n I t e m  	 	 	 s e t   d o c N a m e   t o   l e t t e r N a m e   &   " . h t m l "  	 	 	 t r y  	 	 	 	 m a k e   n e w   f i l e   a t   ( a z M e n u )   w i t h   p r o p e r t i e s   { n a m e : d o c N a m e }  	 	 	 e n d   t r y  	 	 	 t r y  	 	 	 	 i f   { e x i s t s   f i l e   ( d o c N a m e )   i n   a z M e n u }   t h e n  	 	 	 	 	 s e t   d F i l e   t o   f i l e   ( d o c N a m e )   i n   a z M e n u   - - 	 	 	 	 d 8 8 8 8  	 	 	 	 	 s e t   e p i s o d e F i l e   t o   d F i l e   a s   a l i a s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - d 8 P 8 8 8      	 	 	 	 	 s e t   l e t t e r H t m l L i s t   t o   " "  	 	 	 	 	 i f   l e t t e r N a m e   a s   s t r i n g   i s   " - "   t h e n  	 	 	 	 	 	 s e t   l e t t e r N a m e   t o   " # "   a s   s t r i n g  	 	 	 	 	 e n d   i f  	 	 	 	 	 s e t   e p i s o d e T e x t   t o   " < ! D o c t y p e   h t m l > 
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
                         t e x t - d e c o r a t i o n : n o n e ; 
                         d i s p l a y : b l o c k ; 
                         c o l o r : # F F F F F F ; 
                         p a d d i n g : 2 p x ; 
                         f o n t - s i z e : 1 3 ; 
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
                         c o l o r : # 7 0 8 0 9 0 ; p o s i t i o n : a b s o l u t e ; t o p : 2 ; l e f t : 2 0 p x ; h e i g h t : 1 0 0 p x ; w i d t h : 3 0 0 p x ' > "   &   l e t t e r N a m e   &   " < / h e a d e r >                 
                 < u l   c l a s s = ' S E _ n a v '   s t y l e = ' p o s i t i o n : a b s o l u t e ; t o p : 7 5 p x ; ' > "   &   �  	 	 	 	 	 	 l e t t e r H t m l L i s t   &   " 
 	 	   < / u l > 
         < / d i v > 
 < / b o d y > 
 < / h t m l > "  	 	 	 	 	 i g n o r i n g   a p p l i c a t i o n   r e s p o n s e s  	 	 	 	 	 	 s e t   e p i s o d e F i l e   t o   m y   w r i t e C o d e ( e p i s o d e F i l e ,   e p i s o d e T e x t )  	 	 	 	 	 e n d   i g n o r i n g  	 	 	 	 e n d   i f   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8 8 8 8 8 8 8  	 	 	 e n d   t r y  	 	 e n d   i f  	 e n d   r e p e a t   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8  	  e n d   t e l l   - - - - - - - - - - - - - - - - - - - - - - - - - - - -  o n   w r i t e C o d e ( e p i s o d e F i l e ,   e p i s o d e T e x t )   - - d o n ' t   e v e n   a s k   m e   w h y   t h i s   s e c t i o n   w o r k s . . .  	 s e t   b a r   t o   o p e n   f o r   a c c e s s   e p i s o d e F i l e  	 c l o s e   a c c e s s   b a r  	 t r y  	 	 w r i t e   e p i s o d e T e x t   t o   e p i s o d e F i l e  	 	 c l o s e   a c c e s s   e p i s o d e F i l e  	 	 o p e n   f o r   a c c e s s   e p i s o d e F i l e  	 e n d   t r y  	 t r y  	 	 c l o s e   a c c e s s   e p i s o d e F i l e  	 e n d   t r y  	 r e t u r n   e p i s o d e F i l e  e n d   w r i t e C o d e   o n   r e p l a c e _ c h a r s ( t h i s _ t e x t ,   s e a r c h _ s t r i n g ,   r e p l a c e m e n t _ s t r i n g )  	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   t h e   s e a r c h _ s t r i n g  	 s e t   t h e   i t e m _ l i s t   t o   e v e r y   t e x t   i t e m   o f   t h i s _ t e x t  	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   t h e   r e p l a c e m e n t _ s t r i n g  	 s e t   t h i s _ t e x t   t o   t h e   i t e m _ l i s t   a s   s t r i n g  	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " "  	 r e t u r n   t h i s _ t e x t  e n d   r e p l a c e _ c h a r s   o n   n u m b e r C o r r e c t i o n ( t h e N a m e )  	 g l o b a l   t h e N u m b e r s ,   n u m b e r L a b e l  	 s e t   o l d T I D   t o   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s  	 r e p e a t   w i t h   i   f r o m   1   t o   c o u n t   o f   t h e N u m b e r s  	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   i t e m   i   o f   t h e N u m b e r s  	 	 s e t   t h e T e x t B i t s   t o   t e x t   i t e m s   o f   t h e N a m e  	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   i t e m   1   o f   n u m b e r L a b e l  	 	 s e t   t h e N a m e   t o   t h e T e x t B i t s   a s   t e x t  	 e n d   r e p e a t  	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   o l d T I D  	 r e t u r n   t h e N a m e  e n d   n u m b e r C o r r e c t i o n   o n   w r i t e _ t o _ f i l e ( t h i s _ d a t a ,   t a r g e t _ f i l e ,   a p p e n d _ d a t a )  	 t r y  	 	 s e t   t h e   t a r g e t _ f i l e   t o   t h e   t a r g e t _ f i l e   a s   s t r i n g  	 	 s e t   t h e   o p e n _ t a r g e t _ f i l e   t o   o p e n   f o r   a c c e s s   f i l e   t a r g e t _ f i l e   w i t h   w r i t e   p e r m i s s i o n  	 	 i f   a p p e n d _ d a t a   i s   f a l s e   t h e n   s e t   e o f   o f   t h e   o p e n _ t a r g e t _ f i l e   t o   0  	 	 w r i t e   t h i s _ d a t a   t o   t h e   o p e n _ t a r g e t _ f i l e   s t a r t i n g   a t   e o f  	 	 c l o s e   a c c e s s   t h e   o p e n _ t a r g e t _ f i l e  	 	 r e t u r n   t r u e  	 o n   e r r o r  	 	 t r y  	 	 	 c l o s e   a c c e s s   f i l e   t a r g e t _ f i l e  	 	 e n d   t r y  	 	 r e t u r n   f a l s e  	 e n d   t r y  e n d   w r i t e _ t o _ f i l e   o n   t r i m _ l i n e ( f i r s t T e x t ,   t r i m _ c h a r s ,   t r i m _ i n d i c a t o r )  	 - -   0   =   b e g i n n i n g ,   1   =   e n d ,   2   =   b o t h  	 s e t   x   t o   t h e   l e n g t h   o f   t h e   t r i m _ c h a r s  	 - -   T R I M   B E G I N N I N G  	 i f   t h e   t r i m _ i n d i c a t o r   i s   i n   { 0 ,   2 }   t h e n  	 	 r e p e a t   w h i l e   f i r s t T e x t   b e g i n s   w i t h   t h e   t r i m _ c h a r s  	 	 	 t r y  	 	 	 	 s e t   f i r s t T e x t   t o   c h a r a c t e r s   ( x   +   1 )   t h r u   - 1   o f   f i r s t T e x t   a s   s t r i n g  	 	 	 o n   e r r o r  	 	 	 	 - -   t h e   t e x t   c o n t a i n s   n o t h i n g   b u t   t h e   t r i m   c h a r a c t e r s  	 	 	 	 r e t u r n   " "  	 	 	 e n d   t r y  	 	 e n d   r e p e a t  	 e n d   i f  	 - -   T R I M   E N D I N G  	 i f   t h e   t r i m _ i n d i c a t o r   i s   i n   { 1 ,   2 }   t h e n  	 	 r e p e a t   w h i l e   f i r s t T e x t   e n d s   w i t h   t h e   t r i m _ c h a r s  	 	 	 t r y  	 	 	 	 s e t   f i r s t T e x t   t o   c h a r a c t e r s   1   t h r u   - ( x   +   1 )   o f   f i r s t T e x t   a s   s t r i n g  	 	 	 o n   e r r o r  	 	 	 	 - -   t h e   t e x t   c o n t a i n s   n o t h i n g   b u t   t h e   t r i m   c h a r a c t e r s  	 	 	 	 r e t u r n   " "  	 	 	 e n d   t r y  	 	 e n d   r e p e a t  	 e n d   i f  	 r e t u r n   f i r s t T e x t  e n d   t r i m _ l i n e   o n   C a p i t a l i z e F i r s t L e t t e r _ o f E v e r y W o r d ( I n p u t S t r i n g )  	 s e t   n e w S t r i n g   t o   " "  	 r e p e a t   w i t h   c u r r e n t W o r d   i n   ( e v e r y   w o r d   o f   I n p u t S t r i n g )  	 	 d o   s h e l l   s c r i p t   " r u b y   - e   ' p u t s   \ " "   &   c u r r e n t W o r d   &   " \ " . c a p i t a l i z e ' "  	 	 s e t   n e w S t r i n g   t o   n e w S t r i n g   &   r e s u l t   &   "   "  	 e n d   r e p e a t  	 r e t u r n   ( c h a r a c t e r s   1   t h r o u g h   - 2   o f   n e w S t r i n g   a s   t e x t )  e n d   C a p i t a l i z e F i r s t L e t t e r _ o f E v e r y W o r dX o      ���� 0 remote_updater5  ��  ��  U [\[ l     ��������  ��  ��  \ ]^] l 	�	�_����_ r  	�	�`a` b  	�	�bcb b  	�	�ded b  	�	�fgf b  	�	�hih b  	�	�jkj b  	�	�lml m  	�	�nn �oo�  s e t   s i t e s _ f o l d e r   t o   ( H D _ n a m e   &   " : U s e r s : "   &   u s e r N a m e   &   " : L i b r a r y : A p p l i c a t i o n   S u p p o r t : M o i r a i _ w e b _ b u i l d e r : S i t e s : " )   a s   a l i a s  t e l l   a p p l i c a t i o n   " F i n d e r "  	 s e t   f r o n t P a g e   t o   m a k e   n e w   f i l e   a t   s i t e s _ f o l d e r   w i t h   p r o p e r t i e s   { n a m e : " I n d e x . h t m l " }  	 s e t   f r o n t P a g e   t o   f r o n t P a g e   a s   t e x t  	 s e t   t h e T e x t   t o   " < ! D O C T Y P E   h t m l > 
 < h t m l   l a n g = ' e n ' > 
     < h e a d > 
         < m e t a   c o n t e n t = ' t e x t / h t m l ;   c h a r s e t = u t f - 8 '   h t t p - e q u i v = ' C o n t e n t - T y p e ' > 
         < t i t l e > M a i n   P a g e < / t i t l e > 
         < s t y l e > 
                 b o d y   { 
                       b a c k g r o u n d - c o l o r : # 0 0 0 0 0 0 ; 
                 } 
 
                 < ! - -   M a i n   P a g e   - - > 
                   # v i d e o _ b a c k g r o u n d   { 
                         t o p : 0 ; 
                         b o t t o m : 0 ; 
                         l e f t : 0 ; 
                         r i g h t : 0 ; 
                         z - i n d e x : - 1 0 ; 
                     p o s i t i o n : f i x e d ; 
                     h e i g h t : 1 0 0 % ; 
                     w i d t h : 1 0 0 % ; 
                     b a c k g r o u n d - c o l o r : # 0 0 0 0 0 0 ; 
             } 
             
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
                     r i g h t : 1 0 p x ; 
             } 
             
             . b u t t o n : h o v e r   { 
                     v i s i b i l i t y : v i s i b l e ; 
                     o p a c i t y : 1 ; 
                     - w e b k i t - t r a n s i t i o n - d e l a y : 0 s ; 
                     - m o z - t r a n s i t i o n - d e l a y : 0 s ; 
                     - m s - t r a n s i t i o n - d e l a y : 0 s ; 
                     - o - t r a n s i t i o n - d e l a y : 0 s ; 
                     t r a n s i t i o n - d e l a y : 0 s ; 
             } 
             
             # m a i n M e n u   >   u l   { 
     v i s i b i l i t y : v i s i b l e ; 
     o p a c i t y : 0 ; 
     - w e b k i t - t r a n s i t i o n : v i s i b i l i t y   0 s   l i n e a r   0 . 5 s , o p a c i t y   0 . 5 s   l i n e a r ; 
     - m o z - t r a n s i t i o n : v i s i b i l i t y   0 s   l i n e a r   0 . 5 s , o p a c i t y   0 . 5 s   l i n e a r ; 
     - m s - t r a n s i t i o n : v i s i b i l i t y   0 s   l i n e a r   0 . 5 s , o p a c i t y   0 . 5 s   l i n e a r ; 
     - o - t r a n s i t i o n : v i s i b i l i t y   0 s   l i n e a r   0 . 5 s , o p a c i t y   0 . 5 s   l i n e a r ; 
     t r a n s i t i o n : v i s i b i l i t y   0 s   l i n e a r   0 . 5 s , o p a c i t y   0 . 5 s   l i n e a r ; 
     p o s i t i o n : a b s o l u t e ; 
     t o p : 1 0 p x ; 
     l e f t : 5 p x ; 
   z - i n d e x : 1 ; 
 } 
 # m a i n M e n u : h o v e r   >   u l   { 
     v i s i b i l i t y : v i s i b l e ; 
     o p a c i t y : 1 ; 
     - w e b k i t - t r a n s i t i o n - d e l a y : 0 s ; 
     - m o z - t r a n s i t i o n - d e l a y : 0 s ; 
     - m s - t r a n s i t i o n - d e l a y : 0 s ; 
     - o - t r a n s i t i o n - d e l a y : 0 s ; 
     t r a n s i t i o n - d e l a y : 0 s ; 
   z - i n d e x : 1 ; 
     } 
 
               < / s t y l e > 
 < / h e a d > 
 < b o d y > 
         < d i v   c l a s s = ' f l ' > 
 < d i v     i d = ' m a i n M e n u ' > 
 < u l > 
         < a   h r e f = ' T V _ S h o w s / a - z m e n u . h t m l ' > T V   S h o w s < / a > 
         < a   h r e f = ' M o v i e s / a - z m e n u . h t m l ' > M o v i e s < / a > 
         < a   h r e f = ' # ' > F i l e s < / a > 
 < / u l > 
 < / d i v > 
         < v i d e o   i d = ' v i d e o _ b a c k g r o u n d '   p r e l o a d = ' a u t o | m e t a d a t a '   h e i g h t = ' 1 0 0 % ' 
           w i d t h = ' 1 0 0 % '   a u t o p l a y > 
           < s o u r c e   s r c = ' v i d e o s /m o  	�	����� 0 	videoname 	videoNamek m  	�	�pp �qq f '   t y p e = ' v i d e o / w e b m '   / > 
                 < s o u r c e   s r c = ' v i d e o s /i o  	�	����� 0 	videoname 	videoNameg m  	�	�rr �ss d '   t y p e = ' v i d e o / m p 4 '   / > 
                 < s o u r c e   s r c = ' v i d e o s /e o  	�	����� 0 	videoname 	videoNamec m  	�	�tt �uu� '   t y p e = ' v i d e o / o g g '   / > 
                 < / v i d e o > 
     < b u t t o n   i d = ' f u l l s c r e e n v i d '   c l a s s = ' b u t t o n ' > F u l l s c r e e n   v i d e o < / b u t t o n > 
 < / d i v > 
 < s c r i p t > 
             ( f u n c t i o n ( w i n d o w ,   d o c u m e n t ) { 
 	 	 	 v a r   $   =   f u n c t i o n ( s e l e c t o r , c o n t e x t ) { r e t u r n ( c o n t e x t | | d o c u m e n t ) . q u e r y S e l e c t o r ( s e l e c t o r ) } ; 
 	 	 	 
 	 	 	 v a r   v i d e o     =   $ ( \ " v i d e o \ " ) , 
 	 	 	 	 i f r a m e   =   $ ( \ " i f r a m e \ " ) , 
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
 	 	 	 v a r   f u l l s c r e e n v i d e o   =   f u l l s c r e e n ( d o c u m e n t . c r e a t e E l e m e n t ( \ " v i d e o \ " ) ) ; 
 	 	 	 
 	 	 	 / /   W e b k i t   u s e s   ' r e q u e s t F u l l S c r e e n '   f o r   n o n   v i d e o   e l e m e n t s 
 	 	 	 v a r   f u l l s c r e e n o t h e r   =   f u l l s c r e e n ( d o c u m e n t . c r e a t e E l e m e n t ( \ " i f r a m e \ " ) ) ; 
 
 	 	 	 i f ( ! f u l l s c r e e n )   { 
 	 	 	 	 a l e r t ( \ " F u l l s c r e e n   w o n ' t   w o r k ,   p l e a s e   m a k e   s u r e   y o u ' r e   u s i n g   a   b r o w s e r   t h a t   s u p p o r t s   i t   a n d   y o u   h a v e   e n a b l e d   t h e   f e a t u r e \ " ) ; 
 	 	 	 	 r e t u r n ; 
 	 	 	 } 
 	 	 	 
 	 	 	 / /   S h o u l d   a d d   p r e f i x e d   e v e n t s   f o r   p o t e n t i a l   m s / o   o r   u n p r e f i x e d   s u p p o r t   t o o 
 	 	 	 v i d e o . a d d E v e n t L i s t e n e r ( \ " w e b k i t f u l l s c r e e n c h a n g e \ " , f u n c t i o n ( ) { 
 	 	 	 	 c o n s o l e . l o g ( d o c u m e n t . w e b k i t I s F u l l S c r e e n ) ; 
 	 	 	 } ,   f a l s e ) ; 
 	 	 	 v i d e o . a d d E v e n t L i s t e n e r ( \ " m o z f u l l s c r e e n c h a n g e \ " , f u n c t i o n ( ) { 
 	 	 	 	 c o n s o l e . l o g ( d o c u m e n t . m o z F u l l S c r e e n ) ; 
 	 	 	 } ,   f a l s e ) ; 
 
 	 	 	 $ ( \ " # f u l l s c r e e n v i d \ " ) . a d d E v e n t L i s t e n e r ( \ " c l i c k \ " ,   f u n c t i o n ( ) { 
 	 	 	 	 / /   T h e   t e s t   r e t u r n s   a   s t r i n g   s o   w e   c a n   e a s i l y   c a l l   i t   o n   a   c l i c k   e v e n t 
 	 	 	 	 v i d e o [ f u l l s c r e e n v i d e o ] ( ) ; 
 	 	 	 } ,   f a l s e ) ; 
 	 	 	 $ ( \ " # f u l l s c r e e n i f r a m e \ " ) . a d d E v e n t L i s t e n e r ( \ " c l i c k \ " ,   f u n c t i o n ( ) { 
 	 	 	 	 / /   i f r a m e   f u l l s c r e e n   a n d   n o n   v i d e o   e l e m e n t s   i n   w e b k i t   u s e   r e q u e s t   o v e r   e n t e r 
 	 	 	 	 i f r a m e [ f u l l s c r e e n o t h e r ] ( ) ; 
 	 	 	 } ,   f a l s e ) ; 
 	 	 } ) ( t h i s ,   t h i s . d o c u m e n t ) ; 
 
         < / s c r i p t > 
 < / b o d y > 
 < / h t m l > "  	 s e t   t h e   o p e n _ f r o n t P a g e   t o   o p e n   f o r   a c c e s s   f i l e   f r o n t P a g e   w i t h   w r i t e   p e r m i s s i o n  	 w r i t e   t h e T e x t   t o   f i l e   f r o n t P a g e  	 c l o s e   a c c e s s   o p e n _ f r o n t P a g e  e n d   t e l la o      ���� 0 index_updater  ��  ��  ^ vwv l     ��������  ��  ��  w xyx l 	�
Oz����z Z  	�
O{|��}{ = 	�	�~~ o  	�	����� 0 os_query OS_Query m  	�	��� ���  W i n d o w s| l 	�	����� k  	�	��� ��� I 	�	������
�� .sysodlogaskr        TEXT� b  	�	���� b  	�	���� b  	�	���� m  	�	��� ��� � P l e a s e   s e l e c t   t h e   r o o t   d i r e c t o r y   f o r   y o u r   w e b s i t e   o n   t h e   r e m o t e   s e r v e r .� o  	�	���
�� 
ret � o  	�	���
�� 
ret � m  	�	��� ��� D ( h i n t :   l o o k   i n   t h e   m o u n t e d   v o l u m e )��  � ��� l 	�	����� r  	�	���� I 	�	������
�� .sysostflalis    ��� null��  � �����
�� 
prmp� m  	�	��� ��� D S e l e c t   y o u r   w e b s i t e   r o o t   d i r e c t o r y��  � o      ���� 0 
dumpfolder 
dumpFolder� . (make this a variable outside of commands   � ��� P m a k e   t h i s   a   v a r i a b l e   o u t s i d e   o f   c o m m a n d s� ��� l 	�	����� r  	�	���� c  	�	���� o  	�	����� 0 
dumpfolder 
dumpFolder� m  	�	���
�� 
alis� o      ���� 0 theloc theLoc� 9 3 gives server root location (use theLoc for coding)   � ��� f   g i v e s   s e r v e r   r o o t   l o c a t i o n   ( u s e   t h e L o c   f o r   c o d i n g )� ��� l 	�	���������  ��  ��  � ���� r  	�	���� m  	�	��� ���� t e l l   a p p l i c a t i o n   " F i n d e r "  	 s e t   h o m e S i t e s   t o   f o l d e r   " S i t e s "   o f   h o m e   - -   t h i s   p r e p a r e s   t h e   f o l d e r s   t o   m o v e  	 s e t   h o m e M o v i e s   t o   f o l d e r   " M o v i e s "   o f   h o m e S i t e s  	 s e t   h o m e T V _ S h o w s   t o   f o l d e r   " T V _ S h o w s "   o f   h o m e S i t e s  	 s e t   h o m e V i d e o s   t o   f o l d e r   " v i d e o s "   o f   h o m e S i t e s  	 s e t   h o m e S u b t i t l e s   t o   f o l d e r   " s u b t i t l e s "   o f   h o m e V i d e o s  	 m o v e   h o m e M o v i e s   t o   d u m p F o l d e r   w i t h   r e p l a c i n g - -   h e r e   d o w n   m o v e s   t h e   f i l e s  	 m o v e   h o m e T V _ S h o w s   t o   d u m p F o l d e r   w i t h   r e p l a c i n g  	 m o v e   h o m e V i d e o s   t o   d u m p F o l d e r   w i t h   r e p l a c i n g  	 e j e c t   r e m o t e S e r v e r  e n d   t e l l� o      ����  0 host_to_server host_to_Server��  � "  !!! new section for windows   � ��� 8   ! ! !   n e w   s e c t i o n   f o r   w i n d o w s��  } r  	�
O��� b  	�
K��� b  	�
G��� b  	�
C��� b  	�
?��� b  	�
;��� b  	�
7��� b  	�
3��� b  	�
1��� b  	�
-��� b  	�
)��� b  	�
%��� b  	�
!��� b  	�
��� b  	�
��� b  	�
��� b  	�
��� b  	�
��� b  	�
��� b  	�
��� b  	�
��� b  	�	���� m  	�	��� ���  a c t i v a t e   a p p l i c a t i o n   " T e r m i n a l "  t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "  	 t e l l   p r o c e s s   " T e r m i n a l "  	 	 k e y s t r o k e   " r s y n c   - a v z e   s s h   \ " / u s e r s /� o  	�	����� 0 username userName� m  	�
�� ��� � / l i b r a r y / a p p l i c a t i o n   s u p p o r t / M o i r a i _ w e b _ b u i l d e r / s i t e s / m o v i e s / \ "  � o  

����  0 serverlocation serverLocation� o  


���� 0 rootlocation rootLocation� m  

�� ��� 6 / M o v i e s / "   &   r e t u r n  	 	 d e l a y  � o  

���� 0 thewait theWait� m  

�� ��� \ 
 	 	 b e e p  	 	 k e y s t r o k e   " r s y n c   - a v z e   s s h   \ " / u s e r s /� o  

���� 0 username userName� m  

�� ��� � / l i b r a r y / a p p l i c a t i o n   s u p p o r t / M o i r a i _ w e b _ b u i l d e r / s i t e s / t v _ s h o w s / \ "  � o  

 ����  0 serverlocation serverLocation� o  
!
$���� 0 rootlocation rootLocation� m  
%
(�� ��� : / T V _ S h o w s / "   &   r e t u r n  	 	 d e l a y  � o  
)
,���� 0 thewait theWait� m  
-
0�� ��� \ 
 	 	 b e e p 
 	 	 k e y s t r o k e   " r s y n c   - a v z e   s s h   \ " / u s e r s /� o  
1
2���� 0 username userName� m  
3
6�� ��� � / l i b r a r y / a p p l i c a t i o n   s u p p o r t / M o i r a i _ w e b _ b u i l d e r / s i t e s / i n d e x . h t m l \ "  � o  
7
:��  0 serverlocation serverLocation� o  
;
>�~�~ 0 rootlocation rootLocation� m  
?
B�� ��� ( / "   &   r e t u r n 
 	 	 d e l a y  � o  
C
F�}�} 0 thewait theWait� m  
G
J�� ��� � 
 	 
 	 e n d   t e l l  	 t e l l   a p p l i c a t i o n   " F i n d e r "   t o   q u i t   a p p l i c a t i o n   " T e r m i n a l " 
 	 
 	  e n d   t e l l� o      �|�|  0 host_to_server host_to_Server��  ��  y ��� l     �{�z�y�{  �z  �y  � ��� l 
P
W��x�w� r  
P
W��� m  
P
S�� ���* t e l l   a p p l i c a t i o n   " F i n d e r "  	 s e t   H D _ n a m e   t o   g e t   n a m e   o f   s t a r t u p   d i s k  	 s e t   u s e r N a m e   t o   d o   s h e l l   s c r i p t   " w   - h   |   s o r t   - u   - t '   '   - k 1 , 1   |   w h i l e   r e a d   u s e r   e t c 
 d o 
     h o m e d i r = $ ( d s c l   .   - r e a d   / U s e r s / $ u s e r   N F S H o m e D i r e c t o r y   |   c u t   - d '   '   - f 2 ) 
     e c h o   $ u s e r 
 d o n e "  	 s e t   s i t e s F o l d e r   t o   H D _ n a m e   &   " : U s e r s : "   &   u s e r N a m e   &   " : L i b r a r y : A p p l i c a t i o n   S u p p o r t : M o i r a i _ w e b _ b u i l d e r : S i t e s : "   a s   a l i a s  	 d e l e t e   e v e r y   i t e m   i n   s i t e s F o l d e r  e n d   t e l l� o      �v�v 0 folderclearer folderClearer�x  �w  � ��� l     �u�t�s�u  �t  �s  � ��� l 
X
���r�q� r  
X
�� � b  
X
� b  
X
� b  
X
� b  
X
� b  
X
�	
	 b  
X
� b  
X
� b  
X
� b  
X
� b  
X
� b  
X
 b  
X
{ b  
X
w b  
X
s b  
X
o b  
X
k  b  
X
g!"! b  
X
c#$# b  
X
_%&% o  
X
[�p�p 0 
thelicense 
theLicense& o  
[
^�o
�o 
ret $ o  
_
b�n
�n 
ret " o  
c
f�m�m  0 server_to_host server_to_Host  o  
g
j�l
�l 
ret  o  
k
n�k
�k 
ret  o  
o
r�j�j 0 remote_updater1   o  
s
v�i�i 0 remote_updater2   o  
w
z�h�h 0 remote_updater3   o  
{
~�g�g 0 remote_updater4   o  

��f�f 0 remote_updater5   o  
�
��e
�e 
ret  o  
�
��d
�d 
ret  o  
�
��c�c 0 index_updater   o  
�
��b
�b 
ret 
 o  
�
��a
�a 
ret  o  
�
��`�`  0 host_to_server host_to_Server o  
�
��_
�_ 
ret  o  
�
��^
�^ 
ret  o  
�
��]�] 0 folderclearer folderClearer  o      �\�\ 0 
scripttext 
scriptText�r  �q  � '(' l 
�
�)�[�Z) r  
�
�*+* I 
�
��Y,-
�Y .rdwropenshor       file, 4  
�
��X.
�X 
file. o  
�
��W�W 0 	buildfile 	buildFile- �V/�U
�V 
perm/ m  
�
��T
�T boovtrue�U  + l     0�S�R0 o      �Q�Q  0 open_buildfile open_buildFile�S  �R  �[  �Z  ( 121 l 
�
�3�P�O3 I 
�
��N45
�N .rdwrwritnull���     ****4 o  
�
��M�M 0 
scripttext 
scriptText5 �L6�K
�L 
refn6 o  
�
��J�J  0 open_buildfile open_buildFile�K  �P  �O  2 787 l 
�
�9�I�H9 I 
�
��G:�F
�G .rdwrclosnull���     ****: l 
�
�;�E�D; o  
�
��C�C  0 open_buildfile open_buildFile�E  �D  �F  �I  �H  8 <=< l     �B�A�@�B  �A  �@  = >?> l     �?@A�?  @ G A-----------------------------------------------------------------   A �BB � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -? C�>C i     DED I      �=F�<�= 0 replace_chars  F GHG o      �;�; 0 	this_text  H IJI o      �:�: 0 search_string  J K�9K o      �8�8 0 replacement_string  �9  �<  E k      LL MNM r     OPO l    Q�7�6Q o     �5�5 0 search_string  �7  �6  P n     RSR 1    �4
�4 
txdlS 1    �3
�3 
ascrN TUT r    VWV n    	XYX 2    	�2
�2 
citmY o    �1�1 0 	this_text  W l     Z�0�/Z o      �.�. 0 	item_list  �0  �/  U [\[ r    ]^] l   _�-�,_ o    �+�+ 0 replacement_string  �-  �,  ^ n     `a` 1    �*
�* 
txdla 1    �)
�) 
ascr\ bcb r    ded c    fgf l   h�(�'h o    �&�& 0 	item_list  �(  �'  g m    �%
�% 
TEXTe o      �$�$ 0 	this_text  c iji r    klk m    mm �nn  l n     opo 1    �#
�# 
txdlp 1    �"
�" 
ascrj q�!q L     rr o    � �  0 	this_text  �!  �>       B�stuvw�xyz{|}~��������H�������RY������������������������
�	��������  s @�� ����������������������������������������������������������������������������������������������������������������������������� 0 replace_chars  
�  .aevtoappnull  �   � ****�� 0 username userName�� 0 buildfolder buildFolder�� 
0 escape  �� 0 locationquery locationQuery��  0 serverlocation serverLocation�� 0 oldtid oldTID�� "0 remote_username remote_userName�� 0 serverip serverIP�� 0 thecheck theCheck�� 0 os_query OS_Query�� 0 remote_xbmc_database  ��  0 serverlocquery serverLocQuery�� 0 rootlocation rootLocation�� 0 checkno2 checkNo2�� 0 
indexquery 
indexQuery�� 0 	videoname 	videoName�� 0 	check_no2  �� 0 presubquery preSubQuery�� 0 	waitquery 	waitQuery�� 0 thewait theWait�� 0 	buildfile 	buildFile�� 0 hd_name HD_name�� 0 addondir addonDir�� 0 
thelicense 
theLicense��  0 server_to_host server_to_Host�� 0 remote_updater1  �� 0 remote_updater2  �� 0 remote_updater3  �� 0 remote_updater4  �� 0 remote_updater5  �� 0 index_updater  ��  0 host_to_server host_to_Server�� 0 folderclearer folderClearer�� 0 
scripttext 
scriptText��  0 open_buildfile open_buildFile��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  t ��E���������� 0 replace_chars  �� ����� �  �������� 0 	this_text  �� 0 search_string  �� 0 replacement_string  ��  � ���������� 0 	this_text  �� 0 search_string  �� 0 replacement_string  �� 0 	item_list  � ��������m
�� 
ascr
�� 
txdl
�� 
citm
�� 
TEXT�� !���,FO��-E�O���,FO��&E�O���,FO�u �����������
�� .aevtoappnull  �   � ****� k    
���  ��  ��  ��  $��  2��  7��  ���  ��� ��� �� $�� ��� ��� ���  �� :�� P�� d�� ��� ��� ��� �� �� ��� ��� T�� ]�� x�� ��� ��� '�� 1�� 7����  ��  ��  � ���� 0 anitem anItem�� ������ "���� .�������� E�� J L������������ ^������ ��� � ��� � � ����� � � � � � � ��� ������� � � ��� � � ���-2������FLPS��^a��ku������������������������� ��279����WY_cf��pz������������~��}�|�������������  $(,048<@DHLPTX\`dhlptx|��������������������������������  $(,048<@DHLPTX\`dhlptx|�������������������������������� �{�z�y-/58�xDH�wLa�v�u�t�s�r_�q�p�o�n�m���l�k��j�i���h�����g���f�e)�d:�c�b�a]�`�_�����^���]���\���579<LN�[RY�Znprt�Y�����X�W��V������������U�T�S�R�Q�P�O�N
�� .sysoexecTEXT���     TEXT�� 0 username userName
�� .sysobeepnull��� ��� long
�� .sysodlogaskr        TEXT
�� 
prmp
�� .sysostflalis    ��� null
�� 
alis�� 0 buildfolder buildFolder�� 
0 escape  
�� 
dtxt�� 0 locationquery locationQuery
�� 
ttxt��  0 serverlocation serverLocation
�� 
ascr
�� 
txdl�� 0 oldtid oldTID
�� 
citm�� "0 remote_username remote_userName�� 0 serverip serverIP
�� 
ret 
�� 
btns�� 0 thecheck theCheck
�� 
bhit�� 
�� .gtqpchltns    @   @ ns  
�� 
ctxt�� 0 os_query OS_Query�� 0 remote_xbmc_database  �� 0 innerescape innerEscape
�� 
utxt�� 0 
drivequery 
driveQuery�� 0 	drivename 	driveName�� 0 
innercheck 
innerCheck�� 0 replace_chars  
�� .aevtmvolnull���     TEXT�� 0 remoteserver remoteServer�� (0 mysterydestination mysteryDestination��  0 serverlocquery serverLocQuery�� 0 rootlocation rootLocation�� 0 checkno2 checkNo2�� 0 
indexquery 
indexQuery�� 0 	videoname 	videoName�� 0 	check_no2  �� 0 presubquery preSubQuery� �~ 0 extensionlist extensionList
�} 
mlsl�| 0 subtypequery subTypeQuery�{ ��z 0 subtitlequery subtitleQuery�y 0 
menuchoice 
menuChoice�x 0 	waitquery 	waitQuery�w 0 thewait theWait
�v 
kocl
�u 
file
�t 
insh
�s 
prdt
�r 
pnam�q 
�p .corecrel****      � null�o 0 	buildfile 	buildFile
�n 
sdsk�m 0 hd_name HD_name�l 0 addondir addonDir
�k 
cfol
�j 
TEXT
�i .coredoexbool        obj �h 0 	moiraidir 	moiraiDir�g 0 
thelicense 
theLicense�f  0 server_to_host server_to_Host�e 0 remote_updater1  �d 0 subtitlehtml subtitleHTML�c 0 
allchoices 
allChoices
�b 
cobj
�a .corecnte****       ****�` 0 
theheading 
theHeading�_ 0 namelang nameLang�^ 0 	totallist 	totalList�] 0 remote_updater2  �\ 0 remote_updater3  �[ 0 remote_updater4  �Z 0 remote_updater5  �Y 0 index_updater  �X 0 
dumpfolder 
dumpFolder�W 0 theloc theLoc�V  0 host_to_server host_to_Server�U 0 folderclearer folderClearer�T 0 
scripttext 
scriptText
�S 
perm
�R .rdwropenshor       file�Q  0 open_buildfile open_buildFile
�P 
refn
�O .rdwrwritnull���     ****
�N .rdwrclosnull���     ****��
��j E�O*j O�j O*��l �&E�OfE�O �h�e *j O����%l E` O_ a ,E` O_ a ,E` Oa _ a ,FO_ a k/E` O_ a l/E` O_ _ a ,FOa _ %_ %_ %_ %a %_ %_ %_ %a %a a a  a !mvl E` "O_ "a #,a $  fE�Y _ "a #,a %  eE�Y h[OY�4Oa &a 'a (a )a *a +v�a ,l -a .&E` /O_ /a 0  a 1_ %a 2%E` 3Y7_ /a 4  a 5_ %a 6%E` 3Y_ /a 7  a 8_ %a 9%E` 3Y �_ /a :  �fE` ;O �h_ ;e *j Oa <�a =a >&l E` ?O_ ?a ,E` @Oa A_ %_ %_ @%a a Ba Ca Dmvl E` EO*_ @a Fa Gm+ HE` @O_ Ea #,a I  
fE` ;Y _ Ea #,a J  
eE` ;Y h[OY�kOa K_ %a L%_ @%j M�&E` NOPY hO_ /a O  (a P�a Qa R%l E` SOa T_ Sa ,%E` 3Y hO_ /a U �fE�O �h�e *j Oa V�a Wa X%l E` YOa Z_ Ya ,%E` [Oa \_ %_ %_ [%_ %_ %_ %a ]%a a ^a _a `mvl E` aO_ aa #,a b  fE�Y _ aa #,a c  eE�Y h[OY�pY hOfE�O �h�e *j Oa d�a ea f%l E` gO_ ga ,E` hOa i_ %_ %_ h%_ %_ %_ %_ %a j%a a ka la mmvl E` nO_ na #,a o  fE�Y _ aa #,a p  eE�Y h[OY�pO*j Oa qa a ra slvl E` tO_ ta #,a u a va wa xa ya zvE` {O_ {�a |a }fa z -a .&E` ~Oa a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a aaaaaaaaa	a
aaaaaaavE`O_�aa }ea z -a .&E`Y hOa_ %_ %a%a aalvl E`O_a #,a  aE`Y 	aE`Oa "*aa a!�a"a#a$la%&E`'UOa �*a(,a#,EE`)O_)a*%�%a+%�&E`,O_,a-a.a/&/j0 �*aa-a!_,a"a#a1la%&O_,a-a2a/&/E`3O*aa-a!_3a"a#a4la%&O*aa a!_3a"a#a5la%&O*aa a!_3a"a#a6la%&Y hUO_'a .&E`'Oa7E`8O_ /a9  a:E`;Y #a<�%a=%_ %_ 3%a>%_%a?%E`;Oa@E`AO_ ta #,aB  �jvE`CO_ a ,E` OaD_ a ,FO_a -E`EO �_E[aaFlGkh  _� �_ _ a ,FO_ a ,E` OaH_ a ,FO�a k/E`IO�a l/E`JO_ _ a ,FO_ a ,E` OaK_ a ,FOaL_J%_ ~%aM%_I%aN%_J%aO%_ %E`PO_P_C6GY h[OY�`OaQ_C%aR%E`SY 	aTE`SOaUE`VO_ ta #,aW  �jvE`CO_ a ,E` OaX_ a ,FO_a -E`EO �_E[aaFlGkh  _� �_ _ a ,FO_ a ,E` OaY_ a ,FO�a k/E`IO�a l/E`JO_ _ a ,FO_ a ,E` OaZ_ a ,FOa[_J%_ ~%a\%_I%a]%_J%a^%_ %E`PO_P_C6GY h[OY�`Oa__C%a`%E`aY 	abE`aOacE`dOae_ h%af%_ h%ag%_ h%ah%E`iO_ /aj  8ak_ %_ %al%j O*�aml E`nO_n�&E`oOapE`qY War�%as%_ %_ [%at%_%au%�%av%_ %_ [%aw%_%ax%�%ay%_ %_ [%az%_%a{%E`qOa|E`}O_8_ %_ %_;%_ %_ %_A%_S%_V%_a%_d%_ %_ %_i%_ %_ %_q%_ %_ %_}%E`~O*a _'/ael�E`�O_~a�_�l�O_�j�v ���  m a r i s e l a b a b c o c kwalis      Macintosh HD               Ʉ�zH+   �#Desktop                                                         �,�SI�        ����  I                 Ʌ�      �S��      D e s k t o p    M a c i n t o s h   H D  Users/mariselababcock/Desktop   /    ��  
� boovtruex �My�
�M 
ttxty ��� ( e d m u n d o @ 1 9 2 . 1 6 8 . 0 . 2 5� �L��K
�L 
bhit� ���  O K�K  z �J��J �  �� ���  { ���  e d m u n d o| ���  1 9 2 . 1 6 8 . 0 . 2 5} �I��H
�I 
bhit� ���  y e s�H  ~ ��� 
 L i n u x ��� f : h o m e / e d m u n d o / . x b m c / u s e r d a t a / D a t a b a s e / M y V i d e o s 6 0 . d b� �G��
�G 
ttxt� ���  ~ / D e s k t o p� �F��E
�F 
bhit� ���  O K�E  � ���  : ~ / D e s k t o p� �D��C
�D 
bhit� ���  y e s�C  � �B��
�B 
ttxt� ��� 2 F r o n t - W e b p a g e - P r o j e c t . m o v� �A��@
�A 
bhit� ���  O K�@  � �?��>
�? 
bhit� ���  y e s�>  � �=��<
�= 
bhit� ���  N o�<  � �;��:
�; 
bhit� ���  N o�:  � ��� � M a c i n t o s h   H D : U s e r s : m a r i s e l a b a b c o c k : D e s k t o p : M o i r a i   A u t o - U p d a t e r . s c p t� ���  M a c i n t o s h   H D��alis    �  Macintosh HD               Ʉ�zH+   �Application Support                                             ��SI�        ����  	                Library     Ʌ�      �S��     � �#  �>  >Macintosh HD:Users:mariselababcock:Library:Application Support  (  A p p l i c a t i o n   S u p p o r t    M a c i n t o s h   H D  1Users/mariselababcock/Library/Application Support   /    ��  � ���� a c t i v a t e   a p p l i c a t i o n   " T e r m i n a l "  t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "  	 t e l l   p r o c e s s   " T e r m i n a l "  	 	 k e y s t r o k e   " c d   / u s e r s / m a r i s e l a b a b c o c k / l i b r a r y / ' a p p l i c a t i o n   s u p p o r t ' / M o i r a i _ w e b _ b u i l d e r ;   s c p   e d m u n d o @ 1 9 2 . 1 6 8 . 0 . 2 5 : h o m e / e d m u n d o / . x b m c / u s e r d a t a / D a t a b a s e / M y V i d e o s 6 0 . d b   M y V i d e o s 6 0 . d b "   &   r e t u r n  	 	 d e l a y   2 0  	 e n d   t e l l  	 t e l l   a p p l i c a t i o n   " F i n d e r "   t o   q u i t   a p p l i c a t i o n   " T e r m i n a l "  e n d   t e l l� ���(0  s e t   s i t e s _ f o l d e r   t o   ( H D _ n a m e   &   " : U s e r s : "   &   u s e r N a m e   &   " : L i b r a r y : A p p l i c a t i o n   S u p p o r t : M o i r a i _ w e b _ b u i l d e r : S i t e s : " )   a s   a l i a s  t e l l   a p p l i c a t i o n   " F i n d e r "  	 s e t   f r o n t P a g e   t o   m a k e   n e w   f i l e   a t   s i t e s _ f o l d e r   w i t h   p r o p e r t i e s   { n a m e : " I n d e x . h t m l " }  	 s e t   f r o n t P a g e   t o   f r o n t P a g e   a s   t e x t  	 s e t   t h e T e x t   t o   " < ! D O C T Y P E   h t m l > 
 < h t m l   l a n g = ' e n ' > 
     < h e a d > 
         < m e t a   c o n t e n t = ' t e x t / h t m l ;   c h a r s e t = u t f - 8 '   h t t p - e q u i v = ' C o n t e n t - T y p e ' > 
         < t i t l e > M a i n   P a g e < / t i t l e > 
         < s t y l e > 
                 b o d y   { 
                       b a c k g r o u n d - c o l o r : # 0 0 0 0 0 0 ; 
                 } 
 
                 < ! - -   M a i n   P a g e   - - > 
                   # v i d e o _ b a c k g r o u n d   { 
                         t o p : 0 ; 
                         b o t t o m : 0 ; 
                         l e f t : 0 ; 
                         r i g h t : 0 ; 
                         z - i n d e x : - 1 0 ; 
                     p o s i t i o n : f i x e d ; 
                     h e i g h t : 1 0 0 % ; 
                     w i d t h : 1 0 0 % ; 
                     b a c k g r o u n d - c o l o r : # 0 0 0 0 0 0 ; 
             } 
             
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
                     r i g h t : 1 0 p x ; 
             } 
             
             . b u t t o n : h o v e r   { 
                     v i s i b i l i t y : v i s i b l e ; 
                     o p a c i t y : 1 ; 
                     - w e b k i t - t r a n s i t i o n - d e l a y : 0 s ; 
                     - m o z - t r a n s i t i o n - d e l a y : 0 s ; 
                     - m s - t r a n s i t i o n - d e l a y : 0 s ; 
                     - o - t r a n s i t i o n - d e l a y : 0 s ; 
                     t r a n s i t i o n - d e l a y : 0 s ; 
             } 
             
             # m a i n M e n u   >   u l   { 
     v i s i b i l i t y : v i s i b l e ; 
     o p a c i t y : 0 ; 
     - w e b k i t - t r a n s i t i o n : v i s i b i l i t y   0 s   l i n e a r   0 . 5 s , o p a c i t y   0 . 5 s   l i n e a r ; 
     - m o z - t r a n s i t i o n : v i s i b i l i t y   0 s   l i n e a r   0 . 5 s , o p a c i t y   0 . 5 s   l i n e a r ; 
     - m s - t r a n s i t i o n : v i s i b i l i t y   0 s   l i n e a r   0 . 5 s , o p a c i t y   0 . 5 s   l i n e a r ; 
     - o - t r a n s i t i o n : v i s i b i l i t y   0 s   l i n e a r   0 . 5 s , o p a c i t y   0 . 5 s   l i n e a r ; 
     t r a n s i t i o n : v i s i b i l i t y   0 s   l i n e a r   0 . 5 s , o p a c i t y   0 . 5 s   l i n e a r ; 
     p o s i t i o n : a b s o l u t e ; 
     t o p : 1 0 p x ; 
     l e f t : 5 p x ; 
   z - i n d e x : 1 ; 
 } 
 # m a i n M e n u : h o v e r   >   u l   { 
     v i s i b i l i t y : v i s i b l e ; 
     o p a c i t y : 1 ; 
     - w e b k i t - t r a n s i t i o n - d e l a y : 0 s ; 
     - m o z - t r a n s i t i o n - d e l a y : 0 s ; 
     - m s - t r a n s i t i o n - d e l a y : 0 s ; 
     - o - t r a n s i t i o n - d e l a y : 0 s ; 
     t r a n s i t i o n - d e l a y : 0 s ; 
   z - i n d e x : 1 ; 
     } 
 
               < / s t y l e > 
 < / h e a d > 
 < b o d y > 
         < d i v   c l a s s = ' f l ' > 
 < d i v     i d = ' m a i n M e n u ' > 
 < u l > 
         < a   h r e f = ' T V _ S h o w s / a - z m e n u . h t m l ' > T V   S h o w s < / a > 
         < a   h r e f = ' M o v i e s / a - z m e n u . h t m l ' > M o v i e s < / a > 
         < a   h r e f = ' # ' > F i l e s < / a > 
 < / u l > 
 < / d i v > 
         < v i d e o   i d = ' v i d e o _ b a c k g r o u n d '   p r e l o a d = ' a u t o | m e t a d a t a '   h e i g h t = ' 1 0 0 % ' 
           w i d t h = ' 1 0 0 % '   a u t o p l a y > 
           < s o u r c e   s r c = ' v i d e o s / F r o n t - W e b p a g e - P r o j e c t . m o v '   t y p e = ' v i d e o / w e b m '   / > 
                 < s o u r c e   s r c = ' v i d e o s / F r o n t - W e b p a g e - P r o j e c t . m o v '   t y p e = ' v i d e o / m p 4 '   / > 
                 < s o u r c e   s r c = ' v i d e o s / F r o n t - W e b p a g e - P r o j e c t . m o v '   t y p e = ' v i d e o / o g g '   / > 
                 < / v i d e o > 
     < b u t t o n   i d = ' f u l l s c r e e n v i d '   c l a s s = ' b u t t o n ' > F u l l s c r e e n   v i d e o < / b u t t o n > 
 < / d i v > 
 < s c r i p t > 
             ( f u n c t i o n ( w i n d o w ,   d o c u m e n t ) { 
 	 	 	 v a r   $   =   f u n c t i o n ( s e l e c t o r , c o n t e x t ) { r e t u r n ( c o n t e x t | | d o c u m e n t ) . q u e r y S e l e c t o r ( s e l e c t o r ) } ; 
 	 	 	 
 	 	 	 v a r   v i d e o     =   $ ( \ " v i d e o \ " ) , 
 	 	 	 	 i f r a m e   =   $ ( \ " i f r a m e \ " ) , 
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
 	 	 	 v a r   f u l l s c r e e n v i d e o   =   f u l l s c r e e n ( d o c u m e n t . c r e a t e E l e m e n t ( \ " v i d e o \ " ) ) ; 
 	 	 	 
 	 	 	 / /   W e b k i t   u s e s   ' r e q u e s t F u l l S c r e e n '   f o r   n o n   v i d e o   e l e m e n t s 
 	 	 	 v a r   f u l l s c r e e n o t h e r   =   f u l l s c r e e n ( d o c u m e n t . c r e a t e E l e m e n t ( \ " i f r a m e \ " ) ) ; 
 
 	 	 	 i f ( ! f u l l s c r e e n )   { 
 	 	 	 	 a l e r t ( \ " F u l l s c r e e n   w o n ' t   w o r k ,   p l e a s e   m a k e   s u r e   y o u ' r e   u s i n g   a   b r o w s e r   t h a t   s u p p o r t s   i t   a n d   y o u   h a v e   e n a b l e d   t h e   f e a t u r e \ " ) ; 
 	 	 	 	 r e t u r n ; 
 	 	 	 } 
 	 	 	 
 	 	 	 / /   S h o u l d   a d d   p r e f i x e d   e v e n t s   f o r   p o t e n t i a l   m s / o   o r   u n p r e f i x e d   s u p p o r t   t o o 
 	 	 	 v i d e o . a d d E v e n t L i s t e n e r ( \ " w e b k i t f u l l s c r e e n c h a n g e \ " , f u n c t i o n ( ) { 
 	 	 	 	 c o n s o l e . l o g ( d o c u m e n t . w e b k i t I s F u l l S c r e e n ) ; 
 	 	 	 } ,   f a l s e ) ; 
 	 	 	 v i d e o . a d d E v e n t L i s t e n e r ( \ " m o z f u l l s c r e e n c h a n g e \ " , f u n c t i o n ( ) { 
 	 	 	 	 c o n s o l e . l o g ( d o c u m e n t . m o z F u l l S c r e e n ) ; 
 	 	 	 } ,   f a l s e ) ; 
 
 	 	 	 $ ( \ " # f u l l s c r e e n v i d \ " ) . a d d E v e n t L i s t e n e r ( \ " c l i c k \ " ,   f u n c t i o n ( ) { 
 	 	 	 	 / /   T h e   t e s t   r e t u r n s   a   s t r i n g   s o   w e   c a n   e a s i l y   c a l l   i t   o n   a   c l i c k   e v e n t 
 	 	 	 	 v i d e o [ f u l l s c r e e n v i d e o ] ( ) ; 
 	 	 	 } ,   f a l s e ) ; 
 	 	 	 $ ( \ " # f u l l s c r e e n i f r a m e \ " ) . a d d E v e n t L i s t e n e r ( \ " c l i c k \ " ,   f u n c t i o n ( ) { 
 	 	 	 	 / /   i f r a m e   f u l l s c r e e n   a n d   n o n   v i d e o   e l e m e n t s   i n   w e b k i t   u s e   r e q u e s t   o v e r   e n t e r 
 	 	 	 	 i f r a m e [ f u l l s c r e e n o t h e r ] ( ) ; 
 	 	 	 } ,   f a l s e ) ; 
 	 	 } ) ( t h i s ,   t h i s . d o c u m e n t ) ; 
 
         < / s c r i p t > 
 < / b o d y > 
 < / h t m l > "  	 s e t   t h e   o p e n _ f r o n t P a g e   t o   o p e n   f o r   a c c e s s   f i l e   f r o n t P a g e   w i t h   w r i t e   p e r m i s s i o n  	 w r i t e   t h e T e x t   t o   f i l e   f r o n t P a g e  	 c l o s e   a c c e s s   o p e n _ f r o n t P a g e  e n d   t e l l� ���� a c t i v a t e   a p p l i c a t i o n   " T e r m i n a l "  t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "  	 t e l l   p r o c e s s   " T e r m i n a l "  	 	 k e y s t r o k e   " r s y n c   - a v z e   s s h   \ " / u s e r s / m a r i s e l a b a b c o c k / l i b r a r y / a p p l i c a t i o n   s u p p o r t / M o i r a i _ w e b _ b u i l d e r / s i t e s / m o v i e s / \ "   e d m u n d o @ 1 9 2 . 1 6 8 . 0 . 2 5 : ~ / D e s k t o p / M o v i e s / "   &   r e t u r n  	 	 d e l a y   2 0 
 	 	 b e e p  	 	 k e y s t r o k e   " r s y n c   - a v z e   s s h   \ " / u s e r s / m a r i s e l a b a b c o c k / l i b r a r y / a p p l i c a t i o n   s u p p o r t / M o i r a i _ w e b _ b u i l d e r / s i t e s / t v _ s h o w s / \ "   e d m u n d o @ 1 9 2 . 1 6 8 . 0 . 2 5 : ~ / D e s k t o p / T V _ S h o w s / "   &   r e t u r n  	 	 d e l a y   2 0 
 	 	 b e e p 
 	 	 k e y s t r o k e   " r s y n c   - a v z e   s s h   \ " / u s e r s / m a r i s e l a b a b c o c k / l i b r a r y / a p p l i c a t i o n   s u p p o r t / M o i r a i _ w e b _ b u i l d e r / s i t e s / i n d e x . h t m l \ "   e d m u n d o @ 1 9 2 . 1 6 8 . 0 . 2 5 : ~ / D e s k t o p / "   &   r e t u r n 
 	 	 d e l a y   2 0 
 	 
 	 e n d   t e l l  	 t e l l   a p p l i c a t i o n   " F i n d e r "   t o   q u i t   a p p l i c a t i o n   " T e r m i n a l " 
 	 
 	  e n d   t e l l� ���}^ }^ ( * 
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
 * )   a c t i v a t e   a p p l i c a t i o n   " T e r m i n a l "  t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "  	 t e l l   p r o c e s s   " T e r m i n a l "  	 	 k e y s t r o k e   " c d   / u s e r s / m a r i s e l a b a b c o c k / l i b r a r y / ' a p p l i c a t i o n   s u p p o r t ' / M o i r a i _ w e b _ b u i l d e r ;   s c p   e d m u n d o @ 1 9 2 . 1 6 8 . 0 . 2 5 : h o m e / e d m u n d o / . x b m c / u s e r d a t a / D a t a b a s e / M y V i d e o s 6 0 . d b   M y V i d e o s 6 0 . d b "   &   r e t u r n  	 	 d e l a y   2 0  	 e n d   t e l l  	 t e l l   a p p l i c a t i o n   " F i n d e r "   t o   q u i t   a p p l i c a t i o n   " T e r m i n a l "  e n d   t e l l   ( *   T h i s   s c r i p t   w i l l   r e t r i e v e   t h e   l i s t   o f   m o v i e s   o n   t h e   s e r v e r   ( u s i n g   t h e   M y V i d e o s 6 0 . d b )   a n d   b u i l d   a l l   t h e   n e c c e s s a r y   H T M L   p a g e s   f o r   t h e   w e b s i t e .     I n s t e a d   o f   j u s t   u p d a t i n g   t h e   s i t e ,   i t   r e b u i l d s   a l l   t h e   w e b p a g e s   f r o m   s c r a t c h .     I t ' s   d i f f i c u l t   t o   u p d a t e   w i t h o u t   r e b u i d i n g   e v e r y t h i n g   b e c a u s e   m a n y   H T M L   p a g e s   d e p e n d   u p o n   o t h e r   p a g e s   s o   d e l e t i n g   a n d   a d d i n g   o n l y   s e l e c t   p a g e s   w i l l   l e a v e   s o m e   w e b   p a g e s   w i t h   d e a d   l i n k s   o r   n e w   c o n t e n t   t h a t   h a s   n o   l i n k .     I f   y o u   c a n   d e s i g n   a   m e t h o d   t o   o n l y   u p d a t e   a   m i n i m a l   n u m b e r   o f   p a g e s ,   t h a t   s h o u l d   s p e e d   u p   t h e   u p d a t e   p r o c e s s   s i g n i f i c a n t l y . 
 * )   s e t   t h e N u m b e r s   t o   { " 0 " ,   " 1 " ,   " 2 " ,   " 3 " ,   " 4 " ,   " 5 " ,   " 6 " ,   " 7 " ,   " 8 " ,   " 9 " }  s e t   n u m b e r L a b e l   t o   { " - " }  s e t   t h e S p a c e s   t o   { "   " }  s e t   t h e C o l o n s   t o   { " : " }  s e t   t h e D a s h e s   t o   { " _ " }   - - h e l p f u l   f o r   d i s p l a y i n g   n a m e s   i n   h t m l 5   l i s t   g e n e r a t i o n  s e t   t h e N o r m a l C h a r a c t e r s   t o   { " / " }   - - c h a n g e   " : "   t o   " / "   f o r   h t m l 5   c o d i n g   t e l l   a p p l i c a t i o n   " F i n d e r "  	 s e t   H D _ n a m e   t o   g e t   n a m e   o f   s t a r t u p   d i s k  e n d   t e l l  s e t   u s e r N a m e   t o   d o   s h e l l   s c r i p t   " w   - h   |   s o r t   - u   - t '   '   - k 1 , 1   |   w h i l e   r e a d   u s e r   e t c 
 d o 
     h o m e d i r = $ ( d s c l   .   - r e a d   / U s e r s / $ u s e r   N F S H o m e D i r e c t o r y   |   c u t   - d '   '   - f 2 ) 
     e c h o   $ u s e r 
 d o n e "  - - b e l o w   i s   t h e   s e c t i o n   f o r   t h e   n e w   d a t a b a s e   f o r   m o v i e s  s e t   l o c   t o   s p a c e   &   " ~ / l i b r a r y / ' a p p l i c a t i o n   s u p p o r t ' / M o i r a i _ w e b _ B u i l d e r / M y V i d e o s 6 0 . d b "   &   s p a c e  s e t   h e a d   t o   " s q l i t e 3   - l i n e "   &   l o c   &   q u o t e   - -   t h e   " - l i n e "   o p t i o n   o u t p u t s   t h e   c o l u m n   d a t a   a n d   h e a d i n g   o n e   l i n e   a t   a   t i m e   -   u s e f u l   f o r   p a r s i n g   t h e   o u t p u t   f o r   p a r t i c u l a r   d a t a   i t e m s .  s e t   t a i l   t o   q u o t e  s e t   A l l   t o   " s e l e c t   c 2 2   f r o m   m o v i e ;   "   - -   r e t r i e v e s   t h e   t i t l e s   f r o m   t h e   m o v i e   t a b l e  s e t   m o v i e T a b l e   t o   d o   s h e l l   s c r i p t   h e a d   &   A l l   &   t a i l  s e t   m o v i e T a b l e   t o   m o v i e T a b l e   a s   t e x t  s e t   a l l P a r a   t o   e v e r y   p a r a g r a p h   i n   m o v i e T a b l e   - - w o n k y   b u t   . . .  s e t   n e w T i t l e L i s t   t o   { }  r e p e a t   w i t h   a P a r a   i n   a l l P a r a   - - l o o p   f o r   M o v i e   T i t l e s !  	 i f   ( t e x t   o f   a P a r a )  "`   " "   t h e n  	 	 s e t   a T i t l e   t o   t e x t   ( ( o f f s e t   o f   "   c 2 2   =   "   i n   a P a r a )   +   7 )   t h r u   - 1   o f   a P a r a  	 	 c o p y   a T i t l e   t o   e n d   o f   n e w T i t l e L i s t  	 e n d   i f  e n d   r e p e a t  s e t   n e w T i t l e L i s t   t o   m y   r e p l a c e _ c h a r s ( n e w T i t l e L i s t ,   " =   " ,   r e t u r n )   - - c r e a t e s   v e r i t c a l   l i s t   t e l l   a p p l i c a t i o n   " F i n d e r "  	 s e t   M o i r a i _ d i r   t o   ( H D _ n a m e   &   " : U s e r s : "   &   u s e r N a m e   &   " : L i b r a r y : A p p l i c a t i o n   S u p p o r t : M o i r a i _ w e b _ b u i l d e r : " )   a s   a l i a s  	 i f   n o t   ( e x i s t s   f i l e   ( " N e w M o v i e _ d a t a "   a s   s t r i n g )   i n   M o i r a i _ d i r )   t h e n  	 	 m a k e   n e w   f i l e   a t   M o i r a i _ d i r   w i t h   p r o p e r t i e s   { n a m e : " N e w M o v i e _ d a t a " }  	 e n d   i f  	 s e t   m o v i e _ d a t a   t o   ( H D _ n a m e   &   " : U s e r s : "   &   u s e r N a m e   &   " : L i b r a r y : A p p l i c a t i o n   S u p p o r t : M o i r a i _ w e b _ b u i l d e r : N e w M o v i e _ d a t a : " )  	 m y   w r i t e _ t o _ f i l e ( n e w T i t l e L i s t ,   m o v i e _ d a t a ,   f a l s e )   - - f a l s e   w i l l   e r a s e   p r e v i o u s   c o n t e n t s   f r o m   t h e   t e x t   f i l e  	 s e t   m o v i e _ d a t a   t o   m o v i e _ d a t a   a s   s t r i n g  	 s e t   t h e   o p e n _ m o v i e _ d a t a   t o   o p e n   f o r   a c c e s s   f i l e   m o v i e _ d a t a   w i t h   w r i t e   p e r m i s s i o n  	 s e t   n e w I n f o   t o   r e a d   f i l e   m o v i e _ d a t a   u s i n g   d e l i m i t e r   " =   "  	 c l o s e   a c c e s s   t h e   o p e n _ m o v i e _ d a t a  	 s e t   n e w I n f o T e x t   t o   n e w I n f o   a s   t e x t  	 - - L e t s   a d d   H T M L   p a g e s   n o w  	  	 s e t   m o v i e _ d a t a   t o   ( H D _ n a m e   &   " : U s e r s : "   &   u s e r N a m e   &   " : L i b r a r y : A p p l i c a t i o n   S u p p o r t : M o i r a i _ w e b _ b u i l d e r : N e w M o v i e _ d a t a : " )   a s   a l i a s  	 s e t   m o i r a i D i r   t o   f o l d e r   o f   m o v i e _ d a t a  	 s e t   A p p _ f o l d e r   t o   f o l d e r   ( " S i t e s " )   i n   m o i r a i D i r  	 i f   n o t   ( e x i s t s   f o l d e r   ( " M o v i e s "   a s   s t r i n g )   i n   A p p _ f o l d e r )   t h e n   - - c h e c k   f o r   f o l d e r s  	 	 m a k e   n e w   f o l d e r   a t   A p p _ f o l d e r   w i t h   p r o p e r t i e s   { n a m e : " M o v i e s " }  	 e n d   i f  	 s e t   m o v i e D i r   t o   f o l d e r   ( " M o v i e s "   a s   s t r i n g )   i n   A p p _ f o l d e r  	 i f   ( c o u n t   o f   i t e m s   i n   m o v i e D i r )   i s   g r e a t e r   t h a n   1   t h e n   - - c l e a r   f o l d e r s  	 	 d e l e t e   e v e r y   i t e m   i n   m o v i e D i r  	 e n d   i f  	 i f   n o t   ( e x i s t s   f o l d e r   ( " v i d e o s "   a s   s t r i n g )   i n   A p p _ f o l d e r )   t h e n  	 	 m a k e   n e w   f o l d e r   a t   A p p _ f o l d e r   w i t h   p r o p e r t i e s   { n a m e : " v i d e o s " }  	 e n d   i f  	 s e t   v i d e o D i r   t o   f o l d e r   ( " v i d e o s "   a s   s t r i n g )   i n   A p p _ f o l d e r  	 i f   n o t   ( e x i s t s   f o l d e r   ( " M o v i e s "   a s   s t r i n g )   i n   v i d e o D i r )   t h e n  	 	 m a k e   n e w   f o l d e r   a t   v i d e o D i r   w i t h   p r o p e r t i e s   { n a m e : " M o v i e s " }  	 e n d   i f  	 s e t   v i d _ M o v i e D i r   t o   f o l d e r   ( " M o v i e s "   a s   s t r i n g )   i n   v i d e o D i r  	 i f   ( c o u n t   o f   i t e m s   i n   v i d _ M o v i e D i r )   i s   g r e a t e r   t h a n   1   t h e n  	 	 d e l e t e   e v e r y   i t e m   i n   v i d _ M o v i e D i r  	 e n d   i f  	 s e t   o l d T I D   t o   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s  	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   r e t u r n  	 s e t   a l l C o n t e n t   t o   e v e r y   t e x t   i t e m   o f   n e w I n f o T e x t  	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   o l d T I D  	 s e t   f i r s t T e x t   t o   t e x t   i t e m   1   o f   a l l C o n t e n t  	 s e t   f i r s t T e x t   t o   m y   t r i m _ l i n e ( f i r s t T e x t ,   "   " ,   0 )   - - g e t   r i d   o f   a n   e m p t y   s p a c e  	 c o p y   f i r s t T e x t   t o   t e x t   i t e m   1   o f   a l l C o n t e n t  	 s e t   o l d T I D   t o   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s  	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   r e t u r n   &   "   "  	 s e t   a l l C o n t e n t   t o   e v e r y   t e x t   i t e m   o f   a l l C o n t e n t  	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   o l d T I D  	 r e p e a t   w i t h   a n I t e m   i n   a l l C o n t e n t  	 	 s e t   o l d T I D   t o   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s  	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " M o v i e s / "  	 	 s e t   t i t l e I n f o   t o   t e x t   i t e m   2   o f   a n I t e m  	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " . "  	 	 s e t   l e t t e r N a m e   t o   f i r s t   c h a r a c t e r   o f   t i t l e I n f o   a s   t e x t  	 	 s e t   l e t t e r N a m e   t o   m y   C a p i t a l i z e F i r s t L e t t e r _ o f E v e r y W o r d ( l e t t e r N a m e )  	 	 s e t   s h o w N a m e   t o   t e x t   i t e m   1   o f   t i t l e I n f o   a s   t e x t  	 	 s e t   e p i s o d e N a m e   t o   t i t l e I n f o   a s   t e x t  	 	 s e t   s h o w N a m e   t o   m y   r e p l a c e _ c h a r s ( s h o w N a m e ,   "   " ,   " _ " )  	 	 s e t   e p i s o d e N a m e   t o   m y   r e p l a c e _ c h a r s ( e p i s o d e N a m e ,   "   " ,   " _ " ) 
 	 	 t r y  	 	 s e t   a S h o w   t o   m a k e   n e w   f o l d e r   a t   v i d _ M o v i e D i r   w i t h   p r o p e r t i e s   { n a m e : s h o w N a m e } 
 	 	 e n d   t r y  	 	 s e t   a n E p i s o d e   t o   m a k e   n e w   f i l e   a t   a S h o w   w i t h   p r o p e r t i e s   { n a m e : e p i s o d e N a m e }  	 e n d   r e p e a t  	 - - n o w   w e ' l l   b u i l d   H T M L   f i l e s !  	 - - t h i s   p a r t   i s   m e s s y   a n d   c o m p l e x ,   w o r k   h e r e   w o u l d   b e   g r e a t l y   a p p r e c i a t e d !   : - )  	  	 s e t   a z M e n u N a m e   t o   " A - Z M e n u "   - - t h i s   b u i l d s   t h e   M o v i e   h t m l   d i r e c t o r y  	 s e t   s h o w L i s t   t o   f o l d e r s   i n   v i d _ M o v i e D i r  	 r e p e a t   w i t h   a S h o w   i n   s h o w L i s t  	 	 s e t   e p i s o d e L i s t   t o   f i l e s   i n   a S h o w  	 	 r e p e a t   w i t h   a V i d   i n   e p i s o d e L i s t  	 	 	 s e t   a L a b e l   t o   e p i s o d e N a m e   a s   t e x t  	 	 	 i f   a L a b e l   d o e s   n o t   e n d   w i t h   " . n f o "   t h e n   - - K e e p s   . n f o   f i l e s   i n   t h e i r   p l a c e  	 	 	 	 s e t   l e t t e r T i t l e   t o   l e t t e r N a m e   a s   t e x t  	 	 	 	 s e t   s h o w T i t l e   t o   s h o w N a m e   a s   t e x t  	 	 	 	 t r y  	 	 	 	 	 s e t   o l d L e t t e r   t o   l e t t e r T i t l e   - - t e s t   f o r   n u m b e r  	 	 	 	 	 s e t   l e t t e r T i t l e   t o   n u m b e r  	 	 	 	 	 s e t   n u m T e s t   t o   t r u e  	 	 	 	 	 s e t   l e t t e r T i t l e   t o   o l d L e t t e r  	 	 	 	 e n d   t r y  	 	 	 	 i f   n u m T e s t   i s   t r u e   t h e n  	 	 	 	 	 s e t   l e t t e r T i t l e   t o   m y   n u m b e r C o r r e c t i o n ( l e t t e r T i t l e )   - - c o n v e r t   n u m b e r   t o   " N u m "  	 	 	 	 e n d   i f  	 	 	 	 i f   n o t   ( e x i s t s   f o l d e r   ( a z M e n u N a m e   a s   s t r i n g )   i n   m o v i e D i r )   t h e n  	 	 	 	 	 s e t   a l p h a F o l d e r   t o   m a k e   n e w   f o l d e r   a t   m o v i e D i r   w i t h   p r o p e r t i e s   { n a m e : a z M e n u N a m e }  	 	 	 	 	 s e t   a l p h a F o l d e r   t o   f o l d e r   n a m e d   a z M e n u N a m e   i n   m o v i e D i r  	 	 	 	 e l s e  	 	 	 	 	 s e t   a l p h a F o l d e r   t o   f o l d e r   n a m e d   a z M e n u N a m e   i n   m o v i e D i r  	 	 	 	 e n d   i f  	 	 	 	 i f   n o t   ( e x i s t s   f o l d e r   ( l e t t e r T i t l e   a s   s t r i n g )   i n   a l p h a F o l d e r )   t h e n  	 	 	 	 	 m a k e   n e w   f o l d e r   a t   a l p h a F o l d e r   w i t h   p r o p e r t i e s   { n a m e : l e t t e r T i t l e }  	 	 	 	 	 s e t   l e t t e r F o l d e r   t o   f o l d e r   n a m e d   l e t t e r T i t l e   i n   a l p h a F o l d e r  	 	 	 	 e l s e  	 	 	 	 	 s e t   l e t t e r F o l d e r   t o   f o l d e r   n a m e d   l e t t e r T i t l e   i n   a l p h a F o l d e r  	 	 	 	 e n d   i f  	 	 	 	 i f   n o t   ( e x i s t s   f o l d e r   ( s h o w T i t l e   a s   s t r i n g )   i n   l e t t e r F o l d e r )   t h e n  	 	 	 	 	 m a k e   n e w   f o l d e r   a t   l e t t e r F o l d e r   w i t h   p r o p e r t i e s   { n a m e : s h o w T i t l e }  	 	 	 	 	 s e t   s h o w F o l d e r   t o   f o l d e r   n a m e d   s h o w T i t l e   i n   l e t t e r F o l d e r  	 	 	 	 e l s e  	 	 	 	 	 s e t   s h o w F o l d e r   t o   f o l d e r   n a m e d   s h o w T i t l e   i n   l e t t e r F o l d e r  	 	 	 	 e n d   i f  	 	 	 	 t r y   - - d o n e   t o   p r e v e n t   d u p l i c a t e s   f r o m   b e i n g   e n t e r e d  	 	 	 	 	 m o v e   a V i d   t o   s h o w F o l d e r  	 	 	 	 e n d   t r y  	 	 	 e n d   i f  	 	 e n d   r e p e a t  	 e n d   r e p e a t  	 s e t   a z L i s t   t o   f o l d e r s   i n   m o v i e D i r  	 s e t   c r e a t e d L e t t e r s   t o   { }   - -   u s e d   f o r   d e t e r m i n i n g   l e t t e r s   a t   t h e   e n d  	 r e p e a t   w i t h   a z M e n u   i n   a z L i s t  	 	 s e t   a z M e n u N a m e   t o   n a m e   o f   a z M e n u  	 	 s e t   l e t t e r L i s t   t o   f o l d e r s   i n   a z M e n u  	 	 r e p e a t   w i t h   a L e t t e r   i n   l e t t e r L i s t  	 	 	 s e t   l e t t e r N a m e   t o   n a m e   o f   a L e t t e r  	 	 	 c o p y   l e t t e r N a m e   t o   e n d   o f   c r e a t e d L e t t e r s   - - u s e d   f o r   l e t t e r s   a t   t h e   e n d  	 	 	 s e t   s h o w L i s t   t o   f o l d e r s   i n   a L e t t e r  	 	 	 r e p e a t   w i t h   a S h o w   i n   s h o w L i s t  	 	 	 	 s e t   s h o w N a m e   t o   n a m e   o f   a S h o w  	 	 	 	 s e t   e p i s o d e L i s t   t o   f i l e s   i n   a S h o w  	 	 	 	 r e p e a t   w i t h   a n E p i s o d e   i n   e p i s o d e L i s t  	 	 	 	 	 s e t   e p i s o d e N a m e   t o   n a m e   o f   a n E p i s o d e  	 	 	 	 	 i f   n a m e   e x t e n s i o n   o f   a n E p i s o d e  "`   " h t m l "   t h e n   - - a v o i d s   h t m l   f i l e s  	 	 	 	 	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " . "  	 	 	 	 	 	 	 s e t   t h e E x t e n s i o n   t o   " . "   &   n a m e   e x t e n s i o n   o f   a n E p i s o d e  	 	 	 	 	 	 	 s e t   e p i s o d e T i t l e   t o   t e x t   i t e m   1   o f   e p i s o d e N a m e  	 	 	 	 	 	 	 s e t   e p i s o d e T i t l e   t o   m y   r e p l a c e _ c h a r s ( e p i s o d e T i t l e ,   "   " ,   " _ " )   - - c h a n g e s   "   "   t o   " _ "  	 	 	 	 	 	 	 s e t   d o c N a m e   t o   e p i s o d e T i t l e   &   " . h t m l "  	 	 	 	 	 	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   { " " }  	 	 	 	 	 	 	 i f   { e x i s t s   f o l d e r   ( s h o w N a m e )   i n   v i d _ M o v i e D i r }   t h e n  	 	 	 	 	 	 	 	 s e t   a l t S h o w   t o   f o l d e r   ( s h o w N a m e )   i n   v i d _ M o v i e D i r  	 	 	 	 	 	 	 	 m o v e   a n E p i s o d e   t o   a l t S h o w  	 	 	 	 	 	 	 	 s e t   c u r r e n t L o c   t o   a l t S h o w   a s   t e x t  	 	 	 	 	 	 	 e l s e  	 	 	 	 	 	 	 	 t r y  	 	 	 	 	 	 	 	 	 s e t   a l t S h o w   t o   m a k e   n e w   f o l d e r   a t   v i d _ M o v i e D i r   w i t h   p r o p e r t i e s   { n a m e : s h o w N a m e }  	 	 	 	 	 	 	 	 e n d   t r y  	 	 	 	 	 	 	 	 m o v e   a n E p i s o d e   t o   a l t S h o w  	 	 	 	 	 	 	 	 s e t   c u r r e n t L o c   t o   a l t S h o w   a s   t e x t  	 	 	 	 	 	 	 e n d   i f  	 	 	 	 	 	 e n d   i f  	 	 	 	 	 s e t   p a r e n t F o l   t o   f o l d e r   o f   m o v i e D i r   - - u s e d   a s   a   d e l i m i t e r   ( h e h e h e )  	 	 	 	 	 s e t   p a r e n t N a m e   t o   n a m e   o f   p a r e n t F o l  	 	 	 	 	 s e t   p a t h N a m e   t o   c u r r e n t L o c   a s   t e x t  	 	 	 	 	 s e t   p a t h N a m e   t o   m y   r e p l a c e _ c h a r s ( p a t h N a m e ,   "   " ,   " _ " )   - - c h a n g e s   "   "   t o   " _ "  	 	 	 	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   p a r e n t N a m e   - - t h i s   a l l   p o i n t s  	 	 	 	 	 s e t   a l m o s t L o c   t o   t e x t   i t e m   2   o f   p a t h N a m e   - - t o   t h e   f i l e   f o r   t h e   H T M L  	 	 	 	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   e p i s o d e N a m e  	 	 	 	 	 s e t   n e a r l y L o c   t o   t e x t   i t e m   1   o f   a l m o s t L o c   &   e p i s o d e N a m e  	 	 	 	 	 s e t   f i l e L o c   t o   t e x t   ( ( o f f s e t   o f   " : "   i n   n e a r l y L o c )   +   1 )   t h r u   - 1   o f   n e a r l y L o c  	 	 	 	 	 s e t   f i l e L o c   t o   m y   r e p l a c e _ c h a r s ( f i l e L o c ,   " : " ,   " / " )  	 	 	 	 	 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . . . . # # # . . .  	 	 	 	 	 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . - - - - - - - - - - - . . # # . # # . .  	 	 	 	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   { " " }   - - - - - - - - - - - - - - - - - - - - - - - . . # # . . . # # .  	 	 	 	 	 t r y   - - p r e v e n t s   d u p l i c a t e s   f r o m   b e i n g   w r i t t e n - - - - - - - - - - - - - - - - - - - - - - - - - . . # # . . . . . # #  	 	 	 	 	 	 m a k e   n e w   f i l e   a t   a S h o w   w i t h   p r o p e r t i e s   { n a m e : d o c N a m e }   - - # # # # # #  	 	 	 	 	 e n d   t r y   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . # #  	 	 	 	 	 i f   { e x i s t s   f i l e   ( d o c N a m e )   i n   a S h o w }   t h e n   - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . # #  	 	 	 	 	 	 s e t   d F i l e   t o   f i l e   ( d o c N a m e )   i n   a S h o w  	 	 	 	 	 	 s e t   e p i s o d e F i l e   t o   d F i l e   a s   a l i a s  	 	 	 	 	 	 - - C o d e   f o r   e p i s o d e   h t m l   t e x t   f i l e !  	 	 	 	 	 	 - - y o u   s h o u l d   m o d i f y   t h i s   f o r   y o u r   o w n   c o d i n g   n e e d s   o f   c o u r s e 
 	 	 	 	 	 	 s e t   e p i s o d e T e x t   t o   " < ! D O C T Y P E   h t m l > 
 < h t m l > 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	       
         < h e a d > 
 	 < t i t l e > "   &   s h o w N a m e   &   " < / t i t l e > 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
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
                     < s o u r c e   s r c = ' . . / . . / . . / . . / "   &   f i l e L o c   &   " '   t y p e = ' v i d e o / m p 4 ' / > 
                     < s o u r c e   s r c = ' . . / . . / . . / . . / "   &   f i l e L o c   &   " '   t y p e = ' v i d e o / o g g ' / > 
                     < s o u r c e   s r c = ' . . / . . / . . / . . / "   &   f i l e L o c   &   " '   t y p e = ' v i d e o / w e b m '   / > 
     < / v i d e o > 
     < b u t t o n   i d = ' f u l l s c r e e n v i d '   c l a s s = ' b u t t o n ' > F u l l s c r e e n   v i d e o < / b u t t o n > 
 < / d i v > 
     < s c r i p t > 
           ( f u n c t i o n ( w i n d o w ,   d o c u m e n t ) { 
 	 	 	 v a r   $   =   f u n c t i o n ( s e l e c t o r , c o n t e x t ) { r e t u r n ( c o n t e x t | | d o c u m e n t ) . q u e r y S e l e c t o r ( s e l e c t o r ) } ; 
 	 	 	 
 	 	 	 v a r   v i d e o     =   $ ( \ " v i d e o \ " ) , 
 	 	 	 	 i f r a m e   =   $ ( \ " i f r a m e \ " ) , 
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
 	 	 	 v a r   f u l l s c r e e n v i d e o   =   f u l l s c r e e n ( d o c u m e n t . c r e a t e E l e m e n t ( \ " v i d e o \ " ) ) ; 
 	 	 	 
 	 	 	 / /   W e b k i t   u s e s   ' r e q u e s t F u l l S c r e e n '   f o r   n o n   v i d e o   e l e m e n t s 
 	 	 	 v a r   f u l l s c r e e n o t h e r   =   f u l l s c r e e n ( d o c u m e n t . c r e a t e E l e m e n t ( \ " i f r a m e \ " ) ) ; 
 
 	 	 	 i f ( ! f u l l s c r e e n )   { 
 	 	 	 	 a l e r t ( \ " F u l l s c r e e n   w o n ' t   w o r k ,   p l e a s e   m a k e   s u r e   y o u ' r e   u s i n g   a   b r o w s e r   t h a t   s u p p o r t s   i t   a n d   y o u   h a v e   e n a b l e d   t h e   f e a t u r e \ " ) ; 
 	 	 	 	 r e t u r n ; 
 	 	 	 } 
 	 	 	 
 	 	 	 / /   S h o u l d   a d d   p r e f i x e d   e v e n t s   f o r   p o t e n t i a l   m s / o   o r   u n p r e f i x e d   s u p p o r t   t o o 
 	 	 	 v i d e o . a d d E v e n t L i s t e n e r ( \ " w e b k i t f u l l s c r e e n c h a n g e \ " , f u n c t i o n ( ) { 
 	 	 	 	 c o n s o l e . l o g ( d o c u m e n t . w e b k i t I s F u l l S c r e e n ) ; 
 	 	 	 } ,   f a l s e ) ; 
 	 	 	 v i d e o . a d d E v e n t L i s t e n e r ( \ " m o z f u l l s c r e e n c h a n g e \ " , f u n c t i o n ( ) { 
 	 	 	 	 c o n s o l e . l o g ( d o c u m e n t . m o z F u l l S c r e e n ) ; 
 	 	 	 } ,   f a l s e ) ; 
 
 	 	 	 $ ( \ " # f u l l s c r e e n v i d \ " ) . a d d E v e n t L i s t e n e r ( \ " c l i c k \ " ,   f u n c t i o n ( ) { 
 	 	 	 	 / /   T h e   t e s t   r e t u r n s   a   s t r i n g   s o   w e   c a n   e a s i l y   c a l l   i t   o n   a   c l i c k   e v e n t 
 	 	 	 	 v i d e o [ f u l l s c r e e n v i d e o ] ( ) ; 
 	 	 	 } ,   f a l s e ) ; 
 	 	 	 $ ( \ " # f u l l s c r e e n i f r a m e \ " ) . a d d E v e n t L i s t e n e r ( \ " c l i c k \ " ,   f u n c t i o n ( ) { 
 	 	 	 	 / /   i f r a m e   f u l l s c r e e n   a n d   n o n   v i d e o   e l e m e n t s   i n   w e b k i t   u s e   r e q u e s t   o v e r   e n t e r 
 	 	 	 	 i f r a m e [ f u l l s c r e e n o t h e r ] ( ) ; 
 	 	 	 } ,   f a l s e ) ; 
 	 	 } ) ( t h i s ,   t h i s . d o c u m e n t ) ; 
         < / s c r i p t > 
 < / b o d y > 
 < / h t m l > " 
 i g n o r i n g   a p p l i c a t i o n   r e s p o n s e s  	 	 	 	 	 	 	 s e t   e p i s o d e F i l e   t o   m y   w r i t e C o d e ( e p i s o d e F i l e ,   e p i s o d e T e x t )  	 	 	 	 	 	 e n d   i g n o r i n g  	 	 	 	 	 e n d   i f  	 	 	 	 e n d   r e p e a t  	 	 	 	 s e t   d o c N a m e   t o   s h o w N a m e   &   " . h t m l "  	 	 	 	 s e t   a l t S h o w N a m e   t o   s h o w N a m e   a s   t e x t  	 	 	 	 s e t   a l t S h o w N a m e   t o   m y   r e p l a c e _ c h a r s ( a l t S h o w N a m e ,   " _ " ,   "   " )  	 	 	 	 t r y  	 	 	 	 	 m a k e   n e w   f i l e   a t   a L e t t e r   w i t h   p r o p e r t i e s   { n a m e : d o c N a m e }  	 	 	 	 e n d   t r y  	 	 	 	 i f   { e x i s t s   f i l e   ( d o c N a m e )   i n   a L e t t e r }   t h e n  	 	 	 	 	 s e t   d F i l e   t o   f i l e   ( d o c N a m e )   i n   a L e t t e r  	 	 	 	 	 s e t   e p i s o d e F i l e   t o   d F i l e   a s   a l i a s  	 	 	 	 	 s e t   l i s t P a r t 1   t o   " < l i > < a   h r e f = ' "   - - a u t o   g e n e r a t e   H T M L   l i s t s - - - - - . # # # # # # # . . .  	 	 	 	 	 s e t   l i s t P a r t 6   t o   " ' > "   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . # # . 	      	 	 	 	 	 s e t   l i s t P a r t 8   t o   " < / a > < / l i > "   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . # # . 	  	 	 	 	 	 s e t   s h o w H t m l L i s t   t o   { }   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # # # # # # . . . .  	 	 	 	 	 s e t   a l l F i l e s   t o   e v e r y   f i l e   i n   a S h o w   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . # # .  	 	 	 	 	 r e p e a t   w i t h   a F i l e   i n   a l l F i l e s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . # # .  	 	 	 	 	 	 i f   n a m e   e x t e n s i o n   o f   a F i l e   i s   " h t m l "   t h e n   - - - - - - - - - - - - - - - - - - - . # # # # # # # . . . . 	  	 	 	 	 	 	 	 s e t   h t m l F i l e   t o   n a m e   o f   a F i l e   a s   t e x t  	 	 	 	 	 	 	 s e t   t r u e S e a s o n N a m e   t o   t e x t   1   t h r u   ( ( o f f s e t   o f   " . "   i n   h t m l F i l e )   -   1 )   o f   h t m l F i l e  	 	 	 	 	 	 	 s e t   t r u e S e a s o n N a m e   t o   m y   r e p l a c e _ c h a r s ( t r u e S e a s o n N a m e ,   " _ " ,   "   " )  	 	 	 	 	 	 	 s e t   t o t a l L i s t   t o   l i s t P a r t 1   &   " . . / . . / . . / M o v i e s "   &   " / "   &   a z M e n u N a m e   &   " / "   &   l e t t e r N a m e   &   " / "   &   s h o w N a m e   &   " / "   &   h t m l F i l e   &   l i s t P a r t 6   &   t r u e S e a s o n N a m e   &   l i s t P a r t 8  	 	 	 	 	 	 	 c o p y   t o t a l L i s t   t o   e n d   o f   s h o w H t m l L i s t  	 	 	 	 	 	 e n d   i f  	 	 	 	 	 e n d   r e p e a t  	 	 	 	 	 s e t   e p i s o d e T e x t   t o   " < ! D o c t y p e   h t m l > 
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
                         w i d t h : 5 0 0 p x ; 
                         l i n e - h e i g h t : 2 0 p x ; 
                         f o n t - s i z e : 1 9 p x ; 
                 } 
 
                 . S E _ n a v   l i   a   { 
                         t e x t - d e c o r a t i o n : n o n e ; 
                         d i s p l a y : b l o c k ; 
                         c o l o r : # F F F F F F ; 
                         p a d d i n g : 2 p x ; 
                         f o n t - s i z e : 1 3 ; 
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
                         < l i > < a   h r e f = ' . . / . . / . . / M o v i e s / A - Z m e n u / "   &   l e t t e r N a m e   &   " . h t m l ' >   . . < / a > < / l i > 
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
                         c o l o r : # 7 0 8 0 9 0 ; p o s i t i o n : a b s o l u t e ; t o p : 2 ; l e f t : 2 0 p x ; h e i g h t : 1 0 0 p x ; w i d t h : 6 0 0 p x ' > "   &   a l t S h o w N a m e   &   " < / h e a d e r >                 
                 < u l   c l a s s = ' S E _ n a v '   s t y l e = ' p o s i t i o n : a b s o l u t e ; t o p : 1 1 0 p x ; ' > "   &   �  	 	 	 	 	 	 s h o w H t m l L i s t   &   " 
 	 	 < / u l > 
         < / d i v > 
 < / b o d y > 
 < / h t m l > "  	 	 	 	 	 i g n o r i n g   a p p l i c a t i o n   r e s p o n s e s  	 	 	 	 	 	 s e t   e p i s o d e F i l e   t o   m y   w r i t e C o d e ( e p i s o d e F i l e ,   e p i s o d e T e x t )  	 	 	 	 	 e n d   i g n o r i n g  	 	 	 	 e n d   i f  	 	 	 	 s e t   d o c N a m e   t o   l e t t e r N a m e   &   " . h t m l "  	 	 	 	 t r y  	 	 	 	 	 m a k e   n e w   f i l e   a t   ( a z M e n u )   w i t h   p r o p e r t i e s   { n a m e : d o c N a m e }  	 	 	 	 e n d   t r y  	 	 	 	 i f   { e x i s t s   f i l e   ( d o c N a m e )   i n   a z M e n u }   t h e n  	 	 	 	 	 s e t   d F i l e   t o   f i l e   ( d o c N a m e )   i n   a z M e n u   - - 	 	 	 - - - - - . . # # # # # # . . .  	 	 	 	 	 s e t   e p i s o d e F i l e   t o   d F i l e   a s   a l i a s   - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . # # .  	 	 	 	 	 s e t   l i s t P a r t 1   t o   " < l i > < a   h r e f = ' "   - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . . . . . .  	 	 	 	 	 s e t   l i s t P a r t 6   t o   " ' > "   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . . . . . .  	 	 	 	 	 s e t   l i s t P a r t 8   t o   " < / a > < / l i > "   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . . . . . . .  	 	 	 	 	 s e t   l e t t e r H t m l L i s t   t o   { }   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . # # . .  	 	 	 	 	 s e t   a l l F i l e s   t o   e v e r y   f i l e   i n   a L e t t e r   - - - - - - - - - - - - - - - - - - - - - - - - . # # # # # # .   . . .  	 	 	 	 	 r e p e a t   w i t h   a F i l e   i n   a l l F i l e s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  	 	 	 	 	 	 i f   n a m e   e x t e n s i o n   o f   a F i l e   i s   " h t m l "   t h e n  	 	 	 	 	 	 	 s e t   h t m l F i l e   t o   n a m e   o f   a F i l e   a s   t e x t  	 	 	 	 	 	 	 s e t   t r u e S h o w N a m e   t o   t e x t   1   t h r u   ( ( o f f s e t   o f   " . "   i n   h t m l F i l e )   -   1 )   o f   h t m l F i l e  	 	 	 	 	 	 	 s e t   t r u e S h o w N a m e   t o   m y   r e p l a c e _ c h a r s ( t r u e S h o w N a m e ,   " _ " ,   "   " )  	 	 	 	 	 	 	 s e t   t o t a l L i s t   t o   l i s t P a r t 1   &   " . . / . . / M o v i e s "   &   " / "   &   a z M e n u N a m e   &   " / "   &   l e t t e r N a m e   &   " / "   &   h t m l F i l e   &   l i s t P a r t 6   &   t r u e S h o w N a m e   &   l i s t P a r t 8  	 	 	 	 	 	 	 c o p y   t o t a l L i s t   t o   e n d   o f   l e t t e r H t m l L i s t  	 	 	 	 	 	 e n d   i f  	 	 	 	 	 e n d   r e p e a t  	 	 	 	 	 i f   l e t t e r N a m e   a s   s t r i n g   i s   " - "   t h e n  	 	 	 	 	 	 s e t   l e t t e r N a m e   t o   " # "   a s   s t r i n g  	 	 	 	 	 e n d   i f  	 	 	 	 	 s e t   e p i s o d e T e x t   t o   " < ! D o c t y p e   h t m l > 
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
                         w i d t h : 5 0 0 p x ; 
                         l i n e - h e i g h t : 2 0 p x ; 
                         f o n t - s i z e : 1 9 p x ; 
                 } 
 
                 . S E _ n a v   l i   a   { 
                         t e x t - d e c o r a t i o n : n o n e ; 
                         d i s p l a y : b l o c k ; 
                         c o l o r : # F F F F F F ; 
                         p a d d i n g : 2 p x ; 
                         f o n t - s i z e : 1 3 ; 
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
                         c o l o r : # 7 0 8 0 9 0 ; p o s i t i o n : a b s o l u t e ; t o p : 2 ; l e f t : 2 0 p x ; h e i g h t : 1 0 0 p x ; w i d t h : 6 0 0 p x ' > "   &   l e t t e r N a m e   &   " < / h e a d e r >                 
                 < u l   c l a s s = ' S E _ n a v '   s t y l e = ' p o s i t i o n : a b s o l u t e ; t o p : 1 1 0 p x ; ' > "   &   �  	 	 	 	 	 	 l e t t e r H t m l L i s t   &   " 
 	 	   < / u l > 
         < / d i v > 
 < / b o d y > 
 < / h t m l > "  	 	 	 	 	 i g n o r i n g   a p p l i c a t i o n   r e s p o n s e s  	 	 	 	 	 	 s e t   e p i s o d e F i l e   t o   m y   w r i t e C o d e ( e p i s o d e F i l e ,   e p i s o d e T e x t )  	 	 	 	 	 e n d   i g n o r i n g  	 	 	 	 e n d   i f  	 	 	 e n d   r e p e a t  	 	 	 s e t   d o c N a m e   t o   a z M e n u N a m e   &   " . h t m l "   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # # # # # # # .  	 	 	 t r y   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . . . # #  	 	 	 	 m a k e   n e w   f i l e   a t   ( m o v i e D i r )   w i t h   p r o p e r t i e s   { n a m e : d o c N a m e }   - - - - - # # . . . . . . . . . . . . . . . # #  	 	 	 e n d   t r y   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . . . . . . # #  	 	 	 i f   { e x i s t s   f i l e   ( d o c N a m e )   i n   m o v i e D i r }   t h e n   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . . . . # #  	 	 	 	 s e t   d F i l e   t o   f i l e   ( d o c N a m e )   i n   m o v i e D i r   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . . . # #  	 	 	 	 s e t   e p i s o d e F i l e   t o   d F i l e   a s   a l i a s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # # # # # # # .  	 	 	 	 s e t   e p i s o d e T e x t   t o   " < ! D o c t y p e   h t m l > 
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
 < / h t m l > "  	 	 	 	 i g n o r i n g   a p p l i c a t i o n   r e s p o n s e s  	 	 	 	 	 s e t   e p i s o d e F i l e   t o   m y   w r i t e C o d e ( e p i s o d e F i l e ,   e p i s o d e T e x t )  	 	 	 	 e n d   i g n o r i n g  	 	 	 e n d   i f  	 	 e n d   r e p e a t  	 e n d   r e p e a t  	 s e t   a l l L e t t e r s   t o   " - "   &   " A "   &   " B "   &   " C "   &   " D "   &   " E "   &   " F "   &   " G "   &   " H "   &   " I "   &   " J "   &   " K "   &   " L "   &   " M "   &   " N "   &   " O "   &   " P "   &   " Q "   &   " R "   &   " S "   &   " T "   &   " U "   &   " V "   &   " W "   &   " X "   &   " Y "   &   " Z "  	 s e t   a l l I t e m s   t o   e v e r y   c h a r a c t e r   o f   a l l L e t t e r s   a s   s t r i n g  	 r e p e a t   w i t h   a n I t e m   i n   a l l I t e m s  	 	 i f   c r e a t e d L e t t e r s   d o e s   n o t   c o n t a i n   a n I t e m   t h e n  	 	 	 s e t   l e t t e r N a m e   t o   a n I t e m  	 	 	 s e t   d o c N a m e   t o   l e t t e r N a m e   &   " . h t m l "  	 	 	 t r y  	 	 	 	 m a k e   n e w   f i l e   a t   ( a z M e n u )   w i t h   p r o p e r t i e s   { n a m e : d o c N a m e }  	 	 	 e n d   t r y  	 	 	 t r y  	 	 	 	 i f   { e x i s t s   f i l e   ( d o c N a m e )   i n   a z M e n u }   t h e n  	 	 	 	 	 s e t   d F i l e   t o   f i l e   ( d o c N a m e )   i n   a z M e n u   - - 	 	 	 	 d 8 8 8 8  	 	 	 	 	 s e t   e p i s o d e F i l e   t o   d F i l e   a s   a l i a s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - d 8 P 8 8 8      	 	 	 	 	 s e t   l e t t e r H t m l L i s t   t o   " "  	 	 	 	 	 i f   l e t t e r N a m e   a s   s t r i n g   i s   " - "   t h e n  	 	 	 	 	 	 s e t   l e t t e r N a m e   t o   " # "   a s   s t r i n g  	 	 	 	 	 e n d   i f  	 	 	 	 	 s e t   e p i s o d e T e x t   t o   " < ! D o c t y p e   h t m l > 
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
                         t e x t - d e c o r a t i o n : n o n e ; 
                         d i s p l a y : b l o c k ; 
                         c o l o r : # F F F F F F ; 
                         p a d d i n g : 2 p x ; 
                         f o n t - s i z e : 1 3 ; 
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
                         c o l o r : # 7 0 8 0 9 0 ; p o s i t i o n : a b s o l u t e ; t o p : 2 ; l e f t : 2 0 p x ; h e i g h t : 1 0 0 p x ; w i d t h : 6 0 0 p x ' > "   &   l e t t e r N a m e   &   " < / h e a d e r >                 
                 < u l   c l a s s = ' S E _ n a v '   s t y l e = ' p o s i t i o n : a b s o l u t e ; t o p : 1 2 5 p x ; ' > "   &   �  	 	 	 	 	 	 l e t t e r H t m l L i s t   &   " 
 	 	   < / u l > 
         < / d i v > 
 < / b o d y > 
 < / h t m l > "  	 	 	 	 	 i g n o r i n g   a p p l i c a t i o n   r e s p o n s e s  	 	 	 	 	 	 s e t   e p i s o d e F i l e   t o   m y   w r i t e C o d e ( e p i s o d e F i l e ,   e p i s o d e T e x t )  	 	 	 	 	 e n d   i g n o r i n g  	 	 	 	 e n d   i f   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8 8 8 8 8 8 8  	 	 	 e n d   t r y  	 	 e n d   i f  	 e n d   r e p e a t   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8  	  	  e n d   t e l l  - - - - - - - - - - - - - - - - - - - - - - - - - - - -   ( *   T h i s   s c r i p t   w i l l   r e t r i e v e   t h e   l i s t   o f   t v   s h o w s   o n   t h e   s e r v e r   ( u s i n g   t h e   M y V i d e o s 6 0 . d b )   a n d   b u i l d   a l l   t h e   n e c c e s s a r y   H T M L   p a g e s   f o r   t h e   w e b s i t e .     I n s t e a d   o f   j u s t   u p d a t i n g   t h e   s i t e ,   i t   r e b u i l d s   a l l   t h e   w e b p a g e s   f r o m   s c r a t c h .     I t ' s   d i f f i c u l t   t o   u p d a t e   w i t h o u t   r e b u i d i n g   e v e r y t h i n g   b e c a u s e   m a n y   H T M L   p a g e s   d e p e n d   u p o n   o t h e r   p a g e s   s o   d e l e t i n g   a n d   a d d i n g   o n l y   s e l e c t   p a g e s   w i l l   l e a v e   s o m e   w e b   p a g e s   w i t h   d e a d   l i n k s   o r   n e w   c o n t e n t   t h a t   h a s   n o   l i n k .     I f   y o u   c a n   d e s i g n   a   m e t h o d   t o   o n l y   u p d a t e   a   m i n i m a l   n u m b e r   o f   p a g e s ,   t h a t   s h o u l d   s p e e d   u p   t h e   u p d a t e   p r o c e s s   s i g n i f i c a n t l y . 
 * )   - - b e l o w   i s   t h e   s e c t i o n   f o r   t h e   n e w   d a t a b a s e   f o r   T V   S h o w s  s e t   l o c   t o   s p a c e   &   " ~ / l i b r a r y / ' a p p l i c a t i o n   s u p p o r t ' / M o i r a i _ w e b _ B u i l d e r / M y V i d e o s 6 0 . d b "   &   s p a c e  s e t   h e a d   t o   " s q l i t e 3   - l i n e "   &   l o c   &   q u o t e   - -   t h e   " - l i n e "   o p t i o n   o u t p u t s   t h e   c o l u m n   d a t a   a n d   h e a d i n g   o n e   l i n e   a t   a   t i m e   -   u s e f u l   f o r   p a r s i n g   t h e   o u t p u t   f o r   p a r t i c u l a r   d a t a   i t e m s .  s e t   t a i l   t o   q u o t e  s e t   A l l   t o   " s e l e c t   c 1 8   f r o m   e p i s o d e ; "   - - r e t r i e v e s   t h e   t i t l e s   f r o m   t h e   t v s h o w   t a b l e  s e t   t v s h o w T a b l e   t o   d o   s h e l l   s c r i p t   h e a d   &   A l l   &   t a i l  s e t   t v s h o w T a b l e   t o   t v s h o w T a b l e   a s   t e x t  s e t   a l l P a r a   t o   e v e r y   p a r a g r a p h   i n   t v s h o w T a b l e  s e t   n e w T i t l e L i s t   t o   { }  r e p e a t   w i t h   a P a r a   i n   a l l P a r a   - - l o o p   f o r   T V   S h o w   t i t l e s !  	 i f   ( t e x t   o f   a P a r a )  "`   " "   t h e n  	 	 s e t   a T i t l e   t o   t e x t   ( ( o f f s e t   o f   "   c 1 8   =   "   i n   a P a r a )   +   7 )   t h r u   - 1   o f   a P a r a  	 	 c o p y   a T i t l e   t o   e n d   o f   n e w T i t l e L i s t  	 e n d   i f  e n d   r e p e a t  s e t   n e w T i t l e L i s t   t o   m y   r e p l a c e _ c h a r s ( n e w T i t l e L i s t ,   " =   " ,   r e t u r n )   - - c r e a t e s   v e r i t c a l   l i s t  t e l l   a p p l i c a t i o n   " F i n d e r "  	 s e t   M o i r a i _ d i r   t o   ( H D _ n a m e   &   " : U s e r s : "   &   u s e r N a m e   &   " : L i b r a r y : A p p l i c a t i o n   S u p p o r t : M o i r a i _ w e b _ b u i l d e r : " )   a s   a l i a s  	 i f   n o t   ( e x i s t s   f i l e   ( " N e w t v s h o w _ d a t a "   a s   s t r i n g )   i n   M o i r a i _ d i r )   t h e n  	 	 m a k e   n e w   f i l e   a t   M o i r a i _ d i r   w i t h   p r o p e r t i e s   { n a m e : " N e w t v s h o w _ d a t a " }  	 e n d   i f  	 s e t   t v s h o w _ d a t a   t o   ( H D _ n a m e   &   " : U s e r s : "   &   u s e r N a m e   &   " : L i b r a r y : A p p l i c a t i o n   S u p p o r t : M o i r a i _ w e b _ b u i l d e r : N e w t v s h o w _ d a t a : " )  	 m y   w r i t e _ t o _ f i l e ( n e w T i t l e L i s t ,   t v s h o w _ d a t a ,   f a l s e )   - - f a l s e   w i l l   e r a s e   p r e v i o u s   c o n t e n t s   f r o m   t h e   t e x t   f i l e  	 s e t   t v s h o w _ d a t a   t o   t v s h o w _ d a t a   a s   s t r i n g  	 s e t   t h e   o p e n _ t v s h o w _ d a t a   t o   o p e n   f o r   a c c e s s   f i l e   t v s h o w _ d a t a   w i t h   w r i t e   p e r m i s s i o n  	 s e t   n e w I n f o   t o   r e a d   f i l e   t v s h o w _ d a t a   u s i n g   d e l i m i t e r   " =   "  	 c l o s e   a c c e s s   t h e   o p e n _ t v s h o w _ d a t a  	 s e t   n e w I n f o T e x t   t o   n e w I n f o   a s   t e x t  	 - - L e t s   a d d   H T M L   p a g e s   n o w  	  	 s e t   t v s h o w _ d a t a   t o   ( H D _ n a m e   &   " : U s e r s : "   &   u s e r N a m e   &   " : L i b r a r y : A p p l i c a t i o n   S u p p o r t : M o i r a i _ w e b _ b u i l d e r : N e w t v s h o w _ d a t a : " )   a s   a l i a s  	 s e t   m o i r a i D i r   t o   f o l d e r   o f   t v s h o w _ d a t a  	 s e t   A p p _ f o l d e r   t o   f o l d e r   ( " S i t e s " )   i n   m o i r a i D i r  	 i f   n o t   ( e x i s t s   f o l d e r   ( " T V _ S h o w s "   a s   s t r i n g )   i n   A p p _ f o l d e r )   t h e n   - - c h e c k   f o r   f o l d e r s  	 	 m a k e   n e w   f o l d e r   a t   A p p _ f o l d e r   w i t h   p r o p e r t i e s   { n a m e : " T V _ S h o w s " }  	 e n d   i f  	 s e t   t v s h o w D i r   t o   f o l d e r   ( " T V _ S h o w s "   a s   s t r i n g )   i n   A p p _ f o l d e r  	 i f   ( c o u n t   o f   i t e m s   i n   t v s h o w D i r )   i s   g r e a t e r   t h a n   1   t h e n   - - c l e a r   f o l d e r s  	 	 d e l e t e   e v e r y   i t e m   i n   t v s h o w D i r  	 e n d   i f  	 i f   n o t   ( e x i s t s   f o l d e r   ( " v i d e o s "   a s   s t r i n g )   i n   A p p _ f o l d e r )   t h e n  	 	 m a k e   n e w   f o l d e r   a t   A p p _ f o l d e r   w i t h   p r o p e r t i e s   { n a m e : " v i d e o s " }  	 e n d   i f  	 s e t   v i d e o D i r   t o   f o l d e r   ( " v i d e o s "   a s   s t r i n g )   i n   A p p _ f o l d e r  	 i f   n o t   ( e x i s t s   f o l d e r   ( " T V _ S h o w s "   a s   s t r i n g )   i n   v i d e o D i r )   t h e n  	 	 m a k e   n e w   f o l d e r   a t   v i d e o D i r   w i t h   p r o p e r t i e s   { n a m e : " T V _ S h o w s " }  	 e n d   i f  	 s e t   v i d _ T v s h o w D i r   t o   f o l d e r   ( " T V _ S h o w s "   a s   s t r i n g )   i n   v i d e o D i r  	 i f   ( c o u n t   o f   i t e m s   i n   v i d _ T v s h o w D i r )   i s   g r e a t e r   t h a n   1   t h e n  	 	 d e l e t e   e v e r y   i t e m   i n   v i d _ T v s h o w D i r  	 e n d   i f  	 s e t   o l d T I D   t o   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s  	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   r e t u r n  	 s e t   a l l C o n t e n t   t o   e v e r y   t e x t   i t e m   o f   n e w I n f o T e x t  	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   o l d T I D  	 s e t   f i r s t T e x t   t o   t e x t   i t e m   1   o f   a l l C o n t e n t  	 s e t   f i r s t T e x t   t o   m y   t r i m _ l i n e ( f i r s t T e x t ,   "   " ,   0 )   - - g e t   r i d   o f   a n   e m p t y   s p a c e  	 c o p y   f i r s t T e x t   t o   t e x t   i t e m   1   o f   a l l C o n t e n t  	 s e t   o l d T I D   t o   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s  	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   r e t u r n  	 s e t   a l l C o n t e n t   t o   e v e r y   t e x t   i t e m   o f   a l l C o n t e n t  	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   o l d T I D  	 r e p e a t   w i t h   a n I t e m   i n   a l l C o n t e n t  	 	 s e t   o l d T I D   t o   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s  	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " T V _ S h o w s / "  	 	 s e t   t i t l e I n f o   t o   t e x t   i t e m   2   o f   a n I t e m  	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " / " 
 	 	 s e t   t h e C o u n t   t o   c o u n t   t e x t   i t e m s   o f   t i t l e I n f o 
 	 	 i f   t h e C o u n t   i s   g r e a t e r   t h a n   1   t h e n  	 	 	 s e t   a l l I n f o   t o   t e x t   i t e m   2   o f   t i t l e I n f o  	 	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " . "  	 	 	 s e t   l e t t e r N a m e   t o   f i r s t   c h a r a c t e r   o f   a l l I n f o   a s   t e x t  	 	 	 s e t   l e t t e r N a m e   t o   m y   C a p i t a l i z e F i r s t L e t t e r _ o f E v e r y W o r d ( l e t t e r N a m e )  	 	 	 s e t   s h o w N a m e   t o   t e x t   i t e m   1   o f   a l l I n f o   a s   t e x t  	 	 	 s e t   s e a s o n N a m e   t o   t e x t   i t e m   2   o f   a l l I n f o   a s   t e x t  	 	 	 s e t   e p i s o d e N a m e   t o   a l l I n f o   a s   t e x t 
 	 	 	 t r y  	 	 	 s e t   a S h o w   t o   m a k e   n e w   f o l d e r   a t   v i d _ T v s h o w D i r   w i t h   p r o p e r t i e s   { n a m e : s h o w N a m e } 
 	 	 	 e n d   t r y  	 	 	 s e t   a n E p i s o d e   t o   m a k e   n e w   f i l e   a t   a S h o w   w i t h   p r o p e r t i e s   { n a m e : e p i s o d e N a m e }  	 	 e n d   i f  	 e n d   r e p e a t  	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   o l d T I D  	  	 - - n o w   w e ' l l   b u i l d   H T M L   f i l e s !  	 - - t h i s   p a r t   i s   m e s s y   a n d   c o m p l e x ,   w o r k   h e r e   w o u l d   b e   g r e a t l y   a p p r e c i a t e d !   : - )  	  	 s e t   s h o w L i s t   t o   f o l d e r s   i n   v i d _ T v s h o w D i r   - - c h a n g e s   t i t l e   o f   e a c h   v i d e o   f i l e   f o r   l a t e r   s t e p  	 r e p e a t   w i t h   a S h o w   i n   s h o w L i s t  	 	 s e t   e p i s o d e L i s t   t o   e v e r y   f i l e   i n   a S h o w  	 	 r e p e a t   w i t h   a n E p i s o d e   i n   e p i s o d e L i s t   - - b e l o w   c h a n g e s   t h e   n a m e  	 	 	 s e t   s e m i E p i s o d e N a m e   t o   n a m e   o f   a n E p i s o d e   a s   t e x t  	 	 	 i f   s e m i E p i s o d e N a m e   d o e s   n o t   e n d   w i t h   " . n f o "   t h e n   - - K e e p s   . n f o   f i l e s   i n   t h e i r   p l a c e  	 	 	 	 s e t   o l d T I D   t o   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s  	 	 	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " . "  	 	 	 	 s e t   l e t t e r N a m e   t o   f i r s t   c h a r a c t e r   o f   s e m i E p i s o d e N a m e   a s   t e x t  	 	 	 	 s e t   l e t t e r N a m e   t o   m y   C a p i t a l i z e F i r s t L e t t e r _ o f E v e r y W o r d ( l e t t e r N a m e )  	 	 	 	 s e t   s h o w N a m e   t o   t e x t   i t e m   1   o f   s e m i E p i s o d e N a m e   a s   t e x t  	 	 	 	 s e t   s e a s o n N a m e   t o   t e x t   i t e m   2   o f   s e m i E p i s o d e N a m e   a s   t e x t  	 	 	 	 s e t   e p i s o d e N a m e   t o   t e x t   i t e m   3   o f   s e m i E p i s o d e N a m e   a s   t e x t  	 	 	 	 s e t   t h e E x t e n s i o n   t o   " . "   &   n a m e   e x t e n s i o n   o f   a n E p i s o d e  	 	 	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " . "  	 	 	 	 t r y  	 	 	 	 	 s e t   o l d L e t t e r   t o   l e t t e r N a m e   - - t e s t   f o r   n u m b e r  	 	 	 	 	 s e t   l e t t e r N a m e   t o   n u m b e r  	 	 	 	 	 s e t   n u m T e s t   t o   t r u e  	 	 	 	 	 s e t   l e t t e r N a m e   t o   o l d L e t t e r  	 	 	 	 e n d   t r y  	 	 	 	 i f   n u m T e s t   i s   t r u e   t h e n  	 	 	 	 	 s e t   l e t t e r N a m e   t o   m y   n u m b e r C o r r e c t i o n ( l e t t e r N a m e )   - - c o n v e r t   n u m b e r   t o   " N u m "  	 	 	 	 e n d   i f  	 	 	 	 i f   n o t   ( e x i s t s   f o l d e r   ( a z M e n u N a m e   a s   s t r i n g )   i n   t v s h o w D i r )   t h e n  	 	 	 	 	 s e t   a l p h a F o l d e r   t o   m a k e   n e w   f o l d e r   a t   t v s h o w D i r   w i t h   p r o p e r t i e s   { n a m e : a z M e n u N a m e }  	 	 	 	 e l s e  	 	 	 	 	 s e t   a l p h a F o l d e r   t o   f o l d e r   n a m e d   a z M e n u N a m e   i n   t v s h o w D i r  	 	 	 	 e n d   i f  	 	 	 	 i f   n o t   ( e x i s t s   f o l d e r   ( l e t t e r N a m e   a s   s t r i n g )   i n   a l p h a F o l d e r )   t h e n  	 	 	 	 	 s e t   l e t t e r F o l d e r   t o   m a k e   n e w   f o l d e r   a t   a l p h a F o l d e r   w i t h   p r o p e r t i e s   { n a m e : l e t t e r N a m e }  	 	 	 	 e l s e  	 	 	 	 	 s e t   l e t t e r F o l d e r   t o   f o l d e r   n a m e d   l e t t e r N a m e   i n   a l p h a F o l d e r  	 	 	 	 e n d   i f  	 	 	 	 i f   n o t   ( e x i s t s   f o l d e r   ( s h o w N a m e   a s   s t r i n g )   i n   l e t t e r F o l d e r )   t h e n  	 	 	 	 	 s e t   s h o w F o l d e r   t o   m a k e   n e w   f o l d e r   a t   l e t t e r F o l d e r   w i t h   p r o p e r t i e s   { n a m e : s h o w N a m e }  	 	 	 	 e l s e  	 	 	 	 	 s e t   s h o w F o l d e r   t o   f o l d e r   n a m e d   s h o w N a m e   i n   l e t t e r F o l d e r  	 	 	 	 e n d   i f  	 	 	 	 i f   n o t   ( e x i s t s   f o l d e r   ( s e a s o n N a m e   a s   s t r i n g )   i n   s h o w F o l d e r )   t h e n  	 	 	 	 	 s e t   s e a s o n F o l d e r   t o   m a k e   n e w   f o l d e r   a t   s h o w F o l d e r   w i t h   p r o p e r t i e s   { n a m e : s e a s o n N a m e }  	 	 	 	 e l s e  	 	 	 	 	 s e t   s e a s o n F o l d e r   t o   f o l d e r   n a m e d   s e a s o n N a m e   i n   s h o w F o l d e r  	 	 	 	 e n d   i f  	 	 	 	 t r y   - - d o n e   t o   p r e v e n t   d u p l i c a t e s   f r o m   b e i n g   e n t e r e d  	 	 	 	 	 i f   ( e x i s t s   f i l e   ( e p i s o d e N a m e )   i n   s e a s o n F o l d e r )   t h e n  	 	 	 	 	 e l s e  	 	 	 	 	 	 m o v e   a n E p i s o d e   t o   s e a s o n F o l d e r  	 	 	 	 	 e n d   i f  	 	 	 	 e n d   t r y  	 	 	 e n d   i f  	 	 e n d   r e p e a t  	 e n d   r e p e a t  	 s e t   t v N a m e   t o   n a m e   o f   t v s h o w D i r  	 s e t   c r e a t e d L e t t e r s   t o   { }   - -   u s e d   f o r   d e t e r m i n i n g   l e t t e r s   a t   t h e   e n d  	 s e t   a z L i s t   t o   f o l d e r s   i n   t v s h o w D i r   - - N E E D E D   F O R   H E I R A R C H Y   D O N ' T   E R A S E ! ! !  	 r e p e a t   w i t h   a z M e n u   i n   a z L i s t  	 	 s e t   a z M e n u N a m e   t o   n a m e   o f   a z M e n u  	 	 s e t   l e t t e r L i s t   t o   f o l d e r s   i n   a z M e n u  	 	 r e p e a t   w i t h   a L e t t e r   i n   l e t t e r L i s t  	 	 	 s e t   l e t t e r N a m e   t o   n a m e   o f   a L e t t e r  	 	 	 c o p y   l e t t e r N a m e   t o   e n d   o f   c r e a t e d L e t t e r s   - - u s e d   f o r   l e t t e r s   a t   t h e   e n d  	 	 	 s e t   s h o w L i s t   t o   f o l d e r s   i n   a L e t t e r  	 	 	 r e p e a t   w i t h   a S h o w   i n   s h o w L i s t  	 	 	 	 s e t   s h o w N a m e   t o   n a m e   o f   a S h o w  	 	 	 	 s e t   s e a s o n L i s t   t o   f o l d e r s   i n   a S h o w  	 	 	 	 r e p e a t   w i t h   a S e a s o n   i n   s e a s o n L i s t  	 	 	 	 	 s e t   s e a s o n N a m e   t o   n a m e   o f   a S e a s o n  	 	 	 	 	 s e t   e p i s o d e L i s t   t o   f i l e s   i n   a S e a s o n  	 	 	 	 	 r e p e a t   w i t h   a n E p i s o d e   i n   e p i s o d e L i s t  	 	 	 	 	 	 i f   n a m e   e x t e n s i o n   o f   a n E p i s o d e  "`   " h t m l "   t h e n   - - a v o i d   h t m l   f i l e s  	 	 	 	 	 	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " . "  	 	 	 	 	 	 	 s e t   e p i s o d e N a m e   t o   n a m e   o f   a n E p i s o d e  	 	 	 	 	 	 	 s e t   o r i g E p i s o d e N a m e   t o   e p i s o d e N a m e   - - b a c k u p   o f   t h e   n a m e !  	 	 	 	 	 	 	 s e t   e p i s o d e N a m e   t o   m y   r e p l a c e _ c h a r s ( e p i s o d e N a m e ,   "   " ,   " _ " )  	 	 	 	 	 	 	 s e t   e p i s o d e E x t e n s i o n   t o   n a m e   e x t e n s i o n   o f   a n E p i s o d e 
 	 	 	 	 	 	 	 s e t   a c t u a l E p i s o d e T i t l e   t o   t e x t   1   t h r u   ( ( o f f s e t   o f   e p i s o d e E x t e n s i o n   �  	 	 	 	 	 	 	 	 	 i n   o r i g E p i s o d e N a m e )   -   1 )   o f   o r i g E p i s o d e N a m e  	 	 	 	 	 	 	 s e t   e p i s o d e T i t l e   t o   t e x t   1   t h r u   ( ( o f f s e t   o f   e p i s o d e E x t e n s i o n   i n   e p i s o d e N a m e )   -   1 )   o f   e p i s o d e N a m e  	 	 	 	 	 	 	 s e t   d o c N a m e   t o   e p i s o d e T i t l e   &   " h t m l "  	 	 	 	 	 	 	 i f   n a m e   e x t e n s i o n   o f   a n E p i s o d e  "`   " h t m l "   t h e n   - - m o v e   a n E p i s o d e   t o   v i d D i r e c t o r y   a n d   r e b u i l d   f i l e s y s t e m  	 	 	 	 	 	 	 	 i f   { e x i s t s   f o l d e r   ( s h o w N a m e )   i n   v i d _ T v s h o w D i r }   t h e n  	 	 	 	 	 	 	 	 	 s e t   a l t S h o w   t o   f o l d e r   ( s h o w N a m e )   i n   v i d _ T v s h o w D i r  	 	 	 	 	 	 	 	 	 m o v e   a n E p i s o d e   t o   a l t S h o w   - - m o v e   t o   S e a s o n   i n   v i d D i r e c t o r y  	 	 	 	 	 	 	 	 	 s e t   c u r r e n t L o c   t o   a l t S h o w   a s   t e x t  	 	 	 	 	 	 	 	 e l s e  	 	 	 	 	 	 	 	 	 t r y  	 	 	 	 	 	 	 	 	 	 s e t   a l t S h o w   t o   m a k e   n e w   f o l d e r   a t   v i d _ T v s h o w D i r   w i t h   p r o p e r t i e s   { n a m e : s h o w N a m e }  	 	 	 	 	 	 	 	 	 e n d   t r y  	 	 	 	 	 	 	 	 	 m o v e   a n E p i s o d e   t o   a l t S h o w  	 	 	 	 	 	 	 	 	 s e t   c u r r e n t L o c   t o   a l t S h o w   a s   t e x t  	 	 	 	 	 	 	 	 e n d   i f  	 	 	 	 	 	 	 e n d   i f  	 	 	 	 	 	 e n d   i f  	 	 	 	 	 	 s e t   p a r e n t F o l   t o   f o l d e r   o f   t v s h o w D i r   - - u s e d   a s   a   d e l i m i t e r !   ( m w a h a h a h a )  	 	 	 	 	 	 s e t   p a r e n t N a m e   t o   n a m e   o f   p a r e n t F o l  	 	 	 	 	 	 s e t   p a t h N a m e   t o   c u r r e n t L o c   a s   t e x t  	 	 	 	 	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   p a r e n t N a m e   - - t h i s   a l l   p o i n t s  	 	 	 	 	 	 s e t   a l m o s t L o c   t o   t e x t   i t e m   2   o f   p a t h N a m e   - - t o   t h e   f i l e   f o r   t h e   H T M L  	 	 	 	 	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   o r i g E p i s o d e N a m e   - - c o d i n g  	 	 	 	 	 	 s e t   n e a r l y L o c   t o   t e x t   i t e m   1   o f   a l m o s t L o c   &   o r i g E p i s o d e N a m e  	 	 	 	 	 	 s e t   f i l e L o c   t o   t e x t   ( ( o f f s e t   o f   " : "   i n   n e a r l y L o c )   +   1 )   t h r u   - 1   o f   n e a r l y L o c  	 	 	 	 	 	 s e t   f i l e L o c   t o   m y   r e p l a c e _ c h a r s ( f i l e L o c ,   " : " ,   " / " )  	 	 	 	 	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   { " " }  	 	 	 	 	 	 t r y   - - p r e v e n t s   d u p l i c a t e s   f r o m   b e i n g   w r i t t e n - - - - - - - - - - - - - - - - - - - - - - - - - - - - . . . d 8 8 8  	 	 	 	 	 	 	 m a k e   n e w   f i l e   a t   a S e a s o n   w i t h   p r o p e r t i e s   { n a m e : d o c N a m e }   - - d 8 8 8 8  	 	 	 	 	 	 e n d   t r y   - - 	 	 	 	 	 	 	 	 	 	 	 	 	 8 8 8  	 	 	 	 	 	 i f   { e x i s t s   f i l e   ( d o c N a m e )   i n   a S e a s o n }   t h e n   - - 	 	 	 	 	 	 8 8 8  	 	 	 	 	 	 	 s e t   d F i l e   t o   f i l e   ( d o c N a m e )   i n   a S e a s o n   - - 	 	 	 	 	 	 8 8 8  	 	 	 	 	 	 	 s e t   e p i s o d e F i l e   t o   d F i l e   a s   a l i a s   - - 	 	 	 	 	 	 	 8 8 8  	 	 	 	 	 	 	 - - C o d e   f o r   e p i s o d e   h t m l   t e x t   f i l e ! - - - 	 	 	 	 	 	       	 8 8 8  	 	 	 	 	 	 	 - - y o u   c a n   m o d i f y   t h i s   f o r   y o u r   o w n   c o d i n g   n e e d s   o f   c o u r s e                 8 8 8 8 8 8 8 
 	 	 	 	 	 	 	 s e t   e p i s o d e T e x t   t o   " < ! D O C T Y P E   h t m l > 
 < h t m l > 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	       
         < h e a d > 
 	 < t i t l e > "   &   s h o w N a m e   &   " < / t i t l e > 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
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
                     < s o u r c e   s r c = ' . . / . . / . . / . . / . . / "   &   f i l e L o c   &   " '   t y p e = ' v i d e o / m p 4 ' / > 
                     < s o u r c e   s r c = ' . . / . . / . . / . . / . . / "   &   f i l e L o c   &   " '   t y p e = ' v i d e o / o g g ' / > 
                     < s o u r c e   s r c = ' . . / . . / . . / . . / . . / "   &   f i l e L o c   &   " '   t y p e = ' v i d e o / w e b m '   / > 
     < / v i d e o > 
     < b u t t o n   i d = ' f u l l s c r e e n v i d '   c l a s s = ' b u t t o n ' > F u l l s c r e e n   v i d e o < / b u t t o n > 
 < / d i v > 
     < s c r i p t > 
           ( f u n c t i o n ( w i n d o w ,   d o c u m e n t ) { 
 	 	 	 v a r   $   =   f u n c t i o n ( s e l e c t o r , c o n t e x t ) { r e t u r n ( c o n t e x t | | d o c u m e n t ) . q u e r y S e l e c t o r ( s e l e c t o r ) } ; 
 	 	 	 
 	 	 	 v a r   v i d e o     =   $ ( \ " v i d e o \ " ) , 
 	 	 	 	 i f r a m e   =   $ ( \ " i f r a m e \ " ) , 
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
 	 	 	 v a r   f u l l s c r e e n v i d e o   =   f u l l s c r e e n ( d o c u m e n t . c r e a t e E l e m e n t ( \ " v i d e o \ " ) ) ; 
 	 	 	 
 	 	 	 / /   W e b k i t   u s e s   ' r e q u e s t F u l l S c r e e n '   f o r   n o n   v i d e o   e l e m e n t s 
 	 	 	 v a r   f u l l s c r e e n o t h e r   =   f u l l s c r e e n ( d o c u m e n t . c r e a t e E l e m e n t ( \ " i f r a m e \ " ) ) ; 
 
 	 	 	 i f ( ! f u l l s c r e e n )   { 
 	 	 	 	 a l e r t ( \ " F u l l s c r e e n   w o n ' t   w o r k ,   p l e a s e   m a k e   s u r e   y o u ' r e   u s i n g   a   b r o w s e r   t h a t   s u p p o r t s   i t   a n d   y o u   h a v e   e n a b l e d   t h e   f e a t u r e \ " ) ; 
 	 	 	 	 r e t u r n ; 
 	 	 	 } 
 	 	 	 
 	 	 	 / /   S h o u l d   a d d   p r e f i x e d   e v e n t s   f o r   p o t e n t i a l   m s / o   o r   u n p r e f i x e d   s u p p o r t   t o o 
 	 	 	 v i d e o . a d d E v e n t L i s t e n e r ( \ " w e b k i t f u l l s c r e e n c h a n g e \ " , f u n c t i o n ( ) { 
 	 	 	 	 c o n s o l e . l o g ( d o c u m e n t . w e b k i t I s F u l l S c r e e n ) ; 
 	 	 	 } ,   f a l s e ) ; 
 	 	 	 v i d e o . a d d E v e n t L i s t e n e r ( \ " m o z f u l l s c r e e n c h a n g e \ " , f u n c t i o n ( ) { 
 	 	 	 	 c o n s o l e . l o g ( d o c u m e n t . m o z F u l l S c r e e n ) ; 
 	 	 	 } ,   f a l s e ) ; 
 
 	 	 	 $ ( \ " # f u l l s c r e e n v i d \ " ) . a d d E v e n t L i s t e n e r ( \ " c l i c k \ " ,   f u n c t i o n ( ) { 
 	 	 	 	 / /   T h e   t e s t   r e t u r n s   a   s t r i n g   s o   w e   c a n   e a s i l y   c a l l   i t   o n   a   c l i c k   e v e n t 
 	 	 	 	 v i d e o [ f u l l s c r e e n v i d e o ] ( ) ; 
 	 	 	 } ,   f a l s e ) ; 
 	 	 	 $ ( \ " # f u l l s c r e e n i f r a m e \ " ) . a d d E v e n t L i s t e n e r ( \ " c l i c k \ " ,   f u n c t i o n ( ) { 
 	 	 	 	 / /   i f r a m e   f u l l s c r e e n   a n d   n o n   v i d e o   e l e m e n t s   i n   w e b k i t   u s e   r e q u e s t   o v e r   e n t e r 
 	 	 	 	 i f r a m e [ f u l l s c r e e n o t h e r ] ( ) ; 
 	 	 	 } ,   f a l s e ) ; 
 	 	 } ) ( t h i s ,   t h i s . d o c u m e n t ) ; 
         < / s c r i p t > 
 < / b o d y > 
 < / h t m l > " 
 i g n o r i n g   a p p l i c a t i o n   r e s p o n s e s  	 	 	 	 	 	 	 	 s e t   e p i s o d e F i l e   t o   m y   w r i t e C o d e ( e p i s o d e F i l e ,   e p i s o d e T e x t )  	 	 	 	 	 	 	 e n d   i g n o r i n g  	 	 	 	 	 	 	 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . d 8 8 8 8 b .  	 	 	 	 	 	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " "   - - - - - - - - - - - - - - - - - d 8 8 P     Y 8 8 b  	 	 	 	 	 	 e n d   i f   - - - - - - - - - - - - - 	 	 	 - - -                                                 - - - - - - - - - - - - -                                   8 8 8  	 	 	 	 	 e n d   r e p e a t   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -       	 - -   - - - - - - - -                               - - -                       . d 8 8 P  	 	 	 	 	 s e t   d o c N a m e   t o   s e a s o n N a m e   &   " . h t m l "   - - - - - - 	 	       - - - - - - - - - - - - -           . o d 8 8 8 P I  	 	 	 	 	 s e t   a l t S h o w N a m e   t o   s h o w N a m e   a s   t e x t   - - - - - - - - - - -         - - - - - - - - - - - - -         d 8 8 P I  	 	 	 	 	 s e t   a l t S h o w N a m e   t o   m y   r e p l a c e _ c h a r s ( a l t S h o w N a m e ,   " _ " ,   "   " )   - - 8 8 8 I    	 	 	 	 	 s e t   a l t S e a s o n N a m e   t o   s e a s o n N a m e   a s   t e x t   - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8 8 8 8 8 8 8 8    	 	 	 	 	 s e t   a l t S e a s o n N a m e   t o   m y   r e p l a c e _ c h a r s ( a l t S e a s o n N a m e ,   " _ " ,   "   " )  	 	 	 	 	 t r y  	 	 	 	 	 	 m a k e   n e w   f i l e   a t   a S h o w   w i t h   p r o p e r t i e s   { n a m e : d o c N a m e }  	 	 	 	 	 e n d   t r y  	 	 	 	 	 i f   { e x i s t s   f i l e   ( d o c N a m e )   i n   a S h o w }   t h e n  	 	 	 	 	 	 s e t   d F i l e   t o   f i l e   ( d o c N a m e )   i n   a S h o w  	 	 	 	 	 	 s e t   e p i s o d e F i l e   t o   d F i l e   a s   a l i a s  	 	 	 	 	 	 s e t   l i s t P a r t 1   t o   " < l i > < a   h r e f = ' "   - - a u t o   g e n e r a t e   H T M L   l i s t s  	 	 	 	 	 	 s e t   l i s t P a r t 7   t o   " ' > "  	 	 	 	 	 	 s e t   l i s t P a r t 9   t o   " < / a > < / l i > "  	 	 	 	 	 	 s e t   s e a s o n H t m l L i s t   t o   { }  	 	 	 	 	 	 s e t   a l l F i l e s   t o   e v e r y   f i l e   i n   a S e a s o n  	 	 	 	 	 	 r e p e a t   w i t h   a F i l e   i n   a l l F i l e s  	 	 	 	 	 	 	 i f   n a m e   e x t e n s i o n   o f   a F i l e   i s   " h t m l "   t h e n  	 	 	 	 	 	 	 	 s e t   h t m l F i l e   t o   n a m e   o f   a F i l e   a s   t e x t 
 	 	 	 	 	 	 	 	 s e t   o l d T I D   t o   a p p l e s c r i p t ' s   t e x t   i t e m   d e l i m i t e r s 
 	 	 	 	 	 	 	 	 s e t   a p p l e s c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " . "  	 	 	 	 	 	 	 	 s e t   t r u e E p i s o d e N a m e   t o   t e x t   i t e m   3   o f   h t m l F i l e 
 	 	 	 	 	 	 	 	 s e t   o l d T I D   t o   a p p l e s c r i p t ' s   t e x t   i t e m   d e l i m i t e r s  	 	 	 	 	 	 	 	 s e t   t r u e E p i s o d e N a m e   t o   m y   r e p l a c e _ c h a r s ( t r u e E p i s o d e N a m e ,   "   " ,   " _ " )  	 	 	 	 	 	 	 	 s e t   t o t a l L i s t   t o   l i s t P a r t 1   &   " . . / . . / . . / . . / T V _ S h o w s "   &   " / "   &   a z M e n u N a m e   &   " / "   &   l e t t e r N a m e   &   " / "   &   s h o w N a m e   &   " / "   &   s e a s o n N a m e   &   " / "   &   h t m l F i l e   &   l i s t P a r t 7   &   t r u e E p i s o d e N a m e   &   l i s t P a r t 9  	 	 	 	 	 	 	 	 c o p y   t o t a l L i s t   t o   e n d   o f   s e a s o n H t m l L i s t  	 	 	 	 	 	 	 e n d   i f  	 	 	 	 	 	 e n d   r e p e a t  	 	 	 	 	 	 s e t   e p i s o d e T e x t   t o   " < ! D o c t y p e   h t m l > 
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
                         w i d t h : 5 0 0 p x ; 
                         l i n e - h e i g h t : 2 0 p x ; 
                         f o n t - s i z e :   1 9 p x ; 
                 } 
 
                 . S E _ n a v   l i   a   { 
                         t e x t - d e c o r a t i o n : n o n e ; 
                         d i s p l a y : b l o c k ; 
                         c o l o r : # F F F F F F ; 
                         p a d d i n g : 2 p x ; 
                         f o n t - s i z e : 1 3 ; 
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
 	           h e i g h t : 1 0 0 p x ; 
 	           w i d t h : 6 5 0 p x ; 
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
                         < l i > < a   h r e f = ' . . / . . / . . / . . / T V _ S h o w s / A - Z m e n u / "   &   l e t t e r N a m e   &   " / "   &   s h o w N a m e   &   " . h t m l ' >   . . < / a > < / l i > 
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
                 < h e a d e r   i d = ' s h o w T i t l e '   > "   &   a l t S h o w N a m e   &   " < / h e a d e r > 
                 < h e a d e r   i d = ' s e a s o n T i t l e '   > "   &   a l t S e a s o n N a m e   &   " < / h e a d e r > 
                 < u l   c l a s s = ' S E _ n a v ' > "   &   �  	 	 	 	 	 	 	 s e a s o n H t m l L i s t   &   " 
 	 	 < / u l > 
         < / d i v > 
 < / b o d y > 
 < / h t m l > "  	 	 	 	 	 	 i g n o r i n g   a p p l i c a t i o n   r e s p o n s e s  	 	 	 	 	 	 	 s e t   e p i s o d e F i l e   t o   m y   w r i t e C o d e ( e p i s o d e F i l e ,   e p i s o d e T e x t )  	 	 	 	 	 	 e n d   i g n o r i n g  	 	 	 	 	 e n d   i f  	 	 	 	 e n d   r e p e a t  	 	 	 	 s e t   d o c N a m e   t o   s h o w N a m e   &   " . h t m l "  	 	 	 	 t r y  	 	 	 	 	 m a k e   n e w   f i l e   a t   a L e t t e r   w i t h   p r o p e r t i e s   { n a m e : d o c N a m e }  	 	 	 	 e n d   t r y  	 	 	 	 i f   { e x i s t s   f i l e   ( d o c N a m e )   i n   a L e t t e r }   t h e n  	 	 	 	 	 s e t   d F i l e   t o   f i l e   ( d o c N a m e )   i n   a L e t t e r  	 	 	 	 	 s e t   e p i s o d e F i l e   t o   d F i l e   a s   a l i a s   - - 	 	 	 	 	 	 	 . d 8 8 8 8 b .  	 	 	 	 	 s e t   l i s t P a r t 1   t o   " < l i > < a   h r e f = ' "   - - a u t o   g e n e r a t e   H T M L   l i s t s - - - - - - - d 8 8 P     Y 8 8 b  	 	 	 	 	 s e t   l i s t P a r t 6   t o   " ' > "   - - 	 	 	 	 	 	 	 	 	 	 	     . d 8 8 P  	 	 	 	 	 s e t   l i s t P a r t 8   t o   " < / a > < / l i > "   - - 	 	 	 	 	 	 	 	 	 8 8 8 8 I  	 	 	 	 	 s e t   s h o w H t m l L i s t   t o   { }   - - 	 	 	 	 	 	 	 	 	 	     I Y 8 b .  	 	 	 	 	 s e t   a l l F i l e s   t o   e v e r y   f i l e   i n   a S h o w   - - 	 	 	 	 	 	 	 8 8 8         8 8 8  	 	 	 	 	 r e p e a t   w i t h   a F i l e   i n   a l l F i l e s   - - 	 	 	 	 	 	 	 	 Y 8 8 b     d 8 8 P  	 	 	 	 	 	 i f   n a m e   e x t e n s i o n   o f   a F i l e   i s   " h t m l "   t h e n   - - - 	 	 	 	   I Y 8 8 8 8 P I  	 	 	 	 	 	 	 s e t   h t m l F i l e   t o   n a m e   o f   a F i l e   a s   t e x t  	 	 	 	 	 	 	 s e t   t r u e S e a s o n N a m e   t o   t e x t   1   t h r u   ( ( o f f s e t   o f   " . "   i n   h t m l F i l e )   -   1 )   o f   h t m l F i l e  	 	 	 	 	 	 	 s e t   t r u e S e a s o n N a m e   t o   m y   r e p l a c e _ c h a r s ( t r u e S e a s o n N a m e ,   " _ " ,   "   " )  	 	 	 	 	 	 	 s e t   t o t a l L i s t   t o   l i s t P a r t 1   &   " . . / . . / . . / T V _ S h o w s "   &   " / "   &   a z M e n u N a m e   &   " / "   &   l e t t e r N a m e   &   " / "   &   s h o w N a m e   &   " / "   &   h t m l F i l e   &   l i s t P a r t 6   &   t r u e S e a s o n N a m e   &   l i s t P a r t 8  	 	 	 	 	 	 	 c o p y   t o t a l L i s t   t o   e n d   o f   s h o w H t m l L i s t  	 	 	 	 	 	 e n d   i f  	 	 	 	 	 e n d   r e p e a t  	 	 	 	 	 s e t   e p i s o d e T e x t   t o   " < ! D o c t y p e   h t m l > 
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
                         w i d t h : 5 0 0 p x ; 
                         l i n e - h e i g h t : 2 0 p x ; 
                         f o n t - s i z e : 1 9 p x ; 
                 } 
 
                 . S E _ n a v   l i   a   { 
                         t e x t - d e c o r a t i o n : n o n e ; 
                         d i s p l a y : b l o c k ; 
                         c o l o r : # F F F F F F ; 
                         p a d d i n g : 2 p x ; 
                         f o n t - s i z e : 1 3 ; 
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
                         < l i > < a   h r e f = ' . . / . . / . . / T V _ S h o w s / A - Z m e n u / "   &   l e t t e r N a m e   &   " . h t m l ' >   . . < / a > < / l i > 
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
                         c o l o r : # 7 0 8 0 9 0 ; p o s i t i o n : a b s o l u t e ; t o p : 2 ; l e f t : 2 0 p x ; h e i g h t : 1 0 0 p x ; w i d t h : 6 0 0 p x ' > "   &   a l t S h o w N a m e   &   " < / h e a d e r >                 
                 < u l   c l a s s = ' S E _ n a v '   s t y l e = ' p o s i t i o n : a b s o l u t e ; t o p : 1 2 5 p x ; ' > "   &   �  	 	 	 	 	 	 s h o w H t m l L i s t   &   " 
 	 	 < / u l > 
         < / d i v > 
 < / b o d y > 
 < / h t m l > "  	 	 	 	 	 i g n o r i n g   a p p l i c a t i o n   r e s p o n s e s  	 	 	 	 	 	 s e t   e p i s o d e F i l e   t o   m y   w r i t e C o d e ( e p i s o d e F i l e ,   e p i s o d e T e x t )  	 	 	 	 	 e n d   i g n o r i n g  	 	 	 	 e n d   i f  	 	 	 e n d   r e p e a t  	 	 	 s e t   d o c N a m e   t o   l e t t e r N a m e   &   " . h t m l "  	 	 	 t r y  	 	 	 	 m a k e   n e w   f i l e   a t   ( a z M e n u )   w i t h   p r o p e r t i e s   { n a m e : d o c N a m e }  	 	 	 e n d   t r y  	 	 	 i f   { e x i s t s   f i l e   ( d o c N a m e )   i n   a z M e n u }   t h e n  	 	 	 	 s e t   d F i l e   t o   f i l e   ( d o c N a m e )   i n   a z M e n u   - - 	 	 	 	 d 8 8 8 8  	 	 	 	 s e t   e p i s o d e F i l e   t o   d F i l e   a s   a l i a s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - d 8 P 8 8 8      	 	 	 	 s e t   l i s t P a r t 1   t o   " < l i > < a   h r e f = ' "   - - - - - - - - - - - - - - - - - - - - - - - - - - d 8 P   8 8 8  	 	 	 	 s e t   l i s t P a r t 6   t o   " ' > "   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - d 8 P     8 8 8  	 	 	 	 s e t   l i s t P a r t 8   t o   " < / a > < / l i > "   - - - - - - - - - - - - - - - - - - - - - - - - - - - - d 8 8       8 8 8    	 	 	 	 s e t   l e t t e r H t m l L i s t   t o   { }   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8 8 8 8 8 8 8 8  	 	 	 	 s e t   a l l F i l e s   t o   e v e r y   f i l e   i n   a L e t t e r   - - - - - - - - - - - - - - - - - - - - - - - -           8 8 8    	 	 	 	 r e p e a t   w i t h   a F i l e   i n   a l l F i l e s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8  	 	 	 	 	 i f   n a m e   e x t e n s i o n   o f   a F i l e   i s   " h t m l "   t h e n  	 	 	 	 	 	 s e t   h t m l F i l e   t o   n a m e   o f   a F i l e   a s   t e x t  	 	 	 	 	 	 s e t   t r u e S h o w N a m e   t o   t e x t   1   t h r u   ( ( o f f s e t   o f   " . "   i n   h t m l F i l e )   -   1 )   o f   h t m l F i l e  	 	 	 	 	 	 s e t   t r u e S h o w N a m e   t o   m y   r e p l a c e _ c h a r s ( t r u e S h o w N a m e ,   " _ " ,   "   " )  	 	 	 	 	 	 s e t   t o t a l L i s t   t o   l i s t P a r t 1   &   " . . / . . / T V _ S h o w s "   &   " / "   &   a z M e n u N a m e   &   " / "   &   l e t t e r N a m e   &   " / "   &   h t m l F i l e   &   l i s t P a r t 6   &   t r u e S h o w N a m e   &   l i s t P a r t 8  	 	 	 	 	 	 c o p y   t o t a l L i s t   t o   e n d   o f   l e t t e r H t m l L i s t  	 	 	 	 	 e n d   i f  	 	 	 	 e n d   r e p e a t  	 	 	 	 i f   l e t t e r N a m e   a s   s t r i n g   i s   " - "   t h e n  	 	 	 	 	 s e t   l e t t e r N a m e   t o   " # "   a s   s t r i n g  	 	 	 	 e n d   i f  	 	 	 	 s e t   e p i s o d e T e x t   t o   " < ! D o c t y p e   h t m l > 
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
                         w i d t h : 5 0 0 p x ; 
                         l i n e - h e i g h t : 2 0 p x ; 
                         f o n t - s i z e : 1 9 p x ; 
                 } 
 
                 . S E _ n a v   l i   a   { 
                         t e x t - d e c o r a t i o n : n o n e ; 
                         d i s p l a y : b l o c k ; 
                         c o l o r : # F F F F F F ; 
                         p a d d i n g : 2 p x ; 
                         f o n t - s i z e : 1 3 ; 
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
                         c o l o r : # 7 0 8 0 9 0 ; p o s i t i o n : a b s o l u t e ; t o p : 2 ; l e f t : 2 0 p x ; h e i g h t : 1 0 0 p x ; w i d t h : 3 0 0 p x ' > "   &   l e t t e r N a m e   &   " < / h e a d e r >                 
                 < u l   c l a s s = ' S E _ n a v '   s t y l e = ' p o s i t i o n : a b s o l u t e ; t o p : 7 5 p x ; ' > "   &   �  	 	 	 	 	 l e t t e r H t m l L i s t   &   " 
 	 	   < / u l > 
         < / d i v > 
 < / b o d y > 
 < / h t m l > "  	 	 	 	 i g n o r i n g   a p p l i c a t i o n   r e s p o n s e s  	 	 	 	 	 s e t   e p i s o d e F i l e   t o   m y   w r i t e C o d e ( e p i s o d e F i l e ,   e p i s o d e T e x t )  	 	 	 	 e n d   i g n o r i n g  	 	 	 e n d   i f   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8 8 8 8 8 8 8  	 	 e n d   r e p e a t   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8  	 	 s e t   d o c N a m e   t o   a z M e n u N a m e   &   " . h t m l "   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8  	 	 t r y   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8 8 8 8 8 b .  	 	 	 m a k e   n e w   f i l e   a t   ( t v s h o w D i r )   w i t h   p r o p e r t i e s   { n a m e : d o c N a m e }   - - - - - - - - - - I Y 8 8 b  	 	 e n d   t r y   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8  	 	 i f   { e x i s t s   f i l e   ( d o c N a m e )   i n   t v s h o w D i r }   t h e n   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - Y 8 8 b     d 8 8 P    	 	 	 s e t   d F i l e   t o   f i l e   ( d o c N a m e )   i n   t v s h o w D i r   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - I Y 8 8 8 8 P I  	 	 	 s e t   e p i s o d e F i l e   t o   d F i l e   a s   a l i a s  	 	 	 s e t   e p i s o d e T e x t   t o   " < ! D o c t y p e   h t m l > 
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
 < / h t m l > "  	 	 	 i g n o r i n g   a p p l i c a t i o n   r e s p o n s e s  	 	 	 	 s e t   e p i s o d e F i l e   t o   m y   w r i t e C o d e ( e p i s o d e F i l e ,   e p i s o d e T e x t )  	 	 	 e n d   i g n o r i n g  	 	 e n d   i f   - - t h e   s e c t i o n   b e l o w   m a k e s   b l a n k   p a g e s   f o r   u n u s e d   l e t t e r s  	 e n d   r e p e a t  	 s e t   a l l L e t t e r s   t o   " - "   &   " A "   &   " B "   &   " C "   &   " D "   &   " E "   &   " F "   &   " G "   &   " H "   &   " I "   &   " J "   &   " K "   &   " L "   &   " M "   &   " N "   &   " O "   &   " P "   &   " Q "   &   " R "   &   " S "   &   " T "   &   " U "   &   " V "   &   " W "   &   " X "   &   " Y "   &   " Z "  	 s e t   a l l I t e m s   t o   e v e r y   c h a r a c t e r   o f   a l l L e t t e r s   a s   s t r i n g  	 r e p e a t   w i t h   a n I t e m   i n   a l l I t e m s  	 	 i f   c r e a t e d L e t t e r s   d o e s   n o t   c o n t a i n   a n I t e m   t h e n  	 	 	 s e t   l e t t e r N a m e   t o   a n I t e m  	 	 	 s e t   d o c N a m e   t o   l e t t e r N a m e   &   " . h t m l "  	 	 	 t r y  	 	 	 	 m a k e   n e w   f i l e   a t   ( a z M e n u )   w i t h   p r o p e r t i e s   { n a m e : d o c N a m e }  	 	 	 e n d   t r y  	 	 	 t r y  	 	 	 	 i f   { e x i s t s   f i l e   ( d o c N a m e )   i n   a z M e n u }   t h e n  	 	 	 	 	 s e t   d F i l e   t o   f i l e   ( d o c N a m e )   i n   a z M e n u   - - 	 	 	 	 d 8 8 8 8  	 	 	 	 	 s e t   e p i s o d e F i l e   t o   d F i l e   a s   a l i a s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - d 8 P 8 8 8      	 	 	 	 	 s e t   l e t t e r H t m l L i s t   t o   " "  	 	 	 	 	 i f   l e t t e r N a m e   a s   s t r i n g   i s   " - "   t h e n  	 	 	 	 	 	 s e t   l e t t e r N a m e   t o   " # "   a s   s t r i n g  	 	 	 	 	 e n d   i f  	 	 	 	 	 s e t   e p i s o d e T e x t   t o   " < ! D o c t y p e   h t m l > 
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
                         t e x t - d e c o r a t i o n : n o n e ; 
                         d i s p l a y : b l o c k ; 
                         c o l o r : # F F F F F F ; 
                         p a d d i n g : 2 p x ; 
                         f o n t - s i z e : 1 3 ; 
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
                         c o l o r : # 7 0 8 0 9 0 ; p o s i t i o n : a b s o l u t e ; t o p : 2 ; l e f t : 2 0 p x ; h e i g h t : 1 0 0 p x ; w i d t h : 3 0 0 p x ' > "   &   l e t t e r N a m e   &   " < / h e a d e r >                 
                 < u l   c l a s s = ' S E _ n a v '   s t y l e = ' p o s i t i o n : a b s o l u t e ; t o p : 7 5 p x ; ' > "   &   �  	 	 	 	 	 	 l e t t e r H t m l L i s t   &   " 
 	 	   < / u l > 
         < / d i v > 
 < / b o d y > 
 < / h t m l > "  	 	 	 	 	 i g n o r i n g   a p p l i c a t i o n   r e s p o n s e s  	 	 	 	 	 	 s e t   e p i s o d e F i l e   t o   m y   w r i t e C o d e ( e p i s o d e F i l e ,   e p i s o d e T e x t )  	 	 	 	 	 e n d   i g n o r i n g  	 	 	 	 e n d   i f   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8 8 8 8 8 8 8  	 	 	 e n d   t r y  	 	 e n d   i f  	 e n d   r e p e a t   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8  	  e n d   t e l l   - - - - - - - - - - - - - - - - - - - - - - - - - - - -  o n   w r i t e C o d e ( e p i s o d e F i l e ,   e p i s o d e T e x t )   - - d o n ' t   e v e n   a s k   m e   w h y   t h i s   s e c t i o n   w o r k s . . .  	 s e t   b a r   t o   o p e n   f o r   a c c e s s   e p i s o d e F i l e  	 c l o s e   a c c e s s   b a r  	 t r y  	 	 w r i t e   e p i s o d e T e x t   t o   e p i s o d e F i l e  	 	 c l o s e   a c c e s s   e p i s o d e F i l e  	 	 o p e n   f o r   a c c e s s   e p i s o d e F i l e  	 e n d   t r y  	 t r y  	 	 c l o s e   a c c e s s   e p i s o d e F i l e  	 e n d   t r y  	 r e t u r n   e p i s o d e F i l e  e n d   w r i t e C o d e   o n   r e p l a c e _ c h a r s ( t h i s _ t e x t ,   s e a r c h _ s t r i n g ,   r e p l a c e m e n t _ s t r i n g )  	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   t h e   s e a r c h _ s t r i n g  	 s e t   t h e   i t e m _ l i s t   t o   e v e r y   t e x t   i t e m   o f   t h i s _ t e x t  	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   t h e   r e p l a c e m e n t _ s t r i n g  	 s e t   t h i s _ t e x t   t o   t h e   i t e m _ l i s t   a s   s t r i n g  	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " "  	 r e t u r n   t h i s _ t e x t  e n d   r e p l a c e _ c h a r s   o n   n u m b e r C o r r e c t i o n ( t h e N a m e )  	 g l o b a l   t h e N u m b e r s ,   n u m b e r L a b e l  	 s e t   o l d T I D   t o   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s  	 r e p e a t   w i t h   i   f r o m   1   t o   c o u n t   o f   t h e N u m b e r s  	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   i t e m   i   o f   t h e N u m b e r s  	 	 s e t   t h e T e x t B i t s   t o   t e x t   i t e m s   o f   t h e N a m e  	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   i t e m   1   o f   n u m b e r L a b e l  	 	 s e t   t h e N a m e   t o   t h e T e x t B i t s   a s   t e x t  	 e n d   r e p e a t  	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   o l d T I D  	 r e t u r n   t h e N a m e  e n d   n u m b e r C o r r e c t i o n   o n   w r i t e _ t o _ f i l e ( t h i s _ d a t a ,   t a r g e t _ f i l e ,   a p p e n d _ d a t a )  	 t r y  	 	 s e t   t h e   t a r g e t _ f i l e   t o   t h e   t a r g e t _ f i l e   a s   s t r i n g  	 	 s e t   t h e   o p e n _ t a r g e t _ f i l e   t o   o p e n   f o r   a c c e s s   f i l e   t a r g e t _ f i l e   w i t h   w r i t e   p e r m i s s i o n  	 	 i f   a p p e n d _ d a t a   i s   f a l s e   t h e n   s e t   e o f   o f   t h e   o p e n _ t a r g e t _ f i l e   t o   0  	 	 w r i t e   t h i s _ d a t a   t o   t h e   o p e n _ t a r g e t _ f i l e   s t a r t i n g   a t   e o f  	 	 c l o s e   a c c e s s   t h e   o p e n _ t a r g e t _ f i l e  	 	 r e t u r n   t r u e  	 o n   e r r o r  	 	 t r y  	 	 	 c l o s e   a c c e s s   f i l e   t a r g e t _ f i l e  	 	 e n d   t r y  	 	 r e t u r n   f a l s e  	 e n d   t r y  e n d   w r i t e _ t o _ f i l e   o n   t r i m _ l i n e ( f i r s t T e x t ,   t r i m _ c h a r s ,   t r i m _ i n d i c a t o r )  	 - -   0   =   b e g i n n i n g ,   1   =   e n d ,   2   =   b o t h  	 s e t   x   t o   t h e   l e n g t h   o f   t h e   t r i m _ c h a r s  	 - -   T R I M   B E G I N N I N G  	 i f   t h e   t r i m _ i n d i c a t o r   i s   i n   { 0 ,   2 }   t h e n  	 	 r e p e a t   w h i l e   f i r s t T e x t   b e g i n s   w i t h   t h e   t r i m _ c h a r s  	 	 	 t r y  	 	 	 	 s e t   f i r s t T e x t   t o   c h a r a c t e r s   ( x   +   1 )   t h r u   - 1   o f   f i r s t T e x t   a s   s t r i n g  	 	 	 o n   e r r o r  	 	 	 	 - -   t h e   t e x t   c o n t a i n s   n o t h i n g   b u t   t h e   t r i m   c h a r a c t e r s  	 	 	 	 r e t u r n   " "  	 	 	 e n d   t r y  	 	 e n d   r e p e a t  	 e n d   i f  	 - -   T R I M   E N D I N G  	 i f   t h e   t r i m _ i n d i c a t o r   i s   i n   { 1 ,   2 }   t h e n  	 	 r e p e a t   w h i l e   f i r s t T e x t   e n d s   w i t h   t h e   t r i m _ c h a r s  	 	 	 t r y  	 	 	 	 s e t   f i r s t T e x t   t o   c h a r a c t e r s   1   t h r u   - ( x   +   1 )   o f   f i r s t T e x t   a s   s t r i n g  	 	 	 o n   e r r o r  	 	 	 	 - -   t h e   t e x t   c o n t a i n s   n o t h i n g   b u t   t h e   t r i m   c h a r a c t e r s  	 	 	 	 r e t u r n   " "  	 	 	 e n d   t r y  	 	 e n d   r e p e a t  	 e n d   i f  	 r e t u r n   f i r s t T e x t  e n d   t r i m _ l i n e   o n   C a p i t a l i z e F i r s t L e t t e r _ o f E v e r y W o r d ( I n p u t S t r i n g )  	 s e t   n e w S t r i n g   t o   " "  	 r e p e a t   w i t h   c u r r e n t W o r d   i n   ( e v e r y   w o r d   o f   I n p u t S t r i n g )  	 	 d o   s h e l l   s c r i p t   " r u b y   - e   ' p u t s   \ " "   &   c u r r e n t W o r d   &   " \ " . c a p i t a l i z e ' "  	 	 s e t   n e w S t r i n g   t o   n e w S t r i n g   &   r e s u l t   &   "   "  	 e n d   r e p e a t  	 r e t u r n   ( c h a r a c t e r s   1   t h r o u g h   - 2   o f   n e w S t r i n g   a s   t e x t )  e n d   C a p i t a l i z e F i r s t L e t t e r _ o f E v e r y W o r d    s e t   s i t e s _ f o l d e r   t o   ( H D _ n a m e   &   " : U s e r s : "   &   u s e r N a m e   &   " : L i b r a r y : A p p l i c a t i o n   S u p p o r t : M o i r a i _ w e b _ b u i l d e r : S i t e s : " )   a s   a l i a s  t e l l   a p p l i c a t i o n   " F i n d e r "  	 s e t   f r o n t P a g e   t o   m a k e   n e w   f i l e   a t   s i t e s _ f o l d e r   w i t h   p r o p e r t i e s   { n a m e : " I n d e x . h t m l " }  	 s e t   f r o n t P a g e   t o   f r o n t P a g e   a s   t e x t  	 s e t   t h e T e x t   t o   " < ! D O C T Y P E   h t m l > 
 < h t m l   l a n g = ' e n ' > 
     < h e a d > 
         < m e t a   c o n t e n t = ' t e x t / h t m l ;   c h a r s e t = u t f - 8 '   h t t p - e q u i v = ' C o n t e n t - T y p e ' > 
         < t i t l e > M a i n   P a g e < / t i t l e > 
         < s t y l e > 
                 b o d y   { 
                       b a c k g r o u n d - c o l o r : # 0 0 0 0 0 0 ; 
                 } 
 
                 < ! - -   M a i n   P a g e   - - > 
                   # v i d e o _ b a c k g r o u n d   { 
                         t o p : 0 ; 
                         b o t t o m : 0 ; 
                         l e f t : 0 ; 
                         r i g h t : 0 ; 
                         z - i n d e x : - 1 0 ; 
                     p o s i t i o n : f i x e d ; 
                     h e i g h t : 1 0 0 % ; 
                     w i d t h : 1 0 0 % ; 
                     b a c k g r o u n d - c o l o r : # 0 0 0 0 0 0 ; 
             } 
             
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
                     r i g h t : 1 0 p x ; 
             } 
             
             . b u t t o n : h o v e r   { 
                     v i s i b i l i t y : v i s i b l e ; 
                     o p a c i t y : 1 ; 
                     - w e b k i t - t r a n s i t i o n - d e l a y : 0 s ; 
                     - m o z - t r a n s i t i o n - d e l a y : 0 s ; 
                     - m s - t r a n s i t i o n - d e l a y : 0 s ; 
                     - o - t r a n s i t i o n - d e l a y : 0 s ; 
                     t r a n s i t i o n - d e l a y : 0 s ; 
             } 
             
             # m a i n M e n u   >   u l   { 
     v i s i b i l i t y : v i s i b l e ; 
     o p a c i t y : 0 ; 
     - w e b k i t - t r a n s i t i o n : v i s i b i l i t y   0 s   l i n e a r   0 . 5 s , o p a c i t y   0 . 5 s   l i n e a r ; 
     - m o z - t r a n s i t i o n : v i s i b i l i t y   0 s   l i n e a r   0 . 5 s , o p a c i t y   0 . 5 s   l i n e a r ; 
     - m s - t r a n s i t i o n : v i s i b i l i t y   0 s   l i n e a r   0 . 5 s , o p a c i t y   0 . 5 s   l i n e a r ; 
     - o - t r a n s i t i o n : v i s i b i l i t y   0 s   l i n e a r   0 . 5 s , o p a c i t y   0 . 5 s   l i n e a r ; 
     t r a n s i t i o n : v i s i b i l i t y   0 s   l i n e a r   0 . 5 s , o p a c i t y   0 . 5 s   l i n e a r ; 
     p o s i t i o n : a b s o l u t e ; 
     t o p : 1 0 p x ; 
     l e f t : 5 p x ; 
   z - i n d e x : 1 ; 
 } 
 # m a i n M e n u : h o v e r   >   u l   { 
     v i s i b i l i t y : v i s i b l e ; 
     o p a c i t y : 1 ; 
     - w e b k i t - t r a n s i t i o n - d e l a y : 0 s ; 
     - m o z - t r a n s i t i o n - d e l a y : 0 s ; 
     - m s - t r a n s i t i o n - d e l a y : 0 s ; 
     - o - t r a n s i t i o n - d e l a y : 0 s ; 
     t r a n s i t i o n - d e l a y : 0 s ; 
   z - i n d e x : 1 ; 
     } 
 
               < / s t y l e > 
 < / h e a d > 
 < b o d y > 
         < d i v   c l a s s = ' f l ' > 
 < d i v     i d = ' m a i n M e n u ' > 
 < u l > 
         < a   h r e f = ' T V _ S h o w s / a - z m e n u . h t m l ' > T V   S h o w s < / a > 
         < a   h r e f = ' M o v i e s / a - z m e n u . h t m l ' > M o v i e s < / a > 
         < a   h r e f = ' # ' > F i l e s < / a > 
 < / u l > 
 < / d i v > 
         < v i d e o   i d = ' v i d e o _ b a c k g r o u n d '   p r e l o a d = ' a u t o | m e t a d a t a '   h e i g h t = ' 1 0 0 % ' 
           w i d t h = ' 1 0 0 % '   a u t o p l a y > 
           < s o u r c e   s r c = ' v i d e o s / F r o n t - W e b p a g e - P r o j e c t . m o v '   t y p e = ' v i d e o / w e b m '   / > 
                 < s o u r c e   s r c = ' v i d e o s / F r o n t - W e b p a g e - P r o j e c t . m o v '   t y p e = ' v i d e o / m p 4 '   / > 
                 < s o u r c e   s r c = ' v i d e o s / F r o n t - W e b p a g e - P r o j e c t . m o v '   t y p e = ' v i d e o / o g g '   / > 
                 < / v i d e o > 
     < b u t t o n   i d = ' f u l l s c r e e n v i d '   c l a s s = ' b u t t o n ' > F u l l s c r e e n   v i d e o < / b u t t o n > 
 < / d i v > 
 < s c r i p t > 
             ( f u n c t i o n ( w i n d o w ,   d o c u m e n t ) { 
 	 	 	 v a r   $   =   f u n c t i o n ( s e l e c t o r , c o n t e x t ) { r e t u r n ( c o n t e x t | | d o c u m e n t ) . q u e r y S e l e c t o r ( s e l e c t o r ) } ; 
 	 	 	 
 	 	 	 v a r   v i d e o     =   $ ( \ " v i d e o \ " ) , 
 	 	 	 	 i f r a m e   =   $ ( \ " i f r a m e \ " ) , 
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
 	 	 	 v a r   f u l l s c r e e n v i d e o   =   f u l l s c r e e n ( d o c u m e n t . c r e a t e E l e m e n t ( \ " v i d e o \ " ) ) ; 
 	 	 	 
 	 	 	 / /   W e b k i t   u s e s   ' r e q u e s t F u l l S c r e e n '   f o r   n o n   v i d e o   e l e m e n t s 
 	 	 	 v a r   f u l l s c r e e n o t h e r   =   f u l l s c r e e n ( d o c u m e n t . c r e a t e E l e m e n t ( \ " i f r a m e \ " ) ) ; 
 
 	 	 	 i f ( ! f u l l s c r e e n )   { 
 	 	 	 	 a l e r t ( \ " F u l l s c r e e n   w o n ' t   w o r k ,   p l e a s e   m a k e   s u r e   y o u ' r e   u s i n g   a   b r o w s e r   t h a t   s u p p o r t s   i t   a n d   y o u   h a v e   e n a b l e d   t h e   f e a t u r e \ " ) ; 
 	 	 	 	 r e t u r n ; 
 	 	 	 } 
 	 	 	 
 	 	 	 / /   S h o u l d   a d d   p r e f i x e d   e v e n t s   f o r   p o t e n t i a l   m s / o   o r   u n p r e f i x e d   s u p p o r t   t o o 
 	 	 	 v i d e o . a d d E v e n t L i s t e n e r ( \ " w e b k i t f u l l s c r e e n c h a n g e \ " , f u n c t i o n ( ) { 
 	 	 	 	 c o n s o l e . l o g ( d o c u m e n t . w e b k i t I s F u l l S c r e e n ) ; 
 	 	 	 } ,   f a l s e ) ; 
 	 	 	 v i d e o . a d d E v e n t L i s t e n e r ( \ " m o z f u l l s c r e e n c h a n g e \ " , f u n c t i o n ( ) { 
 	 	 	 	 c o n s o l e . l o g ( d o c u m e n t . m o z F u l l S c r e e n ) ; 
 	 	 	 } ,   f a l s e ) ; 
 
 	 	 	 $ ( \ " # f u l l s c r e e n v i d \ " ) . a d d E v e n t L i s t e n e r ( \ " c l i c k \ " ,   f u n c t i o n ( ) { 
 	 	 	 	 / /   T h e   t e s t   r e t u r n s   a   s t r i n g   s o   w e   c a n   e a s i l y   c a l l   i t   o n   a   c l i c k   e v e n t 
 	 	 	 	 v i d e o [ f u l l s c r e e n v i d e o ] ( ) ; 
 	 	 	 } ,   f a l s e ) ; 
 	 	 	 $ ( \ " # f u l l s c r e e n i f r a m e \ " ) . a d d E v e n t L i s t e n e r ( \ " c l i c k \ " ,   f u n c t i o n ( ) { 
 	 	 	 	 / /   i f r a m e   f u l l s c r e e n   a n d   n o n   v i d e o   e l e m e n t s   i n   w e b k i t   u s e   r e q u e s t   o v e r   e n t e r 
 	 	 	 	 i f r a m e [ f u l l s c r e e n o t h e r ] ( ) ; 
 	 	 	 } ,   f a l s e ) ; 
 	 	 } ) ( t h i s ,   t h i s . d o c u m e n t ) ; 
 
         < / s c r i p t > 
 < / b o d y > 
 < / h t m l > "  	 s e t   t h e   o p e n _ f r o n t P a g e   t o   o p e n   f o r   a c c e s s   f i l e   f r o n t P a g e   w i t h   w r i t e   p e r m i s s i o n  	 w r i t e   t h e T e x t   t o   f i l e   f r o n t P a g e  	 c l o s e   a c c e s s   o p e n _ f r o n t P a g e  e n d   t e l l   a c t i v a t e   a p p l i c a t i o n   " T e r m i n a l "  t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "  	 t e l l   p r o c e s s   " T e r m i n a l "  	 	 k e y s t r o k e   " r s y n c   - a v z e   s s h   \ " / u s e r s / m a r i s e l a b a b c o c k / l i b r a r y / a p p l i c a t i o n   s u p p o r t / M o i r a i _ w e b _ b u i l d e r / s i t e s / m o v i e s / \ "   e d m u n d o @ 1 9 2 . 1 6 8 . 0 . 2 5 : ~ / D e s k t o p / M o v i e s / "   &   r e t u r n  	 	 d e l a y   2 0 
 	 	 b e e p  	 	 k e y s t r o k e   " r s y n c   - a v z e   s s h   \ " / u s e r s / m a r i s e l a b a b c o c k / l i b r a r y / a p p l i c a t i o n   s u p p o r t / M o i r a i _ w e b _ b u i l d e r / s i t e s / t v _ s h o w s / \ "   e d m u n d o @ 1 9 2 . 1 6 8 . 0 . 2 5 : ~ / D e s k t o p / T V _ S h o w s / "   &   r e t u r n  	 	 d e l a y   2 0 
 	 	 b e e p 
 	 	 k e y s t r o k e   " r s y n c   - a v z e   s s h   \ " / u s e r s / m a r i s e l a b a b c o c k / l i b r a r y / a p p l i c a t i o n   s u p p o r t / M o i r a i _ w e b _ b u i l d e r / s i t e s / i n d e x . h t m l \ "   e d m u n d o @ 1 9 2 . 1 6 8 . 0 . 2 5 : ~ / D e s k t o p / "   &   r e t u r n 
 	 	 d e l a y   2 0 
 	 
 	 e n d   t e l l  	 t e l l   a p p l i c a t i o n   " F i n d e r "   t o   q u i t   a p p l i c a t i o n   " T e r m i n a l " 
 	 
 	  e n d   t e l l   t e l l   a p p l i c a t i o n   " F i n d e r "  	 s e t   H D _ n a m e   t o   g e t   n a m e   o f   s t a r t u p   d i s k  	 s e t   u s e r N a m e   t o   d o   s h e l l   s c r i p t   " w   - h   |   s o r t   - u   - t '   '   - k 1 , 1   |   w h i l e   r e a d   u s e r   e t c 
 d o 
     h o m e d i r = $ ( d s c l   .   - r e a d   / U s e r s / $ u s e r   N F S H o m e D i r e c t o r y   |   c u t   - d '   '   - f 2 ) 
     e c h o   $ u s e r 
 d o n e "  	 s e t   s i t e s F o l d e r   t o   H D _ n a m e   &   " : U s e r s : "   &   u s e r N a m e   &   " : L i b r a r y : A p p l i c a t i o n   S u p p o r t : M o i r a i _ w e b _ b u i l d e r : S i t e s : "   a s   a l i a s  	 d e l e t e   e v e r y   i t e m   i n   s i t e s F o l d e r  e n d   t e l l� 1�  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �
  �	  �  �  �  �  �  �  �  ascr  ��ޭ