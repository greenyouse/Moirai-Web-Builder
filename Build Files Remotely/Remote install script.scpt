FasdUAS 1.101.10   ��   ��    k             l      ��  ��   
"Remote install script"
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
     � 	 	 
 " R e m o t e   i n s t a l l   s c r i p t " 
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
citm h m   j k����  g o   d g����  0 serverlocation serverLocation e o      ���� "0 remote_username remote_userName c  i j i r   q | k l k o   q t���� 0 oldtid oldTID l n      m n m 1   w {��
�� 
txdl n 1   t w��
�� 
ascr j  o p o r   } � q r q I  } ��� s t
�� .sysodlogaskr        TEXT s b   } � u v u b   } � w x w b   } � y z y b   } � { | { b   } � } ~ } b   } �  �  b   } � � � � b   } � � � � b   } � � � � m   } � � � � � � ^ S o   t h i s   i s   y o u r   s e r v e r ' s   l o c a t i o n   a n d   U s e r n a m e ? � o   � ���
�� 
ret  � o   � ���
�� 
ret  � o   � �����  0 serverlocation serverLocation � o   � ���
�� 
ret  ~ m   � � � � � � �  U s e r n a m e :     | o   � ����� "0 remote_username remote_userName z o   � ���
�� 
ret  x o   � ���
�� 
ret  v m   � � � � � � � 6 ( m a k e   s u r e   t h i s   i s   c o r r e c t ) t �� ���
�� 
btns � J   � � � �  � � � m   � � � � � � �  C a n c e l �  � � � m   � � � � � � �  n o �  ��� � m   � � � � � � �  y e s��  ��   r o      ���� 0 thecheck theCheck p  ��� � Z   � � � ��� � � =  � � � � � n   � � � � � 1   � ���
�� 
bhit � o   � ����� 0 thecheck theCheck � m   � � � � � � �  n o � r   � � � � � m   � ���
�� boovfals � o      ���� 
0 escape  ��   � Z   � � � ����� � =  � � � � � n   � � � � � 1   � ���
�� 
bhit � o   � ����� 0 thecheck theCheck � m   � � � � � � �  y e s � r   � � � � � m   � ���
�� boovtrue � o      ���� 
0 escape  ��  ��  ��   ; =  ( + � � � o   ( )���� 
0 escape   � m   ) *��
�� boovtrue��  ��   8  � � � l     ��������  ��  ��   �  � � � l  � � ����� � r   � � � � � m   � ���
�� boovfals � o      ���� 
0 escape  ��  ��   �  � � � l  �� ����� � W   �� � � � k   � � �  � � � I  � �������
�� .sysobeepnull��� ��� long��  ��   �  � � � r   � � � � I  ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � � P l e a s e   e n t e r   t h e   p a t h   t o   y o u r   s e r v e r   f o l d e r   ( t h e   r o o t   d i r e c t o r y   f o r   y o u r   w e b s i t e   l o c a t e d   o n   t h e   s e r v e r ,   D O   N O T   u s e   " : " ,   u s e   " / " ) : � �� ���
�� 
dtxt � b    � � � m    � � � � �   � m   � � � � � $ / w h a t ' s / t h e / p a t h / ?��   � o      ����  0 serverlocquery serverLocQuery �  � � � r   � � � b   � � � m   � � � � �  : � n   � � � 1  ��
�� 
ttxt � o  ����  0 serverlocquery serverLocQuery � o      ���� 0 rootlocation rootLocation �  � � � r   U � � � I  Q�� � �
�� .sysodlogaskr        TEXT � b   ? � � � b   ; � � � b   7 � � � b   3 � � � b   / � � � b   + � � � b   ' � � � m   # � � � � � r S o   t h i s   i s   t h e   r o o t   d i r e c t o r y   f o r   y o u r   s i t e   o n   t h e   s e v e r ? � o  #&��
�� 
ret  � o  '*��
�� 
ret  � o  +.���� 0 rootlocation rootLocation � o  /2��
�� 
ret  � o  36��
�� 
ret  � o  7:��
�� 
ret  � m  ;> � � � � � 6 ( m a k e   s u r e   t h i s   i s   c o r r e c t ) � �� ���
�� 
btns � J  BM � �  � � � m  BE � � � � �  C a n c e l �  � � � m  EH � � � � �  n o �  ��� � m  HK � � � � �  y e s��  ��   � o      ���� 0 checkno2 checkNo2 �  ��� � Z  V ��  = Va n  V] 1  Y]��
�� 
bhit o  VY���� 0 checkno2 checkNo2 m  ]` �  n o r  dg	
	 m  de��
�� boovfals
 o      ���� 
0 escape  ��   Z  j���� = ju n  jq 1  mq�
� 
bhit o  jm�~�~ 0 checkno2 checkNo2 m  qt �  y e s r  x{ m  xy�}
�} boovtrue o      �|�| 
0 escape  ��  ��  ��   � =  � � o   � ��{�{ 
0 escape   m   � ��z
�z boovtrue��  ��   �  l     �y�x�w�y  �x  �w    l ���v�u r  �� c  �� l �� �t�s  I ���r!"
�r .gtqpchltns    @   @ ns  ! J  ��## $%$ m  ��&& �''  M a c   O S   X% ()( m  ��** �++ 
 L i n u x) ,�q, m  ��-- �..  * B S D�q  " �p/�o
�p 
prmp/ m  ��00 �11 F P l e a s e   c h o o s e   y o u r   o p e r a t i n g   s y s t e m�o  �t  �s   m  ���n
�n 
ctxt o      �m�m 0 os_query OS_Query�v  �u   232 l ��4�l�k4 Z  ��56�j75 = ��898 o  ���i�i 0 os_query OS_Query9 m  ��:: �;;  M a c   O S   X6 r  ��<=< b  ��>?> b  ��@A@ m  ��BB �CC  : \ " / U s e r s /A o  ���h�h "0 remote_username remote_userName? m  ��DD �EE � / l i b r a r y / a p p l i c a t i o n \ \ s u p p o r t / x b m c / u s e r d a t a / d a t a b a s e / M y V i d e o s 6 0 . d b \ "= o      �g�g 0 remote_xbmc_database  �j  7 Z  ��FG�fHF = ��IJI o  ���e�e 0 os_query OS_QueryJ m  ��KK �LL 
 L i n u xG r  ��MNM b  ��OPO b  ��QRQ m  ��SS �TT  : h o m e /R o  ���d�d "0 remote_username remote_userNameP m  ��UU �VV L / . x b m c / u s e r d a t a / D a t a b a s e / M y V i d e o s 6 0 . d bN o      �c�c 0 remote_xbmc_database  �f  H Z  ��WX�b�aW = ��YZY o  ���`�` 0 os_query OS_QueryZ m  ��[[ �\\  * B S DX r  ��]^] b  ��_`_ b  ��aba m  ��cc �dd  : h o m e /b o  ���_�_ "0 remote_username remote_userName` m  ��ee �ff L / . x b m c / u s e r d a t a / D a t a b a s e / M y V i d e o s 6 0 . d b^ o      �^�^ 0 remote_xbmc_database  �b  �a  �l  �k  3 ghg l     �]�\�[�]  �\  �[  h iji l ��k�Z�Yk r  ��lml m  ���X
�X boovfalsm o      �W�W 
0 escape  �Z  �Y  j non l ��p�V�Up W  ��qrq k  �ss tut I �T�S�R
�T .sysobeepnull��� ��� long�S  �R  u vwv r  	xyx I 	�Qz{
�Q .sysodlogaskr        TEXTz m  	|| �}} d P l e a s e   e n t e r   t h e   n a m e   o f   y o u r   f r o n t p a g e   v i d e o   f i l e{ �P~�O
�P 
dtxt~ b  � m  �� ���  � m  �� ���   w h a t ' s _ t h e . n a m e ?�O  y o      �N�N 0 
indexquery 
indexQueryw ��� r  (��� n  $��� 1   $�M
�M 
ttxt� o   �L�L 0 
indexquery 
indexQuery� o      �K�K 0 	videoname 	videoName� ��� r  )b��� I )^�J��
�J .sysodlogaskr        TEXT� b  )L��� b  )H��� b  )D��� b  )@��� b  )<��� b  )8��� b  )4��� b  )0��� m  ),�� ��� \ I s   t h i s   t h e   n a m e   o f   y o u r   f r o n t p a g e   v i d e o   f i l e ?� o  ,/�I
�I 
ret � o  03�H
�H 
ret � o  47�G�G 0 	videoname 	videoName� o  8;�F
�F 
ret � o  <?�E
�E 
ret � o  @C�D
�D 
ret � o  DG�C
�C 
ret � m  HK�� ��� 6 ( m a k e   s u r e   t h i s   i s   c o r r e c t )� �B��A
�B 
btns� J  OZ�� ��� m  OR�� ���  c a n c e l� ��� m  RU�� ���  n o� ��@� m  UX�� ���  y e s�@  �A  � o      �?�? 0 	check_no2  � ��>� Z  c����=�� = cn��� n  cj��� 1  fj�<
�< 
bhit� o  cf�;�; 0 	check_no2  � m  jm�� ���  n o� r  qt��� m  qr�:
�: boovfals� o      �9�9 
0 escape  �=  � Z  w����8�7� = w���� n  w~��� 1  z~�6
�6 
bhit� o  wz�5�5 0 checkno2 checkNo2� m  ~��� ���  y e s� r  ����� m  ���4
�4 boovtrue� o      �3�3 
0 escape  �8  �7  �>  r = ���� o  � �2�2 
0 escape  � m   �1
�1 boovtrue�V  �U  o ��� l     �0�/�.�0  �/  �.  � ��� l ����-�,� r  ����� I ���+��
�+ .sysodlogaskr        TEXT� b  ����� b  ����� b  ����� m  ���� ��� � D o   y o u   w a n t   a   f u l l y   a u t o m a t e d   s c r i p t   w i t h   n o   S S H   p a s s w o r d   p r o m p t ?� o  ���*
�* 
ret � o  ���)
�) 
ret � m  ���� ��� � ( m a k e   s u r e   y o u ' v e   c o p i e d   y o u r   p u b l i c   k e y   o n t o   t h e   r e m o t e   s e r v e r   b e f o r e   d o i n g   t h i s )� �(��'
�( 
btns� J  ���� ��� m  ���� ���  Y e s� ��&� m  ���� ���  N o�&  �'  � o      �%�% 0 	waitquery 	waitQuery�-  �,  � ��� l ����$�#� Z  �����"�� = ����� n  ����� 1  ���!
�! 
bhit� o  ��� �  0 	waitquery 	waitQuery� m  ���� ���  N o� r  ����� m  ���� ���  2 0� o      �� 0 thewait theWait�"  � r  ����� m  ���� ���  1 0� o      �� 0 thewait theWait�$  �#  � ��� l     ����  �  �  � ��� l ������ O  ��� � k  ��  r  �� e  �� n  �� 1  ���
� 
pnam 1  ���
� 
sdsk o      �� 0 hd_name HD_name 	
	 r  �� c  �� l ���� b  �� b  �� b  �� o  ���� 0 hd_name HD_name m  �� �  : U s e r s : o  ���� 0 username userName m  �� � R : L i b r a r y : A p p l i c a t i o n   S u p p o r t : X B M C : a d d o n s :�  �   m  ���
� 
alis o      �� 0 addondir addonDir
 � Z  ���� H  � l ��� I ��
�	
�
 .coredoexbool        obj  n � !  4  �"
� 
cfol" l #��# c  $%$ m  && �'' $ M o i r a i _ w e b _ b u i l d e r% m  
�
� 
TEXT�  �  ! o  ��� 0 addondir addonDir�	  �  �   k  �(( )*) I 2��+
� .corecrel****      � null�  + �,-
� 
kocl, m  � 
�  
cfol- ��./
�� 
insh. o  !���� 0 addondir addonDir/ ��0��
�� 
prdt0 K  $,11 ��2��
�� 
pnam2 m  '*33 �44 $ M o i r a i _ w e b _ b u i l d e r��  ��  * 565 r  3E787 n 3A9:9 4  6A��;
�� 
cfol; l 9@<����< c  9@=>= m  9<?? �@@ $ M o i r a i _ w e b _ b u i l d e r> m  <?��
�� 
TEXT��  ��  : o  36���� 0 addondir addonDir8 o      ���� 0 	moiraidir 	moiraiDir6 ABA I Fd����C
�� .corecrel****      � null��  C ��DE
�� 
koclD m  JM��
�� 
cfolE ��FG
�� 
inshF o  PS���� 0 	moiraidir 	moiraiDirG ��H��
�� 
prdtH K  V^II ��J��
�� 
pnamJ m  Y\KK �LL 
 S i t e s��  ��  B MNM I e�����O
�� .corecrel****      � null��  O ��PQ
�� 
koclP m  il��
�� 
fileQ ��RS
�� 
inshR o  or���� 0 	moiraidir 	moiraiDirS ��T��
�� 
prdtT K  u}UU ��V��
�� 
pnamV m  x{WW �XX  N e w M o v i e _ d a t a��  ��  N Y��Y I ������Z
�� .corecrel****      � null��  Z ��[\
�� 
kocl[ m  ����
�� 
file\ ��]^
�� 
insh] o  ������ 0 	moiraidir 	moiraiDir^ ��_��
�� 
prdt_ K  ��`` ��a��
�� 
pnama m  ��bb �cc  N e w t v s h o w _ d a t a��  ��  ��  �  �  �    m  ��dd�                                                                                  MACS  alis    l  
Untitled 1                 ����H+   ��
Finder.app                                                      ǟM�        ����  	                CoreServices    ��.I      ǟ��     �� �t �s  1Untitled 1:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p   
 U n t i t l e d   1  &System/Library/CoreServices/Finder.app  / ��  �  �  � efe l     ��������  ��  ��  f ghg l ��i����i O  ��jkj r  ��lml I ������n
�� .corecrel****      � null��  n ��op
�� 
koclo m  ����
�� 
filep ��qr
�� 
inshq o  ������ 0 buildfolder buildFolderr ��s��
�� 
prdts K  ��tt ��u��
�� 
pnamu m  ��vv �ww 0 M o i r a i   A u t o - U p d a t e r . s c p t��  ��  m o      ���� 0 	buildfile 	buildFilek m  ��xx�                                                                                  MACS  alis    l  
Untitled 1                 ����H+   ��
Finder.app                                                      ǟM�        ����  	                CoreServices    ��.I      ǟ��     �� �t �s  1Untitled 1:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p   
 U n t i t l e d   1  &System/Library/CoreServices/Finder.app  / ��  ��  ��  h yzy l ��{����{ Q  ��|}��| l ��~�~ I �������
�� .sysoexecTEXT���     TEXT� m  ���� ���> c d   l i b r a r y / ' a p p l i c a t i o n   s u p p o r t ' / X B M C / a d d o n s ; m k d i r   M o i r a i _ w e b _ b u i l d e r ; c d   M o i r a i _ w e b _ b u i l d e r ; m k d i r   ' N e w   D a t a b a s e _ t v s h o w ' ; m k d i r   ' N e w   D a t a b a s e _ m o v i e s ' ; m k d i r   S i t e s��   ( "makes XBMC addon folder for Moirai   � ��� D m a k e s   X B M C   a d d o n   f o l d e r   f o r   M o i r a i} R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  z ��� l     ��������  ��  ��  � ��� l �������� r  ����� c  ����� o  ������ 0 	buildfile 	buildFile� m  ����
�� 
ctxt� o      ���� 0 	buildfile 	buildFile��  ��  � ��� l     ������  � N Henter the scripts here as variables and write variables to the buildFile   � ��� � e n t e r   t h e   s c r i p t s   h e r e   a s   v a r i a b l e s   a n d   w r i t e   v a r i a b l e s   t o   t h e   b u i l d F i l e� ��� l     ��������  ��  ��  � ��� l �������� r  ����� m  ���� ���J ( * 
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
 * )� o      ���� 0 
thelicense 
theLicense��  ��  � ��� l     ��������  ��  ��  � ��� l ������� r  ���� b  ���� b  ���� b  ���� b  ���� b  �	��� b  ���� b  ���� b  ����� m  ���� ��� � a c t i v a t e   a p p l i c a t i o n   " T e r m i n a l "  t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "  	 t e l l   p r o c e s s   " T e r m i n a l "  	 	 k e y s t r o k e   " c d   / u s e r s /� o  ������ 0 username userName� m  � �� ��� � / l i b r a r y / ' a p p l i c a t i o n   s u p p o r t ' / x b m c / a d d o n s / M o i r a i _ w e b _ b u i l d e r ;   s c p  � o  ����  0 serverlocation serverLocation� m  �� ���  : \ " / U s e r s /� o  	���� "0 remote_username remote_userName� m  �� ��� � / l i b r a r y / a p p l i c a t i o n \ \   s u p p o r t / x b m c / u s e r d a t a / d a t a b a s e / M y V i d e o s 6 0 . d b \ "   M y V i d e o s 6 0 . d b "   &   r e t u r n  	 	 d e l a y  � o  ���� 0 thewait theWait� m  �� ��� �  	 e n d   t e l l  	 t e l l   a p p l i c a t i o n   " F i n d e r "   t o   q u i t   a p p l i c a t i o n   " T e r m i n a l "  e n d   t e l l� o      ����  0 server_to_host server_to_Host��  ��  � ��� l %������ r  %��� m  !�� ���_& _& ( *   T h i s   s c r i p t   w i l l   r e t r i e v e   t h e   l i s t   o f   m o v i e s   o n   t h e   s e r v e r   ( u s i n g   t h e   M y V i d e o s 6 0 . d b )   a n d   b u i l d   a l l   t h e   n e c c e s s a r y   H T M L   p a g e s   f o r   t h e   w e b s i t e .     I n s t e a d   o f   j u s t   u p d a t i n g   t h e   s i t e ,   i t   r e b u i l d s   a l l   t h e   w e b p a g e s   f r o m   s c r a t c h .     I t ' s   d i f f i c u l t   t o   u p d a t e   w i t h o u t   r e b u i d i n g   e v e r y t h i n g   b e c a u s e   m a n y   H T M L   p a g e s   d e p e n d   u p o n   o t h e r   p a g e s   s o   d e l e t i n g   a n d   a d d i n g   o n l y   s e l e c t   p a g e s   w i l l   l e a v e   s o m e   w e b   p a g e s   w i t h   d e a d   l i n k s   o r   n e w   c o n t e n t   t h a t   h a s   n o   l i n k .     I f   y o u   c a n   d e s i g n   a   m e t h o d   t o   o n l y   u p d a t e   a   m i n i m a l   n u m b e r   o f   p a g e s ,   t h a t   s h o u l d   s p e e d   u p   t h e   u p d a t e   p r o c e s s   s i g n i f i c a n t l y . 
 * )   s e t   t h e N u m b e r s   t o   { " 0 " ,   " 1 " ,   " 2 " ,   " 3 " ,   " 4 " ,   " 5 " ,   " 6 " ,   " 7 " ,   " 8 " ,   " 9 " }  s e t   n u m b e r L a b e l   t o   { " - " }  s e t   t h e S p a c e s   t o   { "   " }  s e t   t h e C o l o n s   t o   { " : " }  s e t   t h e D a s h e s   t o   { " _ " }   - - h e l p f u l   f o r   d i s p l a y i n g   n a m e s   i n   h t m l 5   l i s t   g e n e r a t i o n  s e t   t h e N o r m a l C h a r a c t e r s   t o   { " / " }   - - c h a n g e   " : "   t o   " / "   f o r   h t m l 5   c o d i n g   t e l l   a p p l i c a t i o n   " F i n d e r "  	 s e t   H D _ n a m e   t o   g e t   n a m e   o f   s t a r t u p   d i s k  e n d   t e l l  s e t   u s e r N a m e   t o   d o   s h e l l   s c r i p t   " w   - h   |   s o r t   - u   - t '   '   - k 1 , 1   |   w h i l e   r e a d   u s e r   e t c 
 d o 
     h o m e d i r = $ ( d s c l   .   - r e a d   / U s e r s / $ u s e r   N F S H o m e D i r e c t o r y   |   c u t   - d '   '   - f 2 ) 
     e c h o   $ u s e r 
 d o n e "  - - b e l o w   i s   t h e   s e c t i o n   f o r   t h e   n e w   d a t a b a s e   f o r   m o v i e s  s e t   l o c   t o   s p a c e   &   " ~ / l i b r a r y / ' a p p l i c a t i o n   s u p p o r t ' / x b m c / a d d o n s / M o i r a i _ w e b _ B u i l d e r / M y V i d e o s 6 0 . d b "   &   s p a c e  s e t   h e a d   t o   " s q l i t e 3   - l i n e "   &   l o c   &   q u o t e   - -   t h e   " - l i n e "   o p t i o n   o u t p u t s   t h e   c o l u m n   d a t a   a n d   h e a d i n g   o n e   l i n e   a t   a   t i m e   -   u s e f u l   f o r   p a r s i n g   t h e   o u t p u t   f o r   p a r t i c u l a r   d a t a   i t e m s .  s e t   t a i l   t o   q u o t e  s e t   A l l   t o   " s e l e c t   c 2 2   f r o m   m o v i e ;   "   - -   r e t r i e v e s   t h e   t i t l e s   f r o m   t h e   m o v i e   t a b l e  s e t   m o v i e T a b l e   t o   d o   s h e l l   s c r i p t   h e a d   &   A l l   &   t a i l  s e t   m o v i e T a b l e   t o   m o v i e T a b l e   a s   t e x t  s e t   a l l P a r a   t o   e v e r y   p a r a g r a p h   i n   m o v i e T a b l e   - - w o n k y   b u t   . . .  s e t   n e w T i t l e L i s t   t o   { }  r e p e a t   w i t h   a P a r a   i n   a l l P a r a   - - l o o p   f o r   M o v i e   T i t l e s !  	 i f   ( t e x t   o f   a P a r a )  "`   " "   t h e n  	 	 s e t   a T i t l e   t o   t e x t   ( ( o f f s e t   o f   "   c 2 2   =   "   i n   a P a r a )   +   7 )   t h r u   - 1   o f   a P a r a  	 	 c o p y   a T i t l e   t o   e n d   o f   n e w T i t l e L i s t  	 e n d   i f  e n d   r e p e a t  s e t   n e w T i t l e L i s t   t o   m y   r e p l a c e _ c h a r s ( n e w T i t l e L i s t ,   " =   " ,   r e t u r n )   - - c r e a t e s   v e r i t c a l   l i s t   t e l l   a p p l i c a t i o n   " F i n d e r "  	 s e t   M o i r a i _ d i r   t o   ( H D _ n a m e   &   " : U s e r s : "   &   u s e r N a m e   &   " : L i b r a r y : A p p l i c a t i o n   S u p p o r t : X B M C : a d d o n s : M o i r a i _ w e b _ b u i l d e r : " )   a s   a l i a s  	 i f   n o t   ( e x i s t s   f i l e   ( " N e w M o v i e _ d a t a "   a s   s t r i n g )   i n   M o i r a i _ d i r )   t h e n  	 	 m a k e   n e w   f i l e   a t   M o i r a i _ d i r   w i t h   p r o p e r t i e s   { n a m e : " N e w M o v i e _ d a t a " }  	 e n d   i f  	 s e t   m o v i e _ d a t a   t o   ( H D _ n a m e   &   " : U s e r s : "   &   u s e r N a m e   &   " : L i b r a r y : A p p l i c a t i o n   S u p p o r t : X B M C : a d d o n s : M o i r a i _ w e b _ b u i l d e r : N e w M o v i e _ d a t a : " )  	 m y   w r i t e _ t o _ f i l e ( n e w T i t l e L i s t ,   m o v i e _ d a t a ,   f a l s e )   - - f a l s e   w i l l   e r a s e   p r e v i o u s   c o n t e n t s   f r o m   t h e   t e x t   f i l e  	 s e t   m o v i e _ d a t a   t o   m o v i e _ d a t a   a s   s t r i n g  	 s e t   t h e   o p e n _ m o v i e _ d a t a   t o   o p e n   f o r   a c c e s s   f i l e   m o v i e _ d a t a   w i t h   w r i t e   p e r m i s s i o n  	 s e t   n e w I n f o   t o   r e a d   f i l e   m o v i e _ d a t a   u s i n g   d e l i m i t e r   " =   "  	 c l o s e   a c c e s s   t h e   o p e n _ m o v i e _ d a t a  	 s e t   n e w I n f o T e x t   t o   n e w I n f o   a s   t e x t  	 - - L e t s   a d d   H T M L   p a g e s   n o w  	  	 s e t   m o v i e _ d a t a   t o   ( H D _ n a m e   &   " : U s e r s : "   &   u s e r N a m e   &   " : L i b r a r y : A p p l i c a t i o n   S u p p o r t : X B M C : a d d o n s : M o i r a i _ w e b _ b u i l d e r : N e w M o v i e _ d a t a : " )   a s   a l i a s  	 s e t   m o i r a i D i r   t o   f o l d e r   o f   m o v i e _ d a t a  	 s e t   A p p _ f o l d e r   t o   f o l d e r   ( " S i t e s " )   i n   m o i r a i D i r  	 i f   n o t   ( e x i s t s   f o l d e r   ( " M o v i e s "   a s   s t r i n g )   i n   A p p _ f o l d e r )   t h e n   - - c h e c k   f o r   f o l d e r s  	 	 m a k e   n e w   f o l d e r   a t   A p p _ f o l d e r   w i t h   p r o p e r t i e s   { n a m e : " M o v i e s " }  	 e n d   i f  	 s e t   m o v i e D i r   t o   f o l d e r   ( " M o v i e s "   a s   s t r i n g )   i n   A p p _ f o l d e r  	 i f   ( c o u n t   o f   i t e m s   i n   m o v i e D i r )   i s   g r e a t e r   t h a n   1   t h e n   - - c l e a r   f o l d e r s  	 	 d e l e t e   e v e r y   i t e m   i n   m o v i e D i r  	 e n d   i f  	 i f   n o t   ( e x i s t s   f o l d e r   ( " v i d e o s "   a s   s t r i n g )   i n   A p p _ f o l d e r )   t h e n  	 	 m a k e   n e w   f o l d e r   a t   A p p _ f o l d e r   w i t h   p r o p e r t i e s   { n a m e : " v i d e o s " }  	 e n d   i f  	 s e t   v i d e o D i r   t o   f o l d e r   ( " v i d e o s "   a s   s t r i n g )   i n   A p p _ f o l d e r  	 i f   n o t   ( e x i s t s   f o l d e r   ( " M o v i e s "   a s   s t r i n g )   i n   v i d e o D i r )   t h e n  	 	 m a k e   n e w   f o l d e r   a t   v i d e o D i r   w i t h   p r o p e r t i e s   { n a m e : " M o v i e s " }  	 e n d   i f  	 s e t   v i d _ M o v i e D i r   t o   f o l d e r   ( " M o v i e s "   a s   s t r i n g )   i n   v i d e o D i r  	 i f   ( c o u n t   o f   i t e m s   i n   v i d _ M o v i e D i r )   i s   g r e a t e r   t h a n   1   t h e n  	 	 d e l e t e   e v e r y   i t e m   i n   v i d _ M o v i e D i r  	 e n d   i f  	 s e t   a z M e n u   t o   m a k e   n e w   f o l d e r   a t   v i d _ M o v i e D i r   w i t h   p r o p e r t i e s   { n a m e : " A - Z M e n u " }  	 s e t   a z M e n u N a m e   t o   ( n a m e   o f   a z M e n u )  	 s e t   o l d T I D   t o   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s  	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   r e t u r n  	 s e t   a l l C o n t e n t   t o   e v e r y   t e x t   i t e m   o f   n e w I n f o T e x t  	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   o l d T I D  	 s e t   f i r s t T e x t   t o   t e x t   i t e m   1   o f   a l l C o n t e n t  	 s e t   f i r s t T e x t   t o   m y   t r i m _ l i n e ( f i r s t T e x t ,   "   " ,   0 )   - - g e t   r i d   o f   a n   e m p t y   s p a c e  	 c o p y   f i r s t T e x t   t o   t e x t   i t e m   1   o f   a l l C o n t e n t  	 s e t   o l d T I D   t o   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s  	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   r e t u r n   &   "   "  	 s e t   a l l C o n t e n t   t o   e v e r y   t e x t   i t e m   o f   a l l C o n t e n t  	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   o l d T I D  	 r e p e a t   w i t h   a n I t e m   i n   a l l C o n t e n t  	 	 s e t   o l d T I D   t o   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s  	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " M o v i e s / "  	 	 s e t   t i t l e I n f o   t o   t e x t   i t e m   2   o f   a n I t e m  	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " . "  	 	 s e t   l e t t e r N a m e   t o   f i r s t   c h a r a c t e r   o f   t i t l e I n f o   a s   t e x t  	 	 s e t   l e t t e r N a m e   t o   m y   C a p i t a l i z e F i r s t L e t t e r _ o f E v e r y W o r d ( l e t t e r N a m e )  	 	 s e t   s h o w N a m e   t o   t e x t   i t e m   1   o f   t i t l e I n f o   a s   t e x t  	 	 s e t   e p i s o d e N a m e   t o   t i t l e I n f o   a s   t e x t  	 	 s e t   s h o w N a m e   t o   m y   r e p l a c e _ c h a r s ( s h o w N a m e ,   "   " ,   " _ " )  	 	 s e t   e p i s o d e N a m e   t o   m y   r e p l a c e _ c h a r s ( e p i s o d e N a m e ,   "   " ,   " _ " )  	 	 s e t   a L e t t e r   t o   m a k e   n e w   f o l d e r   a t   a z M e n u   w i t h   p r o p e r t i e s   { n a m e : l e t t e r N a m e }  	 	 s e t   a S h o w   t o   m a k e   n e w   f o l d e r   a t   a L e t t e r   w i t h   p r o p e r t i e s   { n a m e : s h o w N a m e }  	 	 s e t   a n E p i s o d e   t o   m a k e   n e w   f i l e   a t   a S h o w   w i t h   p r o p e r t i e s   { n a m e : e p i s o d e N a m e }  	 e n d   r e p e a t  	 - - n o w   w e ' l l   b u i l d   H T M L   f i l e s !  	 - - t h i s   p a r t   i s   m e s s y   a n d   c o m p l e x ,   w o r k   h e r e   w o u l d   b e   g r e a t l y   a p p r e c i a t e d !   : - )  	  	 s e t   a z L i s t   t o   f o l d e r s   i n   v i d _ M o v i e D i r   - - c h a n g e s   t i t l e   o f   e a c h   v i d e o   f i l e   f o r   l a t e r   s t e p  	 r e p e a t   w i t h   a z M e n u   i n   a z L i s t  	 	 s e t   a z M e n u N a m e   t o   n a m e   o f   a z M e n u  	 	 s e t   a l p h a L i s t   t o   f o l d e r s   i n   a z M e n u  	 	 r e p e a t   w i t h   a L e t t e r   i n   a l p h a L i s t  	 	 	 s e t   s h o w L i s t   t o   f o l d e r s   i n   a L e t t e r  	 	 	 r e p e a t   w i t h   a S h o w   i n   s h o w L i s t  	 	 	 	 s e t   s h o w N a m e   t o   n a m e   o f   a S h o w   a s   t e x t  	 	 	 	 s e t   a l l V i d s   t o   f i l e s   i n   a S h o w   - - b u i l d s   d i r e c t o r y   b a s e d   o n   v i d e o   t i t l e  	 	 	 	 r e p e a t   w i t h   a V i d   i n   a l l V i d s  	 	 	 	 	 s e t   a L a b e l   t o   n a m e   o f   a V i d   a s   t e x t  	 	 	 	 	 i f   a L a b e l   d o e s   n o t   e n d   w i t h   " . n f o "   t h e n   - - K e e p s   . n f o   f i l e s   i n   t h e i r   p l a c e  	 	 	 	 	 	 s e t   l e t t e r T i t l e   t o   c h a r a c t e r   1   o f   a L a b e l  	 	 	 	 	 	 s e t   s h o w T i t l e   t o   t e x t   1   t h r u   ( ( o f f s e t   o f   " . "   i n   a L a b e l )   -   1 )   o f   a L a b e l  	 	 	 	 	 	 s e t   s h o w T i t l e   t o   m y   r e p l a c e _ c h a r s ( s h o w T i t l e ,   "   " ,   " _ " )  	 	 	 	 	 	 t r y  	 	 	 	 	 	 	 s e t   o l d L e t t e r   t o   l e t t e r T i t l e   - - t e s t   f o r   n u m b e r  	 	 	 	 	 	 	 s e t   l e t t e r T i t l e   t o   n u m b e r  	 	 	 	 	 	 	 s e t   n u m T e s t   t o   t r u e  	 	 	 	 	 	 	 s e t   l e t t e r T i t l e   t o   o l d L e t t e r  	 	 	 	 	 	 e n d   t r y  	 	 	 	 	 	 i f   n u m T e s t   i s   t r u e   t h e n  	 	 	 	 	 	 	 s e t   l e t t e r T i t l e   t o   m y   n u m b e r C o r r e c t i o n ( l e t t e r T i t l e )   - - c o n v e r t   n u m b e r   t o   " N u m "  	 	 	 	 	 	 e n d   i f  	 	 	 	 	 	 i f   ( e x i s t s   f o l d e r   ( a z M e n u N a m e   a s   s t r i n g )   i n   m o v i e D i r )   t h e n  	 	 	 	 	 	 	 s e t   a l p h a F o l d e r   t o   f o l d e r   n a m e d   a z M e n u N a m e   i n   m o v i e D i r  	 	 	 	 	 	 e l s e  	 	 	 	 	 	 	 s e t   a l p h a F o l d e r   t o   m a k e   n e w   f o l d e r   a t   m o v i e D i r   w i t h   p r o p e r t i e s   { n a m e : a z M e n u N a m e }  	 	 	 	 	 	 e n d   i f  	 	 	 	 	 	 i f   ( e x i s t s   f o l d e r   ( l e t t e r T i t l e   a s   s t r i n g )   i n   a l p h a F o l d e r )   t h e n  	 	 	 	 	 	 	 s e t   l e t t e r F o l d e r   t o   f o l d e r   n a m e d   l e t t e r T i t l e   i n   a l p h a F o l d e r  	 	 	 	 	 	 e l s e  	 	 	 	 	 	 	 m a k e   n e w   f o l d e r   a t   a l p h a F o l d e r   w i t h   p r o p e r t i e s   { n a m e : l e t t e r T i t l e }  	 	 	 	 	 	 	 s e t   l e t t e r F o l d e r   t o   f o l d e r   n a m e d   l e t t e r T i t l e   i n   a l p h a F o l d e r  	 	 	 	 	 	 e n d   i f  	 	 	 	 	 	 i f   ( e x i s t s   f o l d e r   ( s h o w T i t l e   a s   s t r i n g )   i n   l e t t e r F o l d e r )   t h e n  	 	 	 	 	 	 	 s e t   s h o w F o l d e r   t o   f o l d e r   n a m e d   s h o w T i t l e   i n   l e t t e r F o l d e r  	 	 	 	 	 	 e l s e  	 	 	 	 	 	 	 m a k e   n e w   f o l d e r   a t   l e t t e r F o l d e r   w i t h   p r o p e r t i e s   { n a m e : s h o w T i t l e }  	 	 	 	 	 	 	 s e t   s h o w F o l d e r   t o   f o l d e r   n a m e d   s h o w T i t l e   i n   l e t t e r F o l d e r  	 	 	 	 	 	 e n d   i f  	 	 	 	 	 	 t r y   - - d o n e   t o   p r e v e n t   d u p l i c a t e s   f r o m   b e i n g   e n t e r e d  	 	 	 	 	 	 	 m o v e   a V i d   t o   s h o w F o l d e r  	 	 	 	 	 	 e n d   t r y  	 	 	 	 	 e n d   i f  	 	 	 	 e n d   r e p e a t  	 	 	 e n d   r e p e a t  	 	 e n d   r e p e a t  	 e n d   r e p e a t  	 s e t   a z L i s t   t o   f o l d e r s   i n   m o v i e D i r  	 s e t   c r e a t e d L e t t e r s   t o   { }   - -   u s e d   f o r   d e t e r m i n i n g   l e t t e r s   a t   t h e   e n d  	 r e p e a t   w i t h   a z M e n u   i n   a z L i s t  	 	 s e t   a z M e n u N a m e   t o   n a m e   o f   a z M e n u  	 	 s e t   l e t t e r L i s t   t o   f o l d e r s   i n   a z M e n u  	 	 r e p e a t   w i t h   a L e t t e r   i n   l e t t e r L i s t  	 	 	 s e t   l e t t e r N a m e   t o   n a m e   o f   a L e t t e r  	 	 	 c o p y   l e t t e r N a m e   t o   e n d   o f   c r e a t e d L e t t e r s   - - u s e d   f o r   l e t t e r s   a t   t h e   e n d  	 	 	 s e t   s h o w L i s t   t o   f o l d e r s   i n   a L e t t e r  	 	 	 r e p e a t   w i t h   a S h o w   i n   s h o w L i s t  	 	 	 	 s e t   s h o w N a m e   t o   n a m e   o f   a S h o w  	 	 	 	 s e t   e p i s o d e L i s t   t o   f i l e s   i n   a S h o w  	 	 	 	 r e p e a t   w i t h   a n E p i s o d e   i n   e p i s o d e L i s t  	 	 	 	 	 s e t   e p i s o d e N a m e   t o   n a m e   o f   a n E p i s o d e  	 	 	 	 	 i f   n a m e   e x t e n s i o n   o f   a n E p i s o d e  "`   " h t m l "   t h e n   - - a v o i d s   h t m l   f i l e s  	 	 	 	 	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " . "  	 	 	 	 	 	 s e t   t h e E x t e n s i o n   t o   " . "   &   n a m e   e x t e n s i o n   o f   a n E p i s o d e  	 	 	 	 	 	 s e t   e p i s o d e T i t l e   t o   t e x t   i t e m   1   o f   e p i s o d e N a m e  	 	 	 	 	 	 s e t   e p i s o d e T i t l e   t o   m y   r e p l a c e _ c h a r s ( e p i s o d e T i t l e ,   "   " ,   " _ " )   - - c h a n g e s   "   "   t o   " _ "  	 	 	 	 	 	 s e t   d o c N a m e   t o   e p i s o d e T i t l e   &   " . h t m l "  	 	 	 	 	 	 s e t   a l t M e n u   t o   f o l d e r   ( a z M e n u N a m e )   i n   v i d _ M o v i e D i r  	 	 	 	 	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   { " " }  	 	 	 	 	 	 i f   { e x i s t s   f o l d e r   ( l e t t e r N a m e )   i n   a l t M e n u }   t h e n  	 	 	 	 	 	 	 s e t   a l t L e t t e r   t o   f o l d e r   ( l e t t e r N a m e )   i n   a l t M e n u  	 	 	 	 	 	 	 i f   { e x i s t s   f o l d e r   ( s h o w N a m e )   i n   a l t L e t t e r }   t h e n  	 	 	 	 	 	 	 	 s e t   a l t S h o w   t o   f o l d e r   ( s h o w N a m e )   i n   a l t L e t t e r  	 	 	 	 	 	 	 	 m o v e   a n E p i s o d e   t o   a l t S h o w  	 	 	 	 	 	 	 	 s e t   c u r r e n t L o c   t o   a l t S h o w   a s   t e x t  	 	 	 	 	 	 	 e l s e  	 	 	 	 	 	 	 	 t r y  	 	 	 	 	 	 	 	 	 s e t   a l t S h o w   t o   m a k e   n e w   f o l d e r   a t   a l t L e t t e r   w i t h   p r o p e r t i e s   { n a m e : s h o w N a m e }  	 	 	 	 	 	 	 	 e n d   t r y  	 	 	 	 	 	 	 	 m o v e   a n E p i s o d e   t o   a l t S h o w  	 	 	 	 	 	 	 	 s e t   c u r r e n t L o c   t o   a l t S h o w   a s   t e x t  	 	 	 	 	 	 	 e n d   i f  	 	 	 	 	 	 e l s e  	 	 	 	 	 	 	 t r y  	 	 	 	 	 	 	 	 s e t   a l t L e t t e r   t o   m a k e   n e w   f o l d e r   a t   a l t M e n u   w i t h   p r o p e r t i e s   { n a m e : l e t t e r N a m e }  	 	 	 	 	 	 	 	 s e t   a l t S h o w   t o   m a k e   n e w   f o l d e r   a t   a l t L e t t e r   w i t h   p r o p e r t i e s   { n a m e : s h o w N a m e }  	 	 	 	 	 	 	 e n d   t r y  	 	 	 	 	 	 	 m o v e   a n E p i s o d e   t o   a l t S h o w  	 	 	 	 	 	 	 s e t   c u r r e n t L o c   t o   a l t S h o w   a s   t e x t  	 	 	 	 	 	 e n d   i f  	 	 	 	 	 e l s e  	 	 	 	 	 	 t r y  	 	 	 	 	 	 	 s e t   a l t M e n u   t o   m a k e   n e w   f o l d e r   a t   v i d _ M o v i e D i r   w i t h   p r o p e r t i e s   { n a m e : m e n u N a m e }  	 	 	 	 	 	 	 s e t   a l t L e t t e r   t o   m a k e   n e w   f o l d e r   a t   a l t M e n u   w i t h   p r o p e r t i e s   { n a m e : l e t t e r N a m e }  	 	 	 	 	 	 	 s e t   a l t S h o w   t o   m a k e   n e w   f o l d e r   a t   a l t L e t t e r   w i t h   p r o p e r t i e s   { n a m e : s h o w N a m e }  	 	 	 	 	 	 e n d   t r y  	 	 	 	 	 	 m o v e   a n E p i s o d e   t o   a l t S h o w  	 	 	 	 	 	 s e t   c u r r e n t L o c   t o   a l t S h o w   a s   t e x t  	 	 	 	 	 e n d   i f  	 	 	 	 	 s e t   p a r e n t F o l   t o   f o l d e r   o f   m o v i e D i r   - - u s e d   a s   a   d e l i m i t e r   ( h e h e h e )  	 	 	 	 	 s e t   p a r e n t N a m e   t o   n a m e   o f   p a r e n t F o l  	 	 	 	 	 s e t   p a t h N a m e   t o   c u r r e n t L o c   a s   t e x t  	 	 	 	 	 s e t   p a t h N a m e   t o   m y   r e p l a c e _ c h a r s ( p a t h N a m e ,   "   " ,   " _ " )   - - c h a n g e s   "   "   t o   " _ "  	 	 	 	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   p a r e n t N a m e   - - t h i s   a l l   p o i n t s  	 	 	 	 	 s e t   a l m o s t L o c   t o   t e x t   i t e m   2   o f   p a t h N a m e   - - t o   t h e   f i l e   f o r   t h e   H T M L  	 	 	 	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   e p i s o d e N a m e  	 	 	 	 	 s e t   n e a r l y L o c   t o   t e x t   i t e m   1   o f   a l m o s t L o c   &   e p i s o d e N a m e  	 	 	 	 	 s e t   f i l e L o c   t o   t e x t   ( ( o f f s e t   o f   " : "   i n   n e a r l y L o c )   +   1 )   t h r u   - 1   o f   n e a r l y L o c  	 	 	 	 	 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . . . . # # # . . .  	 	 	 	 	 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . - - - - - - - - - - - . . # # . # # . .  	 	 	 	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   { " " }   - - - - - - - - - - - - - - - - - - - - - - - . . # # . . . # # .  	 	 	 	 	 t r y   - - p r e v e n t s   d u p l i c a t e s   f r o m   b e i n g   w r i t t e n - - - - - - - - - - - - - - - - - - - - - - - - - . . # # . . . . . # #  	 	 	 	 	 	 m a k e   n e w   f i l e   a t   a S h o w   w i t h   p r o p e r t i e s   { n a m e : d o c N a m e }   - - # # # # # #  	 	 	 	 	 e n d   t r y   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . # #  	 	 	 	 	 i f   { e x i s t s   f i l e   ( d o c N a m e )   i n   a S h o w }   t h e n   - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . # #  	 	 	 	 	 	 s e t   d F i l e   t o   f i l e   ( d o c N a m e )   i n   a S h o w  	 	 	 	 	 	 s e t   e p i s o d e F i l e   t o   d F i l e   a s   a l i a s  	 	 	 	 	 	 - - C o d e   f o r   e p i s o d e   h t m l   t e x t   f i l e !  	 	 	 	 	 	 - - y o u   s h o u l d   m o d i f y   t h i s   f o r   y o u r   o w n   c o d i n g   n e e d s   o f   c o u r s e  	 	 	 	 	 	 s e t   e p i s o d e T e x t   t o   " < ! D O C T Y P E   h t m l > 
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
                     < s o u r c e   s r c = ' . . / . . / . . / . . / "   &   f i l e L o c   &   " '   t y p e = ' v i d e o / m p 4 ' / > 
                     < s o u r c e   s r c = ' . . / . . / . . / . . / "   &   f i l e L o c   &   " '   t y p e = ' v i d e o / o g g ' / > 
                     < s o u r c e   s r c = ' . . / . . / . . / . . / "   &   f i l e L o c   &   " '   t y p e = ' v i d e o / w e b m '   / > 
     < / v i d e o > 
     < b u t t o n   i d = ' f u l l s c r e e n v i d '   c l a s s = ' b u t t o n ' > F u l l s c r e e n   v i d e o < / b u t t o n > 
 < / d i v > 
     < s c r i p t > 
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
 < / h t m l > "  	 	 	 	 	 	 i g n o r i n g   a p p l i c a t i o n   r e s p o n s e s  	 	 	 	 	 	 	 s e t   e p i s o d e F i l e   t o   m y   w r i t e C o d e ( e p i s o d e F i l e ,   e p i s o d e T e x t )  	 	 	 	 	 	 e n d   i g n o r i n g  	 	 	 	 	 e n d   i f  	 	 	 	 e n d   r e p e a t  	 	 	 	 s e t   d o c N a m e   t o   s h o w N a m e   &   " . h t m l "  	 	 	 	 s e t   a l t S h o w N a m e   t o   s h o w N a m e   a s   t e x t  	 	 	 	 s e t   a l t S h o w N a m e   t o   m y   r e p l a c e _ c h a r s ( a l t S h o w N a m e ,   " _ " ,   "   " )  	 	 	 	 t r y  	 	 	 	 	 m a k e   n e w   f i l e   a t   a L e t t e r   w i t h   p r o p e r t i e s   { n a m e : d o c N a m e }  	 	 	 	 e n d   t r y  	 	 	 	 i f   { e x i s t s   f i l e   ( d o c N a m e )   i n   a L e t t e r }   t h e n  	 	 	 	 	 s e t   d F i l e   t o   f i l e   ( d o c N a m e )   i n   a L e t t e r  	 	 	 	 	 s e t   e p i s o d e F i l e   t o   d F i l e   a s   a l i a s  	 	 	 	 	 s e t   l i s t P a r t 1   t o   " < l i > < a   h r e f = ' "   - - a u t o   g e n e r a t e   H T M L   l i s t s - - - - - . # # # # # # # . . .  	 	 	 	 	 s e t   l i s t P a r t 6   t o   " ' > "   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . # # . 	      	 	 	 	 	 s e t   l i s t P a r t 8   t o   " < / a > < / l i > "   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . # # . 	  	 	 	 	 	 s e t   s h o w H t m l L i s t   t o   { }   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # # # # # # . . . .  	 	 	 	 	 s e t   a l l F i l e s   t o   e v e r y   f i l e   i n   a S h o w   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . # # .  	 	 	 	 	 r e p e a t   w i t h   a F i l e   i n   a l l F i l e s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . # # .  	 	 	 	 	 	 i f   n a m e   e x t e n s i o n   o f   a F i l e   i s   " h t m l "   t h e n   - - - - - - - - - - - - - - - - - - - . # # # # # # # . . . . 	  	 	 	 	 	 	 	 s e t   h t m l F i l e   t o   n a m e   o f   a F i l e   a s   t e x t  	 	 	 	 	 	 	 s e t   t r u e S e a s o n N a m e   t o   t e x t   1   t h r u   ( ( o f f s e t   o f   " . "   i n   h t m l F i l e )   -   1 )   o f   h t m l F i l e  	 	 	 	 	 	 	 s e t   t r u e S e a s o n N a m e   t o   m y   r e p l a c e _ c h a r s ( t r u e S e a s o n N a m e ,   " _ " ,   "   " )  	 	 	 	 	 	 	 s e t   t o t a l L i s t   t o   l i s t P a r t 1   &   " . . / . . / . . / M o v i e s "   &   " / "   &   a z M e n u N a m e   &   " / "   &   l e t t e r N a m e   &   " / "   &   s h o w N a m e   &   " / "   &   h t m l F i l e   &   l i s t P a r t 6   &   t r u e S e a s o n N a m e   &   l i s t P a r t 8  	 	 	 	 	 	 	 c o p y   t o t a l L i s t   t o   e n d   o f   s h o w H t m l L i s t  	 	 	 	 	 	 e n d   i f  	 	 	 	 	 e n d   r e p e a t  	 	 	 	 	 s e t   e p i s o d e T e x t   t o   " < ! D o c t y p e   h t m l > 
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
                         c o l o r : # 7 0 8 0 9 0 ; p o s i t i o n : a b s o l u t e ; t o p : 2 ; l e f t : 2 0 p x ; h e i g h t : 1 0 0 p x ; w i d t h : 6 0 0 p x ; ' > "   &   a l t S h o w N a m e   &   " < / h e a d e r >                 
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
                         c o l o r : # 7 0 8 0 9 0 ; p o s i t i o n : a b s o l u t e ; t o p : 2 ; l e f t : 2 0 p x ; h e i g h t : 1 0 0 p x ; w i d t h : 6 0 0 p x ; ; ' > "   &   l e t t e r N a m e   &   " < / h e a d e r >                 
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
                         c o l o r : # 7 0 8 0 9 0 ; p o s i t i o n : a b s o l u t e ; t o p : 2 ; l e f t : 2 0 p x ; h e i g h t : 1 0 0 p x ; w i d t h : 3 0 0 p x ; ; ' > "   &   l e t t e r N a m e   &   " < / h e a d e r >                 
                 < u l   c l a s s = ' S E _ n a v '   s t y l e = ' p o s i t i o n : a b s o l u t e ; t o p : 7 5 p x ; ' > "   &   �  	 	 	 	 	 	 l e t t e r H t m l L i s t   &   " 
 	 	   < / u l > 
         < / d i v > 
 < / b o d y > 
 < / h t m l > "  	 	 	 	 	 i g n o r i n g   a p p l i c a t i o n   r e s p o n s e s  	 	 	 	 	 	 s e t   e p i s o d e F i l e   t o   m y   w r i t e C o d e ( e p i s o d e F i l e ,   e p i s o d e T e x t )  	 	 	 	 	 e n d   i g n o r i n g  	 	 	 	 e n d   i f   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8 8 8 8 8 8 8  	 	 	 e n d   t r y  	 	 e n d   i f  	 e n d   r e p e a t   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8  	  	  e n d   t e l l  - - - - - - - - - - - - - - - - - - - - - - - - - - - -   ( *   T h i s   s c r i p t   w i l l   r e t r i e v e   t h e   l i s t   o f   t v   s h o w s   o n   t h e   s e r v e r   ( u s i n g   t h e   M y V i d e o s 6 0 . d b )   a n d   b u i l d   a l l   t h e   n e c c e s s a r y   H T M L   p a g e s   f o r   t h e   w e b s i t e .     I n s t e a d   o f   j u s t   u p d a t i n g   t h e   s i t e ,   i t   r e b u i l d s   a l l   t h e   w e b p a g e s   f r o m   s c r a t c h .     I t ' s   d i f f i c u l t   t o   u p d a t e   w i t h o u t   r e b u i d i n g   e v e r y t h i n g   b e c a u s e   m a n y   H T M L   p a g e s   d e p e n d   u p o n   o t h e r   p a g e s   s o   d e l e t i n g   a n d   a d d i n g   o n l y   s e l e c t   p a g e s   w i l l   l e a v e   s o m e   w e b   p a g e s   w i t h   d e a d   l i n k s   o r   n e w   c o n t e n t   t h a t   h a s   n o   l i n k .     I f   y o u   c a n   d e s i g n   a   m e t h o d   t o   o n l y   u p d a t e   a   m i n i m a l   n u m b e r   o f   p a g e s ,   t h a t   s h o u l d   s p e e d   u p   t h e   u p d a t e   p r o c e s s   s i g n i f i c a n t l y . 
 * )   - - b e l o w   i s   t h e   s e c t i o n   f o r   t h e   n e w   d a t a b a s e   f o r   T V   S h o w s  s e t   l o c   t o   s p a c e   &   " ~ / l i b r a r y / ' a p p l i c a t i o n   s u p p o r t ' / x b m c / a d d o n s / M o i r a i _ w e b _ B u i l d e r / M y V i d e o s 6 0 . d b "   &   s p a c e  s e t   h e a d   t o   " s q l i t e 3   - l i n e "   &   l o c   &   q u o t e   - -   t h e   " - l i n e "   o p t i o n   o u t p u t s   t h e   c o l u m n   d a t a   a n d   h e a d i n g   o n e   l i n e   a t   a   t i m e   -   u s e f u l   f o r   p a r s i n g   t h e   o u t p u t   f o r   p a r t i c u l a r   d a t a   i t e m s .  s e t   t a i l   t o   q u o t e  s e t   A l l   t o   " s e l e c t   c 1 8   f r o m   e p i s o d e ; "   - - r e t r i e v e s   t h e   t i t l e s   f r o m   t h e   t v s h o w   t a b l e  s e t   t v s h o w T a b l e   t o   d o   s h e l l   s c r i p t   h e a d   &   A l l   &   t a i l  s e t   t v s h o w T a b l e   t o   t v s h o w T a b l e   a s   t e x t  s e t   a l l P a r a   t o   e v e r y   p a r a g r a p h   i n   t v s h o w T a b l e  s e t   n e w T i t l e L i s t   t o   { }  r e p e a t   w i t h   a P a r a   i n   a l l P a r a   - - l o o p   f o r   T V   S h o w   t i t l e s !  	 i f   ( t e x t   o f   a P a r a )  "`   " "   t h e n  	 	 s e t   a T i t l e   t o   t e x t   ( ( o f f s e t   o f   "   c 1 8   =   "   i n   a P a r a )   +   7 )   t h r u   - 1   o f   a P a r a  	 	 c o p y   a T i t l e   t o   e n d   o f   n e w T i t l e L i s t  	 e n d   i f  e n d   r e p e a t  s e t   n e w T i t l e L i s t   t o   m y   r e p l a c e _ c h a r s ( n e w T i t l e L i s t ,   " =   " ,   r e t u r n )   - - c r e a t e s   v e r i t c a l   l i s t  t e l l   a p p l i c a t i o n   " F i n d e r "  	 s e t   M o i r a i _ d i r   t o   ( H D _ n a m e   &   " : U s e r s : "   &   u s e r N a m e   &   " : L i b r a r y : A p p l i c a t i o n   S u p p o r t : X B M C : a d d o n s : M o i r a i _ w e b _ b u i l d e r : " )   a s   a l i a s  	 i f   n o t   ( e x i s t s   f i l e   ( " N e w t v s h o w _ d a t a "   a s   s t r i n g )   i n   M o i r a i _ d i r )   t h e n  	 	 m a k e   n e w   f i l e   a t   M o i r a i _ d i r   w i t h   p r o p e r t i e s   { n a m e : " N e w t v s h o w _ d a t a " }  	 e n d   i f  	 s e t   t v s h o w _ d a t a   t o   ( H D _ n a m e   &   " : U s e r s : "   &   u s e r N a m e   &   " : L i b r a r y : A p p l i c a t i o n   S u p p o r t : X B M C : a d d o n s : M o i r a i _ w e b _ b u i l d e r : N e w t v s h o w _ d a t a : " )  	 m y   w r i t e _ t o _ f i l e ( n e w T i t l e L i s t ,   t v s h o w _ d a t a ,   f a l s e )   - - f a l s e   w i l l   e r a s e   p r e v i o u s   c o n t e n t s   f r o m   t h e   t e x t   f i l e  	 s e t   t v s h o w _ d a t a   t o   t v s h o w _ d a t a   a s   s t r i n g  	 s e t   t h e   o p e n _ t v s h o w _ d a t a   t o   o p e n   f o r   a c c e s s   f i l e   t v s h o w _ d a t a   w i t h   w r i t e   p e r m i s s i o n  	 s e t   n e w I n f o   t o   r e a d   f i l e   t v s h o w _ d a t a   u s i n g   d e l i m i t e r   " =   "  	 c l o s e   a c c e s s   t h e   o p e n _ t v s h o w _ d a t a  	 s e t   n e w I n f o T e x t   t o   n e w I n f o   a s   t e x t  	 - - L e t s   a d d   H T M L   p a g e s   n o w  	  	 s e t   t v s h o w _ d a t a   t o   ( H D _ n a m e   &   " : U s e r s : "   &   u s e r N a m e   &   " : L i b r a r y : A p p l i c a t i o n   S u p p o r t : X B M C : a d d o n s : M o i r a i _ w e b _ b u i l d e r : N e w t v s h o w _ d a t a : " )   a s   a l i a s  	 s e t   m o i r a i D i r   t o   f o l d e r   o f   t v s h o w _ d a t a  	 s e t   A p p _ f o l d e r   t o   f o l d e r   ( " S i t e s " )   i n   m o i r a i D i r  	 i f   n o t   ( e x i s t s   f o l d e r   ( " T V _ S h o w s "   a s   s t r i n g )   i n   A p p _ f o l d e r )   t h e n   - - c h e c k   f o r   f o l d e r s  	 	 m a k e   n e w   f o l d e r   a t   A p p _ f o l d e r   w i t h   p r o p e r t i e s   { n a m e : " T V _ S h o w s " }  	 e n d   i f  	 s e t   t v s h o w D i r   t o   f o l d e r   ( " T V _ S h o w s "   a s   s t r i n g )   i n   A p p _ f o l d e r  	 i f   ( c o u n t   o f   i t e m s   i n   t v s h o w D i r )   i s   g r e a t e r   t h a n   1   t h e n   - - c l e a r   f o l d e r s  	 	 d e l e t e   e v e r y   i t e m   i n   t v s h o w D i r  	 e n d   i f  	 i f   n o t   ( e x i s t s   f o l d e r   ( " v i d e o s "   a s   s t r i n g )   i n   A p p _ f o l d e r )   t h e n  	 	 m a k e   n e w   f o l d e r   a t   A p p _ f o l d e r   w i t h   p r o p e r t i e s   { n a m e : " v i d e o s " }  	 e n d   i f  	 s e t   v i d e o D i r   t o   f o l d e r   ( " v i d e o s "   a s   s t r i n g )   i n   A p p _ f o l d e r  	 i f   n o t   ( e x i s t s   f o l d e r   ( " T V _ S h o w s "   a s   s t r i n g )   i n   v i d e o D i r )   t h e n  	 	 m a k e   n e w   f o l d e r   a t   v i d e o D i r   w i t h   p r o p e r t i e s   { n a m e : " T V _ S h o w s " }  	 e n d   i f  	 s e t   v i d _ T v s h o w D i r   t o   f o l d e r   ( " T V _ S h o w s "   a s   s t r i n g )   i n   v i d e o D i r  	 i f   ( c o u n t   o f   i t e m s   i n   v i d _ T v s h o w D i r )   i s   g r e a t e r   t h a n   1   t h e n  	 	 d e l e t e   e v e r y   i t e m   i n   v i d _ T v s h o w D i r  	 e n d   i f  	 s e t   a z M e n u   t o   m a k e   n e w   f o l d e r   a t   v i d _ T v s h o w D i r   w i t h   p r o p e r t i e s   { n a m e : " A - Z M e n u " }  	 s e t   a z M e n u N a m e   t o   ( n a m e   o f   a z M e n u )  	 s e t   o l d T I D   t o   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s  	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   r e t u r n  	 s e t   a l l C o n t e n t   t o   e v e r y   t e x t   i t e m   o f   n e w I n f o T e x t  	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   o l d T I D  	 s e t   f i r s t T e x t   t o   t e x t   i t e m   1   o f   a l l C o n t e n t  	 s e t   f i r s t T e x t   t o   m y   t r i m _ l i n e ( f i r s t T e x t ,   "   " ,   0 )   - - g e t   r i d   o f   a n   e m p t y   s p a c e  	 c o p y   f i r s t T e x t   t o   t e x t   i t e m   1   o f   a l l C o n t e n t  	 s e t   o l d T I D   t o   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s  	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   r e t u r n  	 s e t   a l l C o n t e n t   t o   e v e r y   t e x t   i t e m   o f   a l l C o n t e n t  	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   o l d T I D  	 r e p e a t   w i t h   a n I t e m   i n   a l l C o n t e n t  	 	 s e t   o l d T I D   t o   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s  	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " T V _ S h o w s / "  	 	 s e t   t i t l e I n f o   t o   t e x t   i t e m   2   o f   a n I t e m  	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " / " 
 	 	 s e t   t h e C o u n t   t o   c o u n t   t e x t   i t e m s   o f   t i t l e I n f o 
 	 	 i f   t h e C o u n t   i s   g r e a t e r   t h a n   1   t h e n  	 	 	 s e t   a l l I n f o   t o   t e x t   i t e m   2   o f   t i t l e I n f o  	 	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " . "  	 	 	 s e t   l e t t e r N a m e   t o   f i r s t   c h a r a c t e r   o f   a l l I n f o   a s   t e x t  	 	 	 s e t   l e t t e r N a m e   t o   m y   C a p i t a l i z e F i r s t L e t t e r _ o f E v e r y W o r d ( l e t t e r N a m e )  	 	 	 s e t   	 s h o w N a m e   t o   t e x t   i t e m   1   o f   a l l I n f o   a s   t e x t  	 	 	 s e t   s e a s o n N a m e   t o   t e x t   i t e m   2   o f   a l l I n f o   a s   t e x t  	 	 	 s e t   e p i s o d e N a m e   t o   a l l I n f o   a s   t e x t  	 	 	 s e t   a L e t t e r   t o   m a k e   n e w   f o l d e r   a t   a z M e n u   w i t h   p r o p e r t i e s   { n a m e : l e t t e r N a m e }  	 	 	 s e t   a S h o w   t o   m a k e   n e w   f o l d e r   a t   a L e t t e r   w i t h   p r o p e r t i e s   { n a m e : s h o w N a m e }  	 	 	 s e t   a S e a s o n   t o   m a k e   n e w   f o l d e r   a t   a S h o w   w i t h   p r o p e r t i e s   { n a m e : s e a s o n N a m e }  	 	 	 s e t   a n E p i s o d e   t o   m a k e   n e w   f i l e   a t   a S e a s o n   w i t h   p r o p e r t i e s   { n a m e : e p i s o d e N a m e } 
 	 	 e n d   i f  	 e n d   r e p e a t  	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   o l d T I D  	  	 - - n o w   w e ' l l   b u i l d   H T M L   f i l e s !  	 - - t h i s   p a r t   i s   m e s s y   a n d   c o m p l e x ,   w o r k   h e r e   w o u l d   b e   g r e a t l y   a p p r e c i a t e d !   : - )  	  	 s e t   a z L i s t   t o   f o l d e r s   i n   v i d _ T v s h o w D i r   - - c h a n g e s   t i t l e   o f   e a c h   v i d e o   f i l e   f o r   l a t e r   s t e p  	 r e p e a t   w i t h   a z M e n u   i n   a z L i s t  	 	 s e t   a z M e n u N a m e   t o   n a m e   o f   a z M e n u  	 	 s e t   a l p h a L i s t   t o   f o l d e r s   i n   a z M e n u  	 	 r e p e a t   w i t h   a L e t t e r   i n   a l p h a L i s t  	 	 	 s e t   l e t t e r N a m e   t o   n a m e   o f   a L e t t e r  	 	 	 s e t   s h o w L i s t   t o   f o l d e r s   i n   a L e t t e r  	 	 	 r e p e a t   w i t h   a S h o w   i n   s h o w L i s t  	 	 	 	 s e t   s h o w N a m e   t o   n a m e   o f   a S h o w   a s   t e x t  	 	 	 	 s e t   s e a s o n L i s t   t o   f o l d e r s   i n   a S h o w  	 	 	 	 r e p e a t   w i t h   a S e a s o n   i n   s e a s o n L i s t  	 	 	 	 	 s e t   s e a s o n N a m e   t o   n a m e   o f   a S e a s o n   a s   t e x t  	 	 	 	 	 s e t   e p i s o d e L i s t   t o   e v e r y   f i l e   i n   a S e a s o n  	 	 	 	 	 r e p e a t   w i t h   a n E p i s o d e   i n   e p i s o d e L i s t   - - b e l o w   c h a n g e s   t h e   n a m e  	 	 	 	 	 	 s e t   s e m i E p i s o d e N a m e   t o   n a m e   o f   a n E p i s o d e   a s   t e x t  	 	 	 	 	 	 i f   s e m i E p i s o d e N a m e   d o e s   n o t   e n d   w i t h   " . n f o "   t h e n   - - K e e p s   . n f o   f i l e s   i n   t h e i r   p l a c e  	 	 	 	 	 	 	 s e t   t h e E x t e n s i o n   t o   " . "   &   n a m e   e x t e n s i o n   o f   a n E p i s o d e  	 	 	 	 	 	 	 s e t   e p i s o d e N a m e   t o   t e x t   1   t h r u   ( ( o f f s e t   o f   t h e E x t e n s i o n   i n   s e m i E p i s o d e N a m e )   -   1 )   �  	 	 	 	 	 	 	 	 o f   s e m i E p i s o d e N a m e  	 	 	 	 	 	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " . "  	 	 	 	 	 	 	 t r y  	 	 	 	 	 	 	 	 s e t   o l d L e t t e r   t o   l e t t e r N a m e   - - t e s t   f o r   n u m b e r  	 	 	 	 	 	 	 	 s e t   l e t t e r N a m e   t o   n u m b e r  	 	 	 	 	 	 	 	 s e t   n u m T e s t   t o   t r u e  	 	 	 	 	 	 	 	 s e t   l e t t e r N a m e   t o   o l d L e t t e r  	 	 	 	 	 	 	 e n d   t r y  	 	 	 	 	 	 	 i f   n u m T e s t   i s   t r u e   t h e n  	 	 	 	 	 	 	 	 s e t   l e t t e r N a m e   t o   m y   n u m b e r C o r r e c t i o n ( l e t t e r N a m e )   - - c o n v e r t   n u m b e r   t o   " N u m "  	 	 	 	 	 	 	 e n d   i f  	 	 	 	 	 	 	 i f   ( e x i s t s   f o l d e r   ( a z M e n u N a m e   a s   s t r i n g )   i n   t v s h o w D i r )   t h e n  	 	 	 	 	 	 	 	 s e t   a l p h a F o l d e r   t o   f o l d e r   n a m e d   a z M e n u N a m e   i n   t v s h o w D i r  	 	 	 	 	 	 	 e l s e  	 	 	 	 	 	 	 	 s e t   a l p h a F o l d e r   t o   m a k e   n e w   f o l d e r   a t   t v s h o w D i r   w i t h   p r o p e r t i e s   { n a m e : a z M e n u N a m e }  	 	 	 	 	 	 	 e n d   i f  	 	 	 	 	 	 	 i f   ( e x i s t s   f o l d e r   ( l e t t e r N a m e   a s   s t r i n g )   i n   a l p h a F o l d e r )   t h e n  	 	 	 	 	 	 	 	 s e t   l e t t e r F o l d e r   t o   f o l d e r   n a m e d   l e t t e r N a m e   i n   a l p h a F o l d e r  	 	 	 	 	 	 	 e l s e  	 	 	 	 	 	 	 	 s e t   l e t t e r F o l d e r   t o   m a k e   n e w   f o l d e r   a t   a l p h a F o l d e r   w i t h   p r o p e r t i e s   { n a m e : l e t t e r N a m e }  	 	 	 	 	 	 	 e n d   i f  	 	 	 	 	 	 	 i f   ( e x i s t s   f o l d e r   ( s h o w N a m e   a s   s t r i n g )   i n   l e t t e r F o l d e r )   t h e n  	 	 	 	 	 	 	 	 s e t   s h o w F o l d e r   t o   f o l d e r   n a m e d   s h o w N a m e   i n   l e t t e r F o l d e r  	 	 	 	 	 	 	 e l s e  	 	 	 	 	 	 	 	 s e t   s h o w F o l d e r   t o   m a k e   n e w   f o l d e r   a t   l e t t e r F o l d e r   w i t h   p r o p e r t i e s   { n a m e : s h o w N a m e }  	 	 	 	 	 	 	 e n d   i f  	 	 	 	 	 	 	 i f   ( e x i s t s   f o l d e r   ( s e a s o n N a m e   a s   s t r i n g )   i n   s h o w F o l d e r )   t h e n  	 	 	 	 	 	 	 	 s e t   s e a s o n F o l d e r   t o   f o l d e r   n a m e d   s e a s o n N a m e   i n   s h o w F o l d e r  	 	 	 	 	 	 	 e l s e  	 	 	 	 	 	 	 	 s e t   s e a s o n F o l d e r   t o   m a k e   n e w   f o l d e r   a t   s h o w F o l d e r   w i t h   p r o p e r t i e s   { n a m e : s e a s o n N a m e }  	 	 	 	 	 	 	 e n d   i f  	 	 	 	 	 	 	 t r y   - - d o n e   t o   p r e v e n t   d u p l i c a t e s   f r o m   b e i n g   e n t e r e d  	 	 	 	 	 	 	 	 i f   ( e x i s t s   f i l e   ( e p i s o d e N a m e )   i n   s e a s o n F o l d e r )   t h e n  	 	 	 	 	 	 	 	 e l s e  	 	 	 	 	 	 	 	 	 m o v e   a n E p i s o d e   t o   s e a s o n F o l d e r  	 	 	 	 	 	 	 	 e n d   i f  	 	 	 	 	 	 	 e n d   t r y  	 	 	 	 	 	 e n d   i f  	 	 	 	 	 e n d   r e p e a t  	 	 	 	 e n d   r e p e a t  	 	 	 e n d   r e p e a t  	 	 e n d   r e p e a t  	 e n d   r e p e a t  	 s e t   t v N a m e   t o   n a m e   o f   t v s h o w D i r  	 s e t   c r e a t e d L e t t e r s   t o   { }   - -   u s e d   f o r   d e t e r m i n i n g   l e t t e r s   a t   t h e   e n d  	 s e t   a z L i s t   t o   f o l d e r s   i n   t v s h o w D i r   - - N E E D E D   F O R   H E I R A R C H Y   D O N ' T   E R A S E ! ! !  	 r e p e a t   w i t h   a z M e n u   i n   a z L i s t  	 	 s e t   a z M e n u N a m e   t o   n a m e   o f   a z M e n u  	 	 s e t   l e t t e r L i s t   t o   f o l d e r s   i n   a z M e n u  	 	 r e p e a t   w i t h   a L e t t e r   i n   l e t t e r L i s t  	 	 	 s e t   l e t t e r N a m e   t o   n a m e   o f   a L e t t e r  	 	 	 c o p y   l e t t e r N a m e   t o   e n d   o f   c r e a t e d L e t t e r s   - - u s e d   f o r   l e t t e r s   a t   t h e   e n d  	 	 	 s e t   s h o w L i s t   t o   f o l d e r s   i n   a L e t t e r  	 	 	 r e p e a t   w i t h   a S h o w   i n   s h o w L i s t  	 	 	 	 s e t   s h o w N a m e   t o   n a m e   o f   a S h o w  	 	 	 	 s e t   s e a s o n L i s t   t o   f o l d e r s   i n   a S h o w  	 	 	 	 r e p e a t   w i t h   a S e a s o n   i n   s e a s o n L i s t  	 	 	 	 	 s e t   s e a s o n N a m e   t o   n a m e   o f   a S e a s o n  	 	 	 	 	 s e t   e p i s o d e L i s t   t o   f i l e s   i n   a S e a s o n  	 	 	 	 	 r e p e a t   w i t h   a n E p i s o d e   i n   e p i s o d e L i s t  	 	 	 	 	 	 i f   n a m e   e x t e n s i o n   o f   a n E p i s o d e  "`   " h t m l "   t h e n   - - a v o i d   h t m l   f i l e s  	 	 	 	 	 	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " . "  	 	 	 	 	 	 	 s e t   e p i s o d e N a m e   t o   n a m e   o f   a n E p i s o d e  	 	 	 	 	 	 	 s e t   o r i g E p i s o d e N a m e   t o   e p i s o d e N a m e   - - b a c k u p   o f   t h e   n a m e !  	 	 	 	 	 	 	 s e t   e p i s o d e N a m e   t o   m y   r e p l a c e _ c h a r s ( e p i s o d e N a m e ,   "   " ,   " _ " )  	 	 	 	 	 	 	 s e t   e p i s o d e E x t e n s i o n   t o   n a m e   e x t e n s i o n   o f   a n E p i s o d e  	 	 	 	 	 	 	 s e t   e p i s o d e T i t l e   t o   t e x t   1   t h r u   ( ( o f f s e t   o f   e p i s o d e E x t e n s i o n   i n   e p i s o d e N a m e )   -   1 )   o f   e p i s o d e N a m e  	 	 	 	 	 	 	 s e t   d o c N a m e   t o   e p i s o d e T i t l e   &   " h t m l "  	 	 	 	 	 	 	 i f   n a m e   e x t e n s i o n   o f   a n E p i s o d e  "`   " h t m l "   t h e n   - - m o v e   a n E p i s o d e   t o   v i d _ t v s h o w D i r   a n d  	 	 	 	 	 	 	 	 i f   { e x i s t s   f o l d e r   ( a z M e n u N a m e )   i n   v i d _ T v s h o w D i r }   t h e n   - - r e b u i l d   f i l e s y s t e m  	 	 	 	 	 	 	 	 	 s e t   a l t M e n u   t o   f o l d e r   ( a z M e n u N a m e )   i n   v i d _ T v s h o w D i r  	 	 	 	 	 	 	 	 	 i f   { e x i s t s   f o l d e r   ( l e t t e r N a m e )   i n   a l t M e n u }   t h e n  	 	 	 	 	 	 	 	 	 	 s e t   a l t L e t t e r   t o   f o l d e r   ( l e t t e r N a m e )   i n   a l t M e n u  	 	 	 	 	 	 	 	 	 	 i f   { e x i s t s   f o l d e r   ( s h o w N a m e )   i n   a l t L e t t e r }   t h e n  	 	 	 	 	 	 	 	 	 	 	 s e t   a l t S h o w   t o   f o l d e r   ( s h o w N a m e )   i n   a l t L e t t e r  	 	 	 	 	 	 	 	 	 	 	 i f   { e x i s t s   f o l d e r   ( s e a s o n N a m e )   i n   a l t S h o w }   t h e n  	 	 	 	 	 	 	 	 	 	 	 	 s e t   a l t S e a s o n   t o   f o l d e r   ( s e a s o n N a m e )   i n   a l t S h o w  	 	 	 	 	 	 	 	 	 	 	 	 m o v e   a n E p i s o d e   t o   a l t S e a s o n   - - m o v e   t o   S e a s o n   i n   v i d _ t v s h o w D i r  	 	 	 	 	 	 	 	 	 	 	 	 s e t   c u r r e n t L o c   t o   a l t S e a s o n   a s   t e x t  	 	 	 	 	 	 	 	 	 	 	 e l s e  	 	 	 	 	 	 	 	 	 	 	 	 t r y  	 	 	 	 	 	 	 	 	 	 	 	 	 s e t   a l t S e a s o n   t o   m a k e   n e w   f o l d e r   a t   a l t S h o w   w i t h   p r o p e r t i e s   { n a m e : s e a s o n N a m e }  	 	 	 	 	 	 	 	 	 	 	 	 e n d   t r y  	 	 	 	 	 	 	 	 	 	 	 	 m o v e   a n E p i s o d e   t o   a l t S e a s o n  	 	 	 	 	 	 	 	 	 	 	 	 s e t   c u r r e n t L o c   t o   a l t S e a s o n   a s   t e x t  	 	 	 	 	 	 	 	 	 	 	 e n d   i f  	 	 	 	 	 	 	 	 	 	 e l s e  	 	 	 	 	 	 	 	 	 	 	 t r y  	 	 	 	 	 	 	 	 	 	 	 	 s e t   a l t S h o w   t o   m a k e   n e w   f o l d e r   a t   a l t L e t t e r   w i t h   p r o p e r t i e s   { n a m e : s h o w N a m e }  	 	 	 	 	 	 	 	 	 	 	 	 s e t   a l t S e a s o n   t o   m a k e   n e w   f o l d e r   a t   a l t S h o w   w i t h   p r o p e r t i e s   { n a m e : s e s o n N a m e }  	 	 	 	 	 	 	 	 	 	 	 e n d   t r y  	 	 	 	 	 	 	 	 	 	 	 m o v e   a n E p i s o d e   t o   a l t S e a s o n  	 	 	 	 	 	 	 	 	 	 	 s e t   c u r r e n t L o c   t o   a l t S e s o n   a s   t e x t  	 	 	 	 	 	 	 	 	 	 e n d   i f  	 	 	 	 	 	 	 	 	 e l s e  	 	 	 	 	 	 	 	 	 	 t r y  	 	 	 	 	 	 	 	 	 	 	 s e t   a l t L e t t e r   t o   m a k e   n e w   f o l d e r   a t   a l t M e n u   w i t h   p r o p e r t i e s   { n a m e : l e t t e r N a m e }  	 	 	 	 	 	 	 	 	 	 	 s e t   a l t S h o w   t o   m a k e   n e w   f o l d e r   a t   a l t L e t t e r   w i t h   p r o p e r t i e s   { n a m e : s h o w N a m e }  	 	 	 	 	 	 	 	 	 	 	 s e t   a l t S e a s o n   t o   m a k e   n e w   f o l d e r   a t   a l t S h o w   w i t h   p r o p e r t i e s   { n a m e : s e s o n N a m e }  	 	 	 	 	 	 	 	 	 	 e n d   t r y  	 	 	 	 	 	 	 	 	 	 m o v e   a n E p i s o d e   t o   a l t S e a s o n  	 	 	 	 	 	 	 	 	 	 s e t   c u r r e n t L o c   t o   a l t S e s o n   a s   t e x t  	 	 	 	 	 	 	 	 	 e n d   i f  	 	 	 	 	 	 	 	 e l s e  	 	 	 	 	 	 	 	 	 t r y  	 	 	 	 	 	 	 	 	 	 s e t   a l t M e n u   t o   m a k e   n e w   f o l d e r   a t   v i d _ T v s h o w D i r   w i t h   p r o p e r t i e s   { n a m e : a z M e n u N a m e }  	 	 	 	 	 	 	 	 	 	 s e t   a l t L e t t e r   t o   m a k e   n e w   f o l d e r   a t   a l t M e n u   w i t h   p r o p e r t i e s   { n a m e : l e t t e r N a m e }  	 	 	 	 	 	 	 	 	 	 s e t   a l t S h o w   t o   m a k e   n e w   f o l d e r   a t   a l t L e t t e r   w i t h   p r o p e r t i e s   { n a m e : s h o w N a m e }  	 	 	 	 	 	 	 	 	 	 s e t   a l t S e a s o n   t o   m a k e   n e w   f o l d e r   a t   a l t S h o w   w i t h   p r o p e r t i e s   { n a m e : s e s o n N a m e }  	 	 	 	 	 	 	 	 	 e n d   t r y  	 	 	 	 	 	 	 	 	 m o v e   a n E p i s o d e   t o   a l t S e a s o n  	 	 	 	 	 	 	 	 	 s e t   c u r r e n t L o c   t o   a l t S e s o n   a s   t e x t  	 	 	 	 	 	 	 	 e n d   i f  	 	 	 	 	 	 	 e n d   i f  	 	 	 	 	 	 e n d   i f  	 	 	 	 	 	 s e t   p a r e n t F o l   t o   f o l d e r   o f   t v s h o w D i r   - - u s e d   a s   a   d e l i m i t e r !   ( m w a h a h a h a )  	 	 	 	 	 	 s e t   p a r e n t N a m e   t o   n a m e   o f   p a r e n t F o l  	 	 	 	 	 	 s e t   p a t h N a m e   t o   c u r r e n t L o c   a s   t e x t  	 	 	 	 	 	 s e t   p a t h N a m e   t o   m y   r e p l a c e _ c h a r s ( p a t h N a m e ,   " : " ,   " _ " )   - - c h a n g e   " : "   t o   " _ "  	 	 	 	 	 	 s e t   p a t h N a m e   t o   m y   r e p l a c e _ c h a r s ( p a t h N a m e ,   "   " ,   " _ " )   - - c h a n g e   "   "   t o   " _ "  	 	 	 	 	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   p a r e n t N a m e   - - t h i s   a l l   p o i n t s  	 	 	 	 	 	 s e t   a l m o s t L o c   t o   t e x t   i t e m   2   o f   p a t h N a m e   - - t o   t h e   f i l e   f o r   t h e   H T M L  	 	 	 	 	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   o r i g E p i s o d e N a m e   - - c o d i n g  	 	 	 	 	 	 s e t   n e a r l y L o c   t o   t e x t   i t e m   1   o f   a l m o s t L o c   &   o r i g E p i s o d e N a m e  	 	 	 	 	 	 s e t   f i l e L o c   t o   t e x t   ( ( o f f s e t   o f   " : "   i n   n e a r l y L o c )   +   1 )   t h r u   - 1   o f   n e a r l y L o c  	 	 	 	 	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   { " " }  	 	 	 	 	 	 t r y   - - p r e v e n t s   d u p l i c a t e s   f r o m   b e i n g   w r i t t e n - - - - - - - - - - - - - - - - - - - - - - - - - - - - . . . d 8 8 8  	 	 	 	 	 	 	 m a k e   n e w   f i l e   a t   a S e a s o n   w i t h   p r o p e r t i e s   { n a m e : d o c N a m e }   - - d 8 8 8 8  	 	 	 	 	 	 e n d   t r y   - - 	 	 	 	 	 	 	 	 	 	 	 	 	 8 8 8  	 	 	 	 	 	 i f   { e x i s t s   f i l e   ( d o c N a m e )   i n   a S e a s o n }   t h e n   - - 	 	 	 	 	 	 8 8 8  	 	 	 	 	 	 	 s e t   d F i l e   t o   f i l e   ( d o c N a m e )   i n   a S e a s o n   - - 	 	 	 	 	 	 8 8 8  	 	 	 	 	 	 	 s e t   e p i s o d e F i l e   t o   d F i l e   a s   a l i a s   - - 	 	 	 	 	 	 	 8 8 8  	 	 	 	 	 	 	 - - C o d e   f o r   e p i s o d e   h t m l   t e x t   f i l e ! - - - 	 	 	 	 	 	       	 8 8 8  	 	 	 	 	 	 	 - - y o u   c a n   m o d i f y   t h i s   f o r   y o u r   o w n   c o d i n g   n e e d s   o f   c o u r s e                 8 8 8 8 8 8 8  	 	 	 	 	 	 	 s e t   e p i s o d e T e x t   t o   " < ! D O C T Y P E   h t m l > 
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
                     < s o u r c e   s r c = ' . . / . . / . . / . . / . . / "   &   f i l e L o c   &   " '   t y p e = ' v i d e o / m p 4 ' / > 
                     < s o u r c e   s r c = ' . . / . . / . . / . . / . . / "   &   f i l e L o c   &   " '   t y p e = ' v i d e o / o g g ' / > 
                     < s o u r c e   s r c = ' . . / . . / . . / . . / . . / "   &   f i l e L o c   &   " '   t y p e = ' v i d e o / w e b m '   / > 
     < / v i d e o > 
     < b u t t o n   i d = ' f u l l s c r e e n v i d '   c l a s s = ' b u t t o n ' > F u l l s c r e e n   v i d e o < / b u t t o n > 
 < / d i v > 
     < s c r i p t > 
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
 < / h t m l > "  	 	 	 	 	 	 	 i g n o r i n g   a p p l i c a t i o n   r e s p o n s e s  	 	 	 	 	 	 	 	 s e t   e p i s o d e F i l e   t o   m y   w r i t e C o d e ( e p i s o d e F i l e ,   e p i s o d e T e x t )  	 	 	 	 	 	 	 e n d   i g n o r i n g  	 	 	 	 	 	 	 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . d 8 8 8 8 b .  	 	 	 	 	 	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " "   - - - - - - - - - - - - - - - - - d 8 8 P     Y 8 8 b  	 	 	 	 	 	 e n d   i f   - - - - - - - - - - - - - 	 	 	 - - -                                                 - - - - - - - - - - - - -                                   8 8 8  	 	 	 	 	 e n d   r e p e a t   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -       	 - -   - - - - - - - -                               - - -                       . d 8 8 P  	 	 	 	 	 s e t   d o c N a m e   t o   s e a s o n N a m e   &   " . h t m l "   - - - - - - 	 	       - - - - - - - - - - - - -           . o d 8 8 8 P I  	 	 	 	 	 s e t   a l t S h o w N a m e   t o   s h o w N a m e   a s   t e x t   - - - - - - - - - - -         - - - - - - - - - - - - -         d 8 8 P I  	 	 	 	 	 s e t   a l t S h o w N a m e   t o   m y   r e p l a c e _ c h a r s ( a l t S h o w N a m e ,   " _ " ,   "   " )   - - 8 8 8 I    	 	 	 	 	 s e t   a l t S e a s o n N a m e   t o   s e a s o n N a m e   a s   t e x t   - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8 8 8 8 8 8 8 8    	 	 	 	 	 s e t   a l t S e a s o n N a m e   t o   m y   r e p l a c e _ c h a r s ( a l t S e a s o n N a m e ,   " _ " ,   "   " )  	 	 	 	 	 t r y  	 	 	 	 	 	 m a k e   n e w   f i l e   a t   a S h o w   w i t h   p r o p e r t i e s   { n a m e : d o c N a m e }  	 	 	 	 	 e n d   t r y  	 	 	 	 	 i f   { e x i s t s   f i l e   ( d o c N a m e )   i n   a S h o w }   t h e n  	 	 	 	 	 	 s e t   d F i l e   t o   f i l e   ( d o c N a m e )   i n   a S h o w  	 	 	 	 	 	 s e t   e p i s o d e F i l e   t o   d F i l e   a s   a l i a s  	 	 	 	 	 	 s e t   l i s t P a r t 1   t o   " < l i > < a   h r e f = ' "   - - a u t o   g e n e r a t e   H T M L   l i s t s  	 	 	 	 	 	 s e t   l i s t P a r t 7   t o   " ' > "  	 	 	 	 	 	 s e t   l i s t P a r t 9   t o   " < / a > < / l i > "  	 	 	 	 	 	 s e t   s e a s o n H t m l L i s t   t o   { }  	 	 	 	 	 	 s e t   a l l F i l e s   t o   e v e r y   f i l e   i n   a S e a s o n  	 	 	 	 	 	 r e p e a t   w i t h   a F i l e   i n   a l l F i l e s  	 	 	 	 	 	 	 i f   n a m e   e x t e n s i o n   o f   a F i l e   i s   " h t m l "   t h e n  	 	 	 	 	 	 	 	 s e t   h t m l F i l e   t o   n a m e   o f   a F i l e   a s   t e x t  	 	 	 	 	 	 	 	 s e t   t r u e E p i s o d e N a m e   t o   t e x t   1   t h r u   ( ( o f f s e t   o f   " . "   i n   h t m l F i l e )   -   1 )   o f   h t m l F i l e  	 	 	 	 	 	 	 	 s e t   t r u e E p i s o d e N a m e   t o   m y   r e p l a c e _ c h a r s ( t r u e E p i s o d e N a m e ,   "   " ,   " _ " )  	 	 	 	 	 	 	 	 s e t   t o t a l L i s t   t o   l i s t P a r t 1   &   " . . / . . / . . / . . / T V _ S h o w s "   &   " / "   &   a z M e n u N a m e   &   " / "   &   l e t t e r N a m e   &   " / "   &   s h o w N a m e   &   " / "   &   s e a s o n N a m e   &   " / "   &   h t m l F i l e   &   l i s t P a r t 7   &   t r u e E p i s o d e N a m e   &   l i s t P a r t 9  	 	 	 	 	 	 	 	 c o p y   t o t a l L i s t   t o   e n d   o f   s e a s o n H t m l L i s t  	 	 	 	 	 	 	 e n d   i f  	 	 	 	 	 	 e n d   r e p e a t  	 	 	 	 	 	 s e t   e p i s o d e T e x t   t o   " < ! D o c t y p e   h t m l > 
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
                 < h e a d e r   i d = ' s h o w T i t l e '   s t y l e = '   f o n t - s i z e : 5 0 p x ; c o l o r : # 7 0 8 0 9 0 ; ' > "   &   a l t S h o w N a m e   &   " < / h e a d e r > 
                 < h e a d e r   i d = ' s e a s o n T i t l e '   s t y l e = ' f o n t - s i z e : 3 0 p x ; c o l o r : # 7 0 8 0 9 0 ; ' > "   &   a l t S e a s o n N a m e   &   " < / h e a d e r > 
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
                         c o l o r : # 7 0 8 0 9 0 ; p o s i t i o n : a b s o l u t e ; t o p : 2 ; l e f t : 2 0 p x ; h e i g h t : 1 0 0 p x ; w i d t h : 3 0 0 p x ; ; ' > "   &   a l t S h o w N a m e   &   " < / h e a d e r >                 
                 < u l   c l a s s = ' S E _ n a v '   s t y l e = ' p o s i t i o n : a b s o l u t e ; t o p : 7 5 p x ; ' > "   &   �  	 	 	 	 	 	 s h o w H t m l L i s t   &   " 
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
                         c o l o r : # 7 0 8 0 9 0 ; p o s i t i o n : a b s o l u t e ; t o p : 2 ; l e f t : 2 0 p x ; h e i g h t : 1 0 0 p x ; w i d t h : 3 0 0 p x ; ; ' > "   &   l e t t e r N a m e   &   " < / h e a d e r >                 
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
                         c o l o r : # 7 0 8 0 9 0 ; p o s i t i o n : a b s o l u t e ; t o p : 2 ; l e f t : 2 0 p x ; h e i g h t : 1 0 0 p x ; w i d t h : 3 0 0 p x ; ; ' > "   &   l e t t e r N a m e   &   " < / h e a d e r >                 
                 < u l   c l a s s = ' S E _ n a v '   s t y l e = ' p o s i t i o n : a b s o l u t e ; t o p : 7 5 p x ; ' > "   &   �  	 	 	 	 	 	 l e t t e r H t m l L i s t   &   " 
 	 	   < / u l > 
         < / d i v > 
 < / b o d y > 
 < / h t m l > "  	 	 	 	 	 i g n o r i n g   a p p l i c a t i o n   r e s p o n s e s  	 	 	 	 	 	 s e t   e p i s o d e F i l e   t o   m y   w r i t e C o d e ( e p i s o d e F i l e ,   e p i s o d e T e x t )  	 	 	 	 	 e n d   i g n o r i n g  	 	 	 	 e n d   i f   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8 8 8 8 8 8 8  	 	 	 e n d   t r y  	 	 e n d   i f  	 e n d   r e p e a t   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8  	  e n d   t e l l   - - - - - - - - - - - - - - - - - - - - - - - - - - - -  o n   w r i t e C o d e ( e p i s o d e F i l e ,   e p i s o d e T e x t )   - - d o n ' t   e v e n   a s k   m e   w h y   t h i s   s e c t i o n   w o r k s . . .  	 s e t   b a r   t o   o p e n   f o r   a c c e s s   e p i s o d e F i l e  	 c l o s e   a c c e s s   b a r  	 t r y  	 	 w r i t e   e p i s o d e T e x t   t o   e p i s o d e F i l e  	 	 c l o s e   a c c e s s   e p i s o d e F i l e  	 	 o p e n   f o r   a c c e s s   e p i s o d e F i l e  	 e n d   t r y  	 t r y  	 	 c l o s e   a c c e s s   e p i s o d e F i l e  	 e n d   t r y  	 r e t u r n   e p i s o d e F i l e  e n d   w r i t e C o d e   o n   r e p l a c e _ c h a r s ( t h i s _ t e x t ,   s e a r c h _ s t r i n g ,   r e p l a c e m e n t _ s t r i n g )  	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   t h e   s e a r c h _ s t r i n g  	 s e t   t h e   i t e m _ l i s t   t o   e v e r y   t e x t   i t e m   o f   t h i s _ t e x t  	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   t h e   r e p l a c e m e n t _ s t r i n g  	 s e t   t h i s _ t e x t   t o   t h e   i t e m _ l i s t   a s   s t r i n g  	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " "  	 r e t u r n   t h i s _ t e x t  e n d   r e p l a c e _ c h a r s   o n   n u m b e r C o r r e c t i o n ( t h e N a m e )  	 g l o b a l   t h e N u m b e r s ,   n u m b e r L a b e l  	 s e t   o l d T I D   t o   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s  	 r e p e a t   w i t h   i   f r o m   1   t o   c o u n t   o f   t h e N u m b e r s  	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   i t e m   i   o f   t h e N u m b e r s  	 	 s e t   t h e T e x t B i t s   t o   t e x t   i t e m s   o f   t h e N a m e  	 	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   i t e m   1   o f   n u m b e r L a b e l  	 	 s e t   t h e N a m e   t o   t h e T e x t B i t s   a s   t e x t  	 e n d   r e p e a t  	 s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   o l d T I D  	 r e t u r n   t h e N a m e  e n d   n u m b e r C o r r e c t i o n   o n   w r i t e _ t o _ f i l e ( t h i s _ d a t a ,   t a r g e t _ f i l e ,   a p p e n d _ d a t a )  	 t r y  	 	 s e t   t h e   t a r g e t _ f i l e   t o   t h e   t a r g e t _ f i l e   a s   s t r i n g  	 	 s e t   t h e   o p e n _ t a r g e t _ f i l e   t o   o p e n   f o r   a c c e s s   f i l e   t a r g e t _ f i l e   w i t h   w r i t e   p e r m i s s i o n  	 	 i f   a p p e n d _ d a t a   i s   f a l s e   t h e n   s e t   e o f   o f   t h e   o p e n _ t a r g e t _ f i l e   t o   0  	 	 w r i t e   t h i s _ d a t a   t o   t h e   o p e n _ t a r g e t _ f i l e   s t a r t i n g   a t   e o f  	 	 c l o s e   a c c e s s   t h e   o p e n _ t a r g e t _ f i l e  	 	 r e t u r n   t r u e  	 o n   e r r o r  	 	 t r y  	 	 	 c l o s e   a c c e s s   f i l e   t a r g e t _ f i l e  	 	 e n d   t r y  	 	 r e t u r n   f a l s e  	 e n d   t r y  e n d   w r i t e _ t o _ f i l e   o n   t r i m _ l i n e ( f i r s t T e x t ,   t r i m _ c h a r s ,   t r i m _ i n d i c a t o r )  	 - -   0   =   b e g i n n i n g ,   1   =   e n d ,   2   =   b o t h  	 s e t   x   t o   t h e   l e n g t h   o f   t h e   t r i m _ c h a r s  	 - -   T R I M   B E G I N N I N G  	 i f   t h e   t r i m _ i n d i c a t o r   i s   i n   { 0 ,   2 }   t h e n  	 	 r e p e a t   w h i l e   f i r s t T e x t   b e g i n s   w i t h   t h e   t r i m _ c h a r s  	 	 	 t r y  	 	 	 	 s e t   f i r s t T e x t   t o   c h a r a c t e r s   ( x   +   1 )   t h r u   - 1   o f   f i r s t T e x t   a s   s t r i n g  	 	 	 o n   e r r o r  	 	 	 	 - -   t h e   t e x t   c o n t a i n s   n o t h i n g   b u t   t h e   t r i m   c h a r a c t e r s  	 	 	 	 r e t u r n   " "  	 	 	 e n d   t r y  	 	 e n d   r e p e a t  	 e n d   i f  	 - -   T R I M   E N D I N G  	 i f   t h e   t r i m _ i n d i c a t o r   i s   i n   { 1 ,   2 }   t h e n  	 	 r e p e a t   w h i l e   f i r s t T e x t   e n d s   w i t h   t h e   t r i m _ c h a r s  	 	 	 t r y  	 	 	 	 s e t   f i r s t T e x t   t o   c h a r a c t e r s   1   t h r u   - ( x   +   1 )   o f   f i r s t T e x t   a s   s t r i n g  	 	 	 o n   e r r o r  	 	 	 	 - -   t h e   t e x t   c o n t a i n s   n o t h i n g   b u t   t h e   t r i m   c h a r a c t e r s  	 	 	 	 r e t u r n   " "  	 	 	 e n d   t r y  	 	 e n d   r e p e a t  	 e n d   i f  	 r e t u r n   f i r s t T e x t  e n d   t r i m _ l i n e   o n   C a p i t a l i z e F i r s t L e t t e r _ o f E v e r y W o r d ( I n p u t S t r i n g )  	 s e t   n e w S t r i n g   t o   " "  	 r e p e a t   w i t h   c u r r e n t W o r d   i n   ( e v e r y   w o r d   o f   I n p u t S t r i n g )  	 	 d o   s h e l l   s c r i p t   " r u b y   - e   ' p u t s   \ " "   &   c u r r e n t W o r d   &   " \ " . c a p i t a l i z e ' "  	 	 s e t   n e w S t r i n g   t o   n e w S t r i n g   &   r e s u l t   &   "   "  	 e n d   r e p e a t  	 r e t u r n   ( c h a r a c t e r s   1   t h r o u g h   - 2   o f   n e w S t r i n g   a s   t e x t )  e n d   C a p i t a l i z e F i r s t L e t t e r _ o f E v e r y W o r d� o      ���� 0 remote_updater  ��  ��  � ��� l     ��������  ��  ��  � ��� l &E������ r  &E��� b  &A��� b  &=��� b  &9��� b  &5��� b  &1��� b  &-��� m  &)�� ����  s e t   s i t e s _ f o l d e r   t o   ( H D _ n a m e   &   " : U s e r s : "   &   u s e r N a m e   &   " : L i b r a r y : A p p l i c a t i o n   S u p p o r t : X B M C : a d d o n s : M o i r a i _ w e b _ b u i l d e r : S i t e s : " )   a s   a l i a s  t e l l   a p p l i c a t i o n   " F i n d e r "  	 s e t   f r o n t P a g e   t o   m a k e   n e w   f i l e   a t   s i t e s _ f o l d e r   w i t h   p r o p e r t i e s   { n a m e : " I n d e x . h t m l " }  	 s e t   f r o n t P a g e   t o   f r o n t P a g e   a s   t e x t  	 s e t   t h e T e x t   t o   " < ! D O C T Y P E   h t m l > 
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
           < s o u r c e   s r c = ' v i d e o s /� o  ),���� 0 	videoname 	videoName� m  -0�� ��� f '   t y p e = ' v i d e o / w e b m '   / > 
                 < s o u r c e   s r c = ' v i d e o s /� o  14���� 0 	videoname 	videoName� m  58�� ��� d '   t y p e = ' v i d e o / m p 4 '   / > 
                 < s o u r c e   s r c = ' v i d e o s /� o  9<���� 0 	videoname 	videoName� m  =@�� ���� '   t y p e = ' v i d e o / o g g '   / > 
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
 < / h t m l > "  	 s e t   t h e   o p e n _ f r o n t P a g e   t o   o p e n   f o r   a c c e s s   f i l e   f r o n t P a g e   w i t h   w r i t e   p e r m i s s i o n  	 w r i t e   t h e T e x t   t o   f i l e   f r o n t P a g e  	 c l o s e   a c c e s s   o p e n _ f r o n t P a g e  e n d   t e l l� o      ���� 0 index_updater  ��  ��  � ��� l     ��������  ��  ��  � ��� l F������� r  F���� b  F���� b  F���� b  F���� b  F���� b  F���� b  F���� b  F��� b  F}��� b  Fy��� b  Fu��� b  Fq��� b  Fm��� b  Fi��� b  Fe   b  Fc b  F_ b  F[ b  FW	 b  FS

 b  FO b  FK m  FI � � a c t i v a t e   a p p l i c a t i o n   " T e r m i n a l "  t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "  	 t e l l   p r o c e s s   " T e r m i n a l "  	 	 k e y s t r o k e   " r s y n c   - a v e   s s h   \ " / u s e r s / o  IJ���� 0 username userName m  KN � � / l i b r a r y / a p p l i c a t i o n   s u p p o r t / x b m c / a d d o n s / M o i r a i _ w e b _ b u i l d e r / s i t e s / m o v i e s / \ "   o  OR����  0 serverlocation serverLocation	 o  SV���� 0 rootlocation rootLocation m  WZ � 6 / m o v i e s / "   &   r e t u r n  	 	 d e l a y   o  [^���� 0 thewait theWait m  _b � Z 
 	 	 b e e p  	 	 k e y s t r o k e   " r s y n c   - a v e   s s h   \ " / u s e r s / o  cd���� 0 username userName� m  eh � � / l i b r a r y / a p p l i c a t i o n   s u p p o r t / x b m c / a d d o n s / M o i r a i _ w e b _ b u i l d e r / s i t e s / t v _ s h o w s / \ "  � o  il����  0 serverlocation serverLocation� o  mp���� 0 rootlocation rootLocation� m  qt � : / t v _ s h o w s / "   &   r e t u r n  	 	 d e l a y  � o  ux���� 0 thewait theWait� m  y| � Z 
 	 	 b e e p 
 	 	 k e y s t r o k e   " r s y n c   - a v e   s s h   \ " / u s e r s /� o  }~���� 0 username userName� m  � � � / l i b r a r y / a p p l i c a t i o n   s u p p o r t / x b m c / a d d o n s / M o i r a i _ w e b _ b u i l d e r / s i t e s / i n d e x . h t m l \ "  � o  ������  0 serverlocation serverLocation� o  ������ 0 rootlocation rootLocation� m  ��   �!! 6 / v i d e o s / "   &   r e t u r n 
 	 	 d e l a y  � o  ������ 0 thewait theWait� m  ��"" �## � 
 	 
 	 e n d   t e l l  	 t e l l   a p p l i c a t i o n   " F i n d e r "   t o   q u i t   a p p l i c a t i o n   " T e r m i n a l " 
 	 
 	  e n d   t e l l� o      ����  0 host_to_server host_to_Server��  ��  � $%$ l     ��������  ��  ��  % &'& l ��(����( r  ��)*) m  ��++ �,,B t e l l   a p p l i c a t i o n   " F i n d e r "  	 s e t   H D _ n a m e   t o   g e t   n a m e   o f   s t a r t u p   d i s k  	 s e t   u s e r N a m e   t o   d o   s h e l l   s c r i p t   " w   - h   |   s o r t   - u   - t '   '   - k 1 , 1   |   w h i l e   r e a d   u s e r   e t c 
 d o 
     h o m e d i r = $ ( d s c l   .   - r e a d   / U s e r s / $ u s e r   N F S H o m e D i r e c t o r y   |   c u t   - d '   '   - f 2 ) 
     e c h o   $ u s e r 
 d o n e "  	 s e t   s i t e s F o l d e r   t o   H D _ n a m e   &   " : U s e r s : "   &   u s e r N a m e   &   " : L i b r a r y : A p p l i c a t i o n   S u p p o r t : X B M C : a d d o n s : M o i r a i _ w e b _ b u i l d e r : S i t e s : "   a s   a l i a s  	 d e l e t e   e v e r y   i t e m   i n   s i t e s F o l d e r  e n d   t e l l* o      ���� 0 folderclearer folderClearer��  ��  ' -.- l     ��~�}�  �~  �}  . /0/ l ��1�|�{1 r  ��232 b  ��454 b  ��676 b  ��898 b  ��:;: b  ��<=< b  ��>?> b  ��@A@ b  ��BCB b  ��DED b  ��FGF b  ��HIH b  ��JKJ b  ��LML b  ��NON b  ��PQP o  ���z�z 0 
thelicense 
theLicenseQ o  ���y
�y 
ret O o  ���x
�x 
ret M o  ���w�w  0 server_to_host server_to_HostK o  ���v
�v 
ret I o  ���u
�u 
ret G o  ���t�t 0 remote_updater  E o  ���s
�s 
ret C o  ���r
�r 
ret A o  ���q�q 0 index_updater  ? o  ���p
�p 
ret = o  ���o
�o 
ret ; o  ���n�n  0 host_to_server host_to_Server9 o  ���m
�m 
ret 7 o  ���l
�l 
ret 5 o  ���k�k 0 folderclearer folderClearer3 o      �j�j 0 
scripttext 
scriptText�|  �{  0 RSR l ��T�i�hT r  ��UVU I ���gWX
�g .rdwropenshor       fileW 4  ���fY
�f 
fileY o  ���e�e 0 	buildfile 	buildFileX �dZ�c
�d 
permZ m  ���b
�b boovtrue�c  V l     [�a�`[ o      �_�_  0 open_buildfile open_buildFile�a  �`  �i  �h  S \]\ l �
^�^�]^ I �
�\_`
�\ .rdwrwritnull���     ****_ o  � �[�[ 0 
scripttext 
scriptText` �Za�Y
�Z 
refna o  �X�X  0 open_buildfile open_buildFile�Y  �^  �]  ] b�Wb l c�V�Uc I �Td�S
�T .rdwrclosnull���     ****d l e�R�Qe o  �P�P  0 open_buildfile open_buildFile�R  �Q  �S  �V  �U  �W       �Ofg�O  f �N
�N .aevtoappnull  �   � ****g �Mh�L�Kij�J
�M .aevtoappnull  �   � ****h k    kk  ll  mm  nn  $oo  2pp  7qq  �rr  �ss tt 2uu ivv nww �xx �yy �zz g{{ y|| �}} �~~ � ��� ��� ��� &�� /�� R�� \�� b�I�I  �L  �K  i  j � �H�G�F "�E�D .�C�B�A�@ E�? J L�>�=�<�;�:�9 ^�8�7 ��6 � ��5 � � ��4�3 � � � � ��2 ��1 � � � � ��0&*-0�/�.�-:BD�,KSU[ce|���+�*������)�������(���'�d�&�%�$�#�"&�!� ���3��?�K�Wbv������������������� "�+�������
�	
�H .sysoexecTEXT���     TEXT�G 0 username userName
�F .sysobeepnull��� ��� long
�E .sysodlogaskr        TEXT
�D 
prmp
�C .sysostflalis    ��� null
�B 
alis�A 0 buildfolder buildFolder�@ 
0 escape  
�? 
dtxt�> 0 locationquery locationQuery
�= 
ttxt�<  0 serverlocation serverLocation
�; 
ascr
�: 
txdl�9 0 oldtid oldTID
�8 
citm�7 "0 remote_username remote_userName
�6 
ret 
�5 
btns�4 0 thecheck theCheck
�3 
bhit�2  0 serverlocquery serverLocQuery�1 0 rootlocation rootLocation�0 0 checkno2 checkNo2
�/ .gtqpchltns    @   @ ns  
�. 
ctxt�- 0 os_query OS_Query�, 0 remote_xbmc_database  �+ 0 
indexquery 
indexQuery�* 0 	videoname 	videoName�) 0 	check_no2  �( 0 	waitquery 	waitQuery�' 0 thewait theWait
�& 
sdsk
�% 
pnam�$ 0 hd_name HD_name�# 0 addondir addonDir
�" 
cfol
�! 
TEXT
�  .coredoexbool        obj 
� 
kocl
� 
insh
� 
prdt� 
� .corecrel****      � null� 0 	moiraidir 	moiraiDir
� 
file� 0 	buildfile 	buildFile�  �  � 0 
thelicense 
theLicense�  0 server_to_host server_to_Host� 0 remote_updater  � 0 index_updater  �  0 host_to_server host_to_Server� 0 folderclearer folderClearer� 0 
scripttext 
scriptText
� 
perm
� .rdwropenshor       file�  0 open_buildfile open_buildFile
� 
refn
�
 .rdwrwritnull���     ****
�	 .rdwrclosnull���     ****�J�j E�O*j O�j O*��l �&E�OfE�O �h�e *j O����%l E` O_ a ,E` O_ a ,E` Oa _ a ,FO_ a k/E` O_ _ a ,FOa _ %_ %_ %_ %a %_ %_ %_ %a %a a a a  mvl E` !O_ !a ",a #  fE�Y _ !a ",a $  eE�Y h[OY�AOfE�O �h�e *j Oa %�a &a '%l E` (Oa )_ (a ,%E` *Oa +_ %_ %_ *%_ %_ %_ %a ,%a a -a .a /mvl E` 0O_ 0a ",a 1  fE�Y _ 0a ",a 2  eE�Y h[OY�pOa 3a 4a 5mv�a 6l 7a 8&E` 9O_ 9a :  a ;_ %a <%E` =Y ;_ 9a >  a ?_ %a @%E` =Y _ 9a A  a B_ %a C%E` =Y hOfE�O �h�e *j Oa D�a Ea F%l E` GO_ Ga ,E` HOa I_ %_ %_ H%_ %_ %_ %_ %a J%a a Ka La Mmvl E` NO_ Na ",a O  fE�Y _ 0a ",a P  eE�Y h[OY�pOa Q_ %_ %a R%a a Sa Tlvl E` UO_ Ua ",a V  a WE` XY 	a YE` XOa Z �*a [,a \,EE` ]O_ ]a ^%�%a _%�&E` `O_ `a aa ba c&/j d �*a ea aa f_ `a ga \a hla i jO_ `a aa ka c&/E` lO*a ea aa f_ la ga \a mla i jO*a ea na f_ la ga \a ola i jO*a ea na f_ la ga \a pla i jY hUOa Z "*a ea na f�a ga \a qla i jE` rUO a sj W X t uhO_ ra 8&E` rOa vE` wOa x�%a y%_ %a z%_ %a {%_ X%a |%E` }Oa ~E` Oa �_ H%a �%_ H%a �%_ H%a �%E` �Oa ��%a �%_ %_ *%a �%_ X%a �%�%a �%_ %_ *%a �%_ X%a �%�%a �%_ %_ *%a �%_ X%a �%E` �Oa �E` �O_ w_ %_ %_ }%_ %_ %_ %_ %_ %_ �%_ %_ %_ �%_ %_ %_ �%E` �O*a n_ r/a �el �E` �O_ �a �_ �l �O_ �j � ascr  ��ޭ