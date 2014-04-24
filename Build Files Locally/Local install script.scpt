FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
"Local install script"
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
 " L o c a l   i n s t a l l   s c r i p t " 
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
theNumbers��  ��     > ? > l    @���� @ r     A B A J     C C  D�� D m     E E � F F  -��   B o      ���� 0 numberlabel numberLabel��  ��   ?  G H G l    I���� I r     J K J J     L L  M�� M m     N N � O O   ��   K o      ���� 0 	thespaces 	theSpaces��  ��   H  P Q P l   $ R���� R r    $ S T S J      U U  V�� V m     W W � X X  :��   T o      ���� 0 	thecolons 	theColons��  ��   Q  Y Z Y l  % . [ \ ] [ r   % . ^ _ ^ J   % * ` `  a�� a m   % ( b b � c c  _��   _ o      ���� 0 	thedashes 	theDashes \ ; 5helpful for displaying names in html5 list generation    ] � d d j h e l p f u l   f o r   d i s p l a y i n g   n a m e s   i n   h t m l 5   l i s t   g e n e r a t i o n Z  e f e l  / 8 g h i g r   / 8 j k j J   / 4 l l  m�� m m   / 2 n n � o o  /��   k o      ���� *0 thenormalcharacters theNormalCharacters h ( "change ":" to "/" for html5 coding    i � p p D c h a n g e   " : "   t o   " / "   f o r   h t m l 5   c o d i n g f  q r q l     ��������  ��  ��   r  s t s l  9 > u���� u I  9 >������
�� .sysobeepnull��� ��� long��  ��  ��  ��   t  v w v l  ?4 x y z x O   ?4 { | { k   E3 } }  ~  ~ r   E [ � � � l  E W ����� � I  E W�� � �
�� .sysodlogaskr        TEXT � m   E H � � � � � ^ A r e   y o u   s u r e   y o u   w a n t   t o   d e l e t e   t h e   h t m l   f i l e s ? � �� ���
�� 
btns � J   K S � �  � � � m   K N � � � � �  y e s �  ��� � m   N Q � � � � �  n o��  ��  ��  ��   � o      ���� 0 htmldeletion htmlDeletion   � � � Z   \ � � ��� � � =  \ g � � � n   \ c � � � 1   _ c��
�� 
bhit � o   \ _���� 0 htmldeletion htmlDeletion � m   c f � � � � �  y e s � Q   j � � ��� � k   m � � �  � � � r   m v � � � I  m r������
�� .sysostflalis    ��� null��  ��   � o      ���� 0 targetfolder targetFolder �  � � � r   w � � � � n  w � � � � 2   ~ ���
�� 
cobj � n   w ~ � � � 1   z ~��
�� 
ects � o   w z���� 0 targetfolder targetFolder � o      ���� 0 allfiles allFiles �  ��� � X   � � ��� � � Z   � � � ����� � =  � � � � � n   � � � � � 1   � ���
�� 
nmxt � o   � ����� 0 afile aFile � m   � � � � � � �  h t m l � I  � ��� ���
�� .coredeloobj        obj  � o   � ����� 0 afile aFile��  ��  ��  �� 0 afile aFile � o   � ����� 0 allfiles allFiles��   � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��   � Z   � � ������� � =  � � � � � n   � � � � � 1   � ���
�� 
bhit � o   � ����� 0 htmldeletion htmlDeletion � m   � � � � � � �  n o��  ��  ��   �  � � � I  � �������
�� .sysobeepnull��� ��� long��  ��   �  � � � r   � � � � � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � � $ C l e a r   f o l d e r s   t o o ? � �� ���
�� 
btns � J   � � � �  � � � m   � � � � � � �  y e s �  ��� � m   � � � � � � �  n o��  ��   � o      ����  0 folderdeletion folderDeletion �  ��� � Z   �3 � ��� � � =  � � � � � n   � � � � � 1   � ���
�� 
bhit � o   � �����  0 folderdeletion folderDeletion � m   � � � � � � �  y e s � Q   � ��� � I �� ���
�� .coredeloobj        obj  � n  � � � 2  ��
�� 
cfol � n   � � � 1  ��
�� 
ects � o  ���� 0 targetfolder targetFolder��   � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��   � Z   3 ������� � =  + � � � n   ' � � � 1  #'��
�� 
bhit � o   #����  0 folderdeletion folderDeletion � m  '* � � � � �  n o��  ��  ��  ��   | m   ? B � ��                                                                                  MACS  alis    l  
Untitled 1                 ����H+   ��
Finder.app                                                      ǟM�        ����  	                CoreServices    ��.I      ǟ��     �� �t �s  1Untitled 1:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p   
 U n t i t l e d   1  &System/Library/CoreServices/Finder.app  / ��   y " end script 1, begin script 2    z � � � 8 e n d   s c r i p t   1 ,   b e g i n   s c r i p t   2 w  � � � l     ��������  ��  ��   �  � � � l 5: ����� � I 5:������
�� .miscactvnull��� ��� null��  ��  ��  ��   �  � � � l ;@ ����� � I ;@������
�� .sysobeepnull��� ��� long��  ��  ��  ��   �  � � � l AH ����� � I AH�� ���
�� .sysodlogaskr        TEXT � m  AD � � � � � * W h e r e   a r e   t h e   v i d e o s ?��  ��  ��   �  � � � l IR ����� � r  IR � � � I IN������
�� .sysostflalis    ��� null��  ��   � o      ���� 0 viddirectory vidDirectory��  ��   �  � � � l SX ����� � I SX������
�� .sysobeepnull��� ��� long��  ��  ��  ��   �    l Yo���� r  Yo I Yk��
�� .sysodlogaskr        TEXT m  Y\ � . W i l l   y o u   u s e   s u b t i t l e s ? �	�~
� 
btns	 J  _g

  m  _b �  Y e s �} m  be �  N o�}  �~   o      �|�| 0 presubquery preSubQuery��  ��    l p��{�z Z  p��y�x = p{ n  pw 1  sw�w
�w 
bhit o  ps�v�v 0 presubquery preSubQuery m  wz �  Y e s k  ~�  r  ~� !  J  ~�"" #$# m  ~�%% �&&  . s r t$ '(' m  ��)) �**  . t x t( +,+ m  ��-- �..  . m k s, /�u/ m  ��00 �11  . v t t�u  ! o      �t�t 0 extensionlist extensionList 232 r  ��454 c  ��676 l ��8�s�r8 I ���q9:
�q .gtqpchltns    @   @ ns  9 o  ���p�p 0 extensionlist extensionList: �o;<
�o 
prmp; m  ��== �>> J W h a t   s u b t i t l e   f i l e   t y p e   w i l l   y o u   u s e ?< �n?�m
�n 
mlsl? m  ���l
�l boovfals�m  �s  �r  7 m  ���k
�k 
ctxt5 o      �j�j 0 subtypequery subTypeQuery3 @A@ r  �mBCB J  �iDD EFE m  ��GG �HH   a b   - -   A b k h a z i a n .F IJI m  ��KK �LL  a a   - -   A f a r .J MNM m  ��OO �PP   a f   - -   A f r i k a a n s .N QRQ m  ��SS �TT  s q   - -   A l b a n i a n .R UVU m  ��WW �XX  a m   - -   A m h a r i c .V YZY m  ��[[ �\\  a r   - -   A r a b i c .Z ]^] m  ��__ �``   a n   - -   A r a g o n e s e .^ aba m  ��cc �dd  h y   - -   A r m e n i a n .b efe m  ��gg �hh  a s   - -   A s s a m e s e .f iji m  ��kk �ll  a y   - -   A y m a r a .j mnm m  ��oo �pp $ a z   - -   A z e r b a i j a n i .n qrq m  ��ss �tt  b a   - -   B a s h k i r .r uvu m  ��ww �xx  e u   - -   B a s q u e .v yzy m  ��{{ �||  b n   - -   B e n g a l i .z }~} m  �� ���  d z   - -   B h u t a n i .~ ��� m  ���� ���  b h   - -   B i h a r i .� ��� m  ���� ���  b i   - -   B i s l a m a .� ��� m  ���� ���  b r   - -   B r e t o n .� ��� m  ���� ���   b g   - -   B u l g a r i a n .� ��� m  ���� ���  m y   - -   B u r m e s e .� ��� m  ���� ��� & b e   - -   B y e l o r u s s i a n .� ��� m  ���� ���   k m   - -   C a m b o d i a n .� ��� m  ���� ���  c a   - -   C a t a l a n .� ��� m  ���� ���  z h   - -   C h i n e s e .� ��� m  ���� ���  z h   - -   C h i n e s e .� ��� m  ���� ���  c o   - -   C o r s i c a n .� ��� m  � �� ���  h r   - -   C r o a t i a n .� ��� m   �� ���  c s   - -   C z e c h .� ��� m  �� ���  d a   - -   D a n i s h .� ��� m  	�� ���  n l   - -   D u t c h .� ��� m  	�� ���  e n   - -   E n g l i s h .� ��� m  �� ���   e o   - -   E s p e r a n t o .� ��� m  �� ���  e t   - -   E s t o n i a n .� ��� m  �� ���  f o   - -   F a e r o e s e .� ��� m  �� ���  f a   - -   F a r s i .� ��� m  �� ���  f j   - -   F i j i .� ��� m  �� ���  f i   - -   F i n n i s h .� ��� m  !�� ���  f r   - -   F r e n c h .� ��� m  !$�� ���  f y   - -   F r i s i a n .� ��� m  $'�� ���  g l   - -   G a l i c i a n .� ��� m  '*�� ���  g d   - -   G a e l i c .� ��� m  *-�� ���  g v   - -   G a e l i c .� ��� m  -0�� ���  k a   - -   G e o r g i a n .� ��� m  03�� ���  d e   - -   G e r m a n .� ��� m  36�� ���  e l   - -   G r e e k .� ��� m  69�� ��� $ k l   - -   G r e e n l a n d i c .� ��� m  9<�� �    g n   - -   G u a r a n i .�  m  <? �  g u   - -   G u j a r a t i .  m  ?B � * h t   - -   H a i t i a n   C r e o l e . 	
	 m  BE �  h a   - -   H a u s a .
  m  EH �  h e   - -   H e b r e w .  m  HK �  h i   - -   H i n d i .  m  KN �   h u   - -   H u n g a r i a n .  m  NQ �   i s   - -   I c e l a n d i c .  m  QT �    i o   - -   I d o . !"! m  TW## �$$ " i d   - -   I n d o n e s i a n ." %&% m  WZ'' �(( $ i a   - -   I n t e r l i n g u a .& )*) m  Z]++ �,, $ i e   - -   I n t e r l i n g u e .* -.- m  ]`// �00   i u   - -   I n u k t i t u t .. 121 m  `c33 �44  i k   - -   I n u p i a k .2 565 m  cf77 �88  g a   - -   I r i s h .6 9:9 m  fi;; �<<  i t   - -   I t a l i a n .: =>= m  il?? �@@  j a   - -   J a p a n e s e .> ABA m  loCC �DD  j v   - -   J a v a n e s e .B EFE m  orGG �HH  k n   - -   K a n n a d a .F IJI m  ruKK �LL  k s   - -   K a s h m i r i .J MNM m  uxOO �PP  k k   - -   K a z a k h .N QRQ m  x{SS �TT $ r w   - -   K i n y a r w a n d a .R UVU m  {~WW �XX  k y   - -   K i r g h i z .V YZY m  ~�[[ �\\  r n   - -   K i r u n d i .Z ]^] m  ��__ �``  k o   - -   K o r e a n .^ aba m  ��cc �dd  k u   - -   K u r d i s h .b efe m  ��gg �hh  l o   - -   L a o t h i a n .f iji m  ��kk �ll  l a   - -   L a t i n .j mnm m  ��oo �pp  l v   - -   L a t v i a n .n qrq m  ��ss �tt " l i   - -   L i m b u r g i s h .r uvu m  ��ww �xx  l n   - -   L i n g a l a .v yzy m  ��{{ �|| " l t   - -   L i t h u a n i a n .z }~} m  �� ��� " m k   - -   M a c e d o n i a n .~ ��� m  ���� ���  m g   - -   M a l a g a s y .� ��� m  ���� ���  m s   - -   M a l a y .� ��� m  ���� ���   m l   - -   M a l a y a l a m .� ��� m  ���� ���  m t   - -   M a l t e s e .� ��� m  ���� ���  m i   - -   M a o r i .� ��� m  ���� ���  m r   - -   M a r a t h i .� ��� m  ���� ���   m o   - -   M o l d a v i a n .� ��� m  ���� ���   m n   - -   M o n g o l i a n .� ��� m  ���� ���  n a   - -   N a u r u .� ��� m  ���� ���  n e   - -   N e p a l i .� ��� m  ���� ���   n o   - -   N o r w e g i a n .� ��� m  ���� ���  o c   - -   O c c i t a n .� ��� m  ���� ���  o r   - -   O r i y a .� ��� m  ���� ���  o m   - -   O r o m o .� ��� m  ���� ���  p s   - -   P a s h t o .� ��� m  ���� ���  p l   - -   P o l i s h .� ��� m  ���� ��� " p t   - -   P o r t u g u e s e .� ��� m  ���� ���  p a   - -   P u n j a b i .� ��� m  ���� ���  q u   - -   Q u e c h u a .� ��� m  ���� ��� * r m   - -   R h a e t o - R o m a n c e .� ��� m  ���� ���  r o   - -   R o m a n i a n .� ��� m  ���� ���  r u   - -   R u s s i a n .� ��� m  ���� ���  s m   - -   S a m o a n .� ��� m  ���� ���  s g   - -   S a n g r o .� ��� m  ���� ���  s a   - -   S a n s k r i t .� ��� m  ���� ���  s r   - -   S e r b i a n .� ��� m  ���� ��� * s h   - -   S e r b o - C r o a t i a n .� ��� m  ���� ���  s t   - -   S e s o t h o .� ��� m  ���� ���  t n   - -   S e t s w a n a .� ��� m  ���� ���  s n   - -   S h o n a .� ��� m  ���� ��� " i i   - -   S i c h u a n   Y i .� ��� m  ���� �    s d   - -   S i n d h i .�  m  �� �   s i   - -   S i n h a l e s e .  m  � �  s s   - -   S i s w a t i . 	
	 m   �  s k   - -   S l o v a k .
  m   �   s l   - -   S l o v e n i a n .  m   �  s o   - -   S o m a l i .  m   �  e s   - -   S p a n i s h .  m   �   s u   - -   S u n d a n e s e .  m   �    s w   - -   S w a h i l i . !"! m  ## �$$  s v   - -   S w e d i s h ." %&% m  '' �((  t l   - -   T a g a l o g .& )*) m  ++ �,,  t g   - -   T a j i k .* -.- m   // �00  t a   - -   T a m i l .. 121 m   #33 �44  t t   - -   T a t a r .2 565 m  #&77 �88  t e   - -   T e l u g u .6 9:9 m  &);; �<<  t h   - -   T h a i .: =>= m  ),?? �@@  b o   - -   T i b e t a n .> ABA m  ,/CC �DD  t i   - -   T i g r i n y a .B EFE m  /2GG �HH  t o   - -   T o n g a .F IJI m  25KK �LL  t s   - -   T s o n g a .J MNM m  58OO �PP  t r   - -   T u r k i s h .N QRQ m  8;SS �TT  t k   - -   T u r k m e n .R UVU m  ;>WW �XX  t w   - -   T w i .V YZY m  >A[[ �\\  u g   - -   U i g h u r .Z ]^] m  AD__ �``   u k   - -   U k r a i n i a n .^ aba m  DGcc �dd  u r   - -   U r d u .b efe m  GJgg �hh  u z   - -   U z b e k .f iji m  JMkk �ll " v i   - -   V i e t n a m e s e .j mnm m  MPoo �pp  v o   - -   V o l a p � k .n qrq m  PSss �tt  w a   - -   W a l l o n .r uvu m  SVww �xx  c y   - -   W e l s h .v yzy m  VY{{ �||  w o   - -   W o l o f .z }~} m  Y\ ���  x h   - -   X h o s a .~ ��� m  \_�� ���  y i   - -   Y i d d i s h .� ��� m  _b�� ���  y o   - -   Y o r u b a .� ��i� m  be�� ���  z u   - -   Z u l u .�i  C o      �h�h 0 subtitlequery subtitleQueryA ��g� r  n���� c  n���� l n���f�e� I n��d��
�d .gtqpchltns    @   @ ns  � o  nq�c�c 0 subtitlequery subtitleQuery� �b��
�b 
prmp� m  tw�� ��� d W h i c h   s u b t i t l e   l a n g a u g e s   w i l l   y o u   u s e ?   (#   +   c l i c k )� �a��`
�a 
mlsl� m  z{�_
�_ boovtrue�`  �f  �e  � m  ���^
�^ 
ctxt� o      �]�] 0 
menuchoice 
menuChoice�g  �y  �x  �{  �z   ��� l ����\�[� I ���Z�Y�X
�Z .sysobeepnull��� ��� long�Y  �X  �\  �[  � ��� l ����W�V� I ���U��T
�U .sysodlogaskr        TEXT� m  ���� ���  W h e r e   t o   b u i l d ?�T  �W  �V  � ��� l ����S�R� r  ����� I ���Q�P�O
�Q .sysostflalis    ��� null�P  �O  � o      �N�N 0 dumpdirectory dumpDirectory�S  �R  � ��� l �]��M�L� O  �]��� k  �\�� ��� r  ����� I ���K��
�K .sysodlogaskr        TEXT� m  ���� ��� 6 I s   t h i s   a   T V   S h o w   o r   M o v i e ?� �J��I
�J 
btns� J  ���� ��� m  ���� ���  T V   S h o w� ��H� m  ���� ��� 
 M o v i e�H  �I  � o      �G�G 0 mediachoice mediaChoice� ��F� Z  �\���E�� = ����� n  ����� 1  ���D
�D 
bhit� o  ���C�C 0 mediachoice mediaChoice� m  ���� ���  T V   S h o w� k  �U�� ��� l ������ r  ����� n ����� 2 ���B
�B 
cfol� o  ���A�A 0 viddirectory vidDirectory� o      �@�@ 0 showlist showList� 5 /changes title of each video file for later step   � ��� ^ c h a n g e s   t i t l e   o f   e a c h   v i d e o   f i l e   f o r   l a t e r   s t e p� ��� X  �S��?�� k  �N�� ��� r  � ��� c  ����� n  ����� 1  ���>
�> 
pnam� o  ���=�= 0 ashow aShow� m  ���<
�< 
ctxt� o      �;�; 0 showname showName� ��� r  
��� n ��� 2  �:
�: 
file� o  �9�9 0 ashow aShow� o      �8�8 0 episodelist episodeList� ��7� X  N��6�� l !I���� k  !I�� ��� r  !.��� c  !*��� n  !&��� 1  "&�5
�5 
pnam� o  !"�4�4 0 	anepisode 	anEpisode� m  &)�3
�3 
ctxt� o      �2�2 "0 semiepisodename semiEpisodeName� ��1� Z  /I���0�/� H  /7�� D  /6��� o  /2�.�. "0 semiepisodename semiEpisodeName� m  25�� ���  . n f o� l :E���� k  :E    r  :G b  :C m  := �  . n  =B	
	 1  >B�-
�- 
nmxt
 o  =>�,�, 0 	anepisode 	anEpisode o      �+�+ 0 theextension theExtension  r  Ho n  Hk 7 Kk�*
�* 
ctxt m  QS�)�)  l 
Tj�(�' l Tj�&�% \  Tj l Uh�$�# I Uh�"�!
�" .sysooffslong    ��� null�!   � 
�  
psof o  Y\�� 0 theextension theExtension ��
� 
psin o  _b�� "0 semiepisodename semiEpisodeName�  �$  �#   m  hi�� �&  �%  �(  �'   o  HK�� "0 semiepisodename semiEpisodeName o      �� 0 episodename episodeName  l pp��   ? 9 This part will build the folders to hold the webpages :D    �   r   T h i s   p a r t   w i l l   b u i l d   t h e   f o l d e r s   t o   h o l d   t h e   w e b p a g e s   : D !"! l pp����  �  �  " #$# r  p{%&% m  ps'' �((  .& n     )*) 1  vz�
� 
txdl* 1  sv�
� 
ascr$ +,+ r  |�-.- m  |// �00  A - Z M e n u. o      �� 0 
azmenuname 
azMenuName, 121 r  ��343 c  ��565 n  ��787 4 ���9
� 
cha 9 m  ���� 8 o  ���� 0 showname showName6 m  ���
� 
ctxt4 o      �� 0 
lettername 
letterName2 :;: r  ��<=< c  ��>?> n  ��@A@ 4  ���B
� 
citmB m  ���� A o  ���
�
 0 episodename episodeName? m  ���	
�	 
ctxt= o      �� 0 
seasonname 
seasonName; CDC Q  ��EF�E k  ��GG HIH l ��JKLJ r  ��MNM o  ���� 0 
lettername 
letterNameN o      �� 0 	oldletter 	oldLetterK  test for number   L �OO  t e s t   f o r   n u m b e rI PQP r  ��RSR m  ���
� 
nmbrS o      �� 0 
lettername 
letterNameQ TUT r  ��VWV m  ���
� boovtrueW o      �� 0 numtest numTestU X� X r  ��YZY o  ������ 0 	oldletter 	oldLetterZ o      ���� 0 
lettername 
letterName�   F R      ������
�� .ascrerr ****      � ****��  ��  �  D [\[ Z  ��]^����] = ��_`_ o  ������ 0 numtest numTest` m  ����
�� boovtrue^ l ��abca r  ��ded n ��fgf I  ����h���� $0 numbercorrection numberCorrectionh i��i o  ������ 0 
lettername 
letterName��  ��  g  f  ��e o      ���� 0 
lettername 
letterNameb  convert number to "Num"   c �jj . c o n v e r t   n u m b e r   t o   " N u m "��  ��  \ klk Z  �4mn��om l ��p����p I ����q��
�� .coredoexbool        obj q n ��rsr 4  ����t
�� 
cfolt l ��u����u c  ��vwv o  ������ 0 
azmenuname 
azMenuNamew m  ����
�� 
TEXT��  ��  s o  ������ 0 dumpdirectory dumpDirectory��  ��  ��  n r  �xyx n �z{z 5  ��|��
�� 
cfol| o  ���� 0 
azmenuname 
azMenuName
�� kfrmname{ o  ����� 0 dumpdirectory dumpDirectoryy o      ���� 0 alphafolder alphaFolder��  o r  4}~} I 0����
�� .corecrel****      � null��   ����
�� 
kocl� m  ��
�� 
cfol� ����
�� 
insh� o  ���� 0 dumpdirectory dumpDirectory� �����
�� 
prdt� K  "*�� �����
�� 
pnam� o  %(���� 0 
azmenuname 
azMenuName��  ��  ~ o      ���� 0 alphafolder alphaFolderl ��� Z  5������� l 5G������ I 5G�����
�� .coredoexbool        obj � n 5C��� 4  8C���
�� 
cfol� l ;B������ c  ;B��� o  ;>���� 0 
lettername 
letterName� m  >A��
�� 
TEXT��  ��  � o  58���� 0 alphafolder alphaFolder��  ��  ��  � r  J[��� n JW��� 5  MW�����
�� 
cfol� o  PS���� 0 
lettername 
letterName
�� kfrmname� o  JM���� 0 alphafolder alphaFolder� o      ���� 0 letterfolder letterFolder��  � r  ^���� I ^|�����
�� .corecrel****      � null��  � ����
�� 
kocl� m  be��
�� 
cfol� ����
�� 
insh� o  hk���� 0 alphafolder alphaFolder� �����
�� 
prdt� K  nv�� �����
�� 
pnam� o  qt���� 0 
lettername 
letterName��  ��  � o      ���� 0 letterfolder letterFolder� ��� Z  �������� l �������� I �������
�� .coredoexbool        obj � n ����� 4  �����
�� 
cfol� l �������� c  ����� o  ������ 0 showname showName� m  ����
�� 
TEXT��  ��  � o  ������ 0 letterfolder letterFolder��  ��  ��  � r  ����� n ����� 5  �������
�� 
cfol� o  ������ 0 showname showName
�� kfrmname� o  ������ 0 letterfolder letterFolder� o      ���� 0 
showfolder 
showFolder��  � r  ����� I �������
�� .corecrel****      � null��  � ����
�� 
kocl� m  ����
�� 
cfol� ����
�� 
insh� o  ������ 0 letterfolder letterFolder� �����
�� 
prdt� K  ���� �����
�� 
pnam� o  ������ 0 showname showName��  ��  � o      ���� 0 
showfolder 
showFolder� ��� Z  ������� l �������� I �������
�� .coredoexbool        obj � n ����� 4  �����
�� 
cfol� l �������� c  ����� o  ������ 0 
seasonname 
seasonName� m  ����
�� 
TEXT��  ��  � o  ������ 0 
showfolder 
showFolder��  ��  ��  � r  ����� n ����� 5  �������
�� 
cfol� o  ������ 0 
seasonname 
seasonName
�� kfrmname� o  ������ 0 
showfolder 
showFolder� o      ���� 0 seasonfolder seasonFolder��  � r  ���� I ������
�� .corecrel****      � null��  � ����
�� 
kocl� m  ����
�� 
cfol� ����
�� 
insh� o   ���� 0 
showfolder 
showFolder� �����
�� 
prdt� K  �� �����
�� 
pnam� o  	���� 0 
seasonname 
seasonName��  ��  � o      ���� 0 seasonfolder seasonFolder� ���� Q  E����� l <���� Z  <���~�� l *��}�|� I *�{��z
�{ .coredoexbool        obj � n &��� 4  &�y�
�y 
file� l "%��x�w� o  "%�v�v 0 episodename episodeName�x  �w  � o  �u�u 0 seasonfolder seasonFolder�z  �}  �|  �  �~  � I 1<�t��
�t .coremoveobj        obj � o  12�s�s 0 	anepisode 	anEpisode� �r��q
�r 
insh� o  58�p�p 0 seasonfolder seasonFolder�q  � 3 -done to prevent duplicates from being entered   � ��� Z d o n e   t o   p r e v e n t   d u p l i c a t e s   f r o m   b e i n g   e n t e r e d� R      �o�n�m
�o .ascrerr ****      � ****�n  �m  ��  ��  � % Keeps .nfo files in their place   � ��� > K e e p s   . n f o   f i l e s   i n   t h e i r   p l a c e�0  �/  �1  �  below changes the name   � ��� , b e l o w   c h a n g e s   t h e   n a m e�6 0 	anepisode 	anEpisode� o  �l�l 0 episodelist episodeList�7  �? 0 ashow aShow� o  ���k�k 0 showlist showList� ��j� l TT�i�h�g�i  �h  �g  �j  �E  � Z  X\���f�e� = Xc��� n  X_��� 1  [_�d
�d 
bhit� o  X[�c�c 0 mediachoice mediaChoice� m  _b�� ��� 
 M o v i e� k  fX�� ��� r  fm��� m  fi�� ���  A - Z M e n u� o      �b�b 0 
azmenuname 
azMenuName� � � l n} r  n} n ny 2  uy�a
�a 
file n  nu	 1  qu�`
�` 
ects	 o  nq�_�_ 0 viddirectory vidDirectory o      �^�^ 0 allvids allVids + %builds directory based on video title    �

 J b u i l d s   d i r e c t o r y   b a s e d   o n   v i d e o   t i t l e  �] X  ~X�\ k  �S  r  �� c  �� n  �� 1  ���[
�[ 
pnam o  ���Z�Z 0 avid aVid m  ���Y
�Y 
ctxt o      �X�X 0 alabel aLabel �W Z  �S�V�U H  �� D  �� o  ���T�T 0 alabel aLabel m  �� �  . n f o l �O ! k  �O"" #$# r  ��%&% n  ��'(' 4  ���S)
�S 
cha ) m  ���R�R ( o  ���Q�Q 0 alabel aLabel& o      �P�P 0 lettertitle letterTitle$ *+* r  ��,-, n  ��./. 7 ���O01
�O 
ctxt0 m  ���N�N 1 l ��2�M�L2 \  ��343 l ��5�K�J5 I ���I�H6
�I .sysooffslong    ��� null�H  6 �G78
�G 
psof7 m  ��99 �::  .8 �F;�E
�F 
psin; o  ���D�D 0 alabel aLabel�E  �K  �J  4 m  ���C�C �M  �L  / o  ���B�B 0 alabel aLabel- o      �A�A 0 	showtitle 	showTitle+ <=< r  ��>?> n ��@A@ I  ���@B�?�@ 0 replace_chars  B CDC o  ���>�> 0 	showtitle 	showTitleD EFE m  ��GG �HH   F I�=I m  ��JJ �KK  _�=  �?  A  f  ��? o      �<�< 0 	showtitle 	showTitle= LML Q  �NO�;N k  �PP QRQ l ��STUS r  ��VWV o  ���:�: 0 lettertitle letterTitleW o      �9�9 0 	oldletter 	oldLetterT  test for number   U �XX  t e s t   f o r   n u m b e rR YZY r   [\[ m   �8
�8 
nmbr\ o      �7�7 0 lettertitle letterTitleZ ]^] r  _`_ m  	�6
�6 boovtrue` o      �5�5 0 numtest numTest^ a�4a r  bcb o  �3�3 0 	oldletter 	oldLetterc o      �2�2 0 lettertitle letterTitle�4  O R      �1�0�/
�1 .ascrerr ****      � ****�0  �/  �;  M ded Z  7fg�.�-f = $hih o  "�,�, 0 numtest numTesti m  "#�+
�+ boovtrueg l '3jklj r  '3mnm n '/opo I  (/�*q�)�* $0 numbercorrection numberCorrectionq r�(r o  (+�'�' 0 lettertitle letterTitle�(  �)  p  f  '(n o      �&�& 0 lettertitle letterTitlek  convert number to "Num"   l �ss . c o n v e r t   n u m b e r   t o   " N u m "�.  �-  e tut Z  8�vw�%xv l 8Jy�$�#y I 8J�"z�!
�" .coredoexbool        obj z n 8F{|{ 4  ;F� }
�  
cfol} l >E~��~ c  >E� o  >A�� 0 
azmenuname 
azMenuName� m  AD�
� 
TEXT�  �  | o  8;�� 0 dumpdirectory dumpDirectory�!  �$  �#  w r  M^��� n MZ��� 5  PZ���
� 
cfol� o  SV�� 0 
azmenuname 
azMenuName
� kfrmname� o  MP�� 0 dumpdirectory dumpDirectory� o      �� 0 alphafolder alphaFolder�%  x r  a���� I a���
� .corecrel****      � null�  � ���
� 
kocl� m  eh�
� 
cfol� ���
� 
insh� o  kn�� 0 dumpdirectory dumpDirectory� ���
� 
prdt� K  qy�� ���
� 
pnam� o  tw�� 0 
azmenuname 
azMenuName�  �  � o      �
�
 0 alphafolder alphaFolderu ��� Z  �����	�� l ������ I �����
� .coredoexbool        obj � n ����� 4  ����
� 
cfol� l ������ c  ����� o  ���� 0 lettertitle letterTitle� m  ��� 
�  
TEXT�  �  � o  ������ 0 alphafolder alphaFolder�  �  �  � r  ����� n ����� 5  �������
�� 
cfol� o  ������ 0 lettertitle letterTitle
�� kfrmname� o  ������ 0 alphafolder alphaFolder� o      ���� 0 letterfolder letterFolder�	  � k  ���� ��� I �������
�� .corecrel****      � null��  � ����
�� 
kocl� m  ����
�� 
cfol� ����
�� 
insh� o  ������ 0 alphafolder alphaFolder� �����
�� 
prdt� K  ���� �����
�� 
pnam� o  ������ 0 lettertitle letterTitle��  ��  � ���� r  ����� n ����� 5  �������
�� 
cfol� o  ������ 0 lettertitle letterTitle
�� kfrmname� o  ������ 0 alphafolder alphaFolder� o      ���� 0 letterfolder letterFolder��  � ��� Z  �7������ l �������� I �������
�� .coredoexbool        obj � n ����� 4  �����
�� 
cfol� l �������� c  ����� o  ������ 0 	showtitle 	showTitle� m  ����
�� 
TEXT��  ��  � o  ������ 0 letterfolder letterFolder��  ��  ��  � r  ���� n � ��� 5  � �����
�� 
cfol� o  ������ 0 	showtitle 	showTitle
�� kfrmname� o  ������ 0 letterfolder letterFolder� o      ���� 0 
showfolder 
showFolder��  � k  7�� ��� I %�����
�� .corecrel****      � null��  � ����
�� 
kocl� m  ��
�� 
cfol� ����
�� 
insh� o  ���� 0 letterfolder letterFolder� �����
�� 
prdt� K  �� �����
�� 
pnam� o  ���� 0 	showtitle 	showTitle��  ��  � ���� r  &7��� n &3��� 5  )3�����
�� 
cfol� o  ,/���� 0 	showtitle 	showTitle
�� kfrmname� o  &)���� 0 letterfolder letterFolder� o      ���� 0 
showfolder 
showFolder��  � ���� Q  8O����� l ;F���� I ;F����
�� .coremoveobj        obj � o  ;<���� 0 avid aVid� �����
�� 
insh� o  ?B���� 0 
showfolder 
showFolder��  � 3 -done to prevent duplicates from being entered   � ��� Z d o n e   t o   p r e v e n t   d u p l i c a t e s   f r o m   b e i n g   e n t e r e d� R      ������
�� .ascrerr ****      � ****��  ��  ��  ��    % Keeps .nfo files in their place   ! ��� > K e e p s   . n f o   f i l e s   i n   t h e i r   p l a c e�V  �U  �W  �\ 0 avid aVid o  ������ 0 allvids allVids�]  �f  �e  �F  � m  �����                                                                                  MACS  alis    l  
Untitled 1                 ����H+   ��
Finder.app                                                      ǟM�        ����  	                CoreServices    ��.I      ǟ��     �� �t �s  1Untitled 1:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p   
 U n t i t l e d   1  &System/Library/CoreServices/Finder.app  / ��  �M  �L  � ��� l ^k������ r  ^k��� J  ^c�� ���� m  ^a�� ���  ��  � n     ��� 1  fj��
�� 
txdl� 1  cf��
�� 
ascr��  ��  � ��� l     ������  � " end script 2, begin script 3   � ��� 8 e n d   s c r i p t   2 ,   b e g i n   s c r i p t   3� ��� l     ��������  ��  ��  � ��� l l������� O  l���� l r����� Z  r������� = r}� � n  ry 1  uy��
�� 
bhit o  ru���� 0 mediachoice mediaChoice  m  y| �  T V   S h o w� k  �Q  l ��	
 r  �� J  ������   o      ����  0 createdletters createdLetters	 . ( used for determining letters at the end   
 � P   u s e d   f o r   d e t e r m i n i n g   l e t t e r s   a t   t h e   e n d  r  �� n  �� 1  ����
�� 
pnam o  ������ 0 dumpdirectory dumpDirectory o      ���� 0 tvname tvName  l �� r  �� n �� 2 ����
�� 
cfol o  ������ 0 dumpdirectory dumpDirectory o      ���� 0 azlist azList ) #NEEDED FOR HEIRARCHY DON'T ERASE!!!    � F N E E D E D   F O R   H E I R A R C H Y   D O N ' T   E R A S E ! ! !  X  �� ��!  k  ��"" #$# r  ��%&% n  ��'(' 1  ����
�� 
pnam( o  ������ 0 azmenu azMenu& o      ���� 0 
azmenuname 
azMenuName$ )*) r  ��+,+ n ��-.- 2 ����
�� 
cfol. o  ������ 0 azmenu azMenu, o      ���� 0 
letterlist 
letterList* /0/ l �F1231 X  �F4��54 k  �A66 787 r  ��9:9 n  ��;<; 1  ����
�� 
pnam< o  ������ 0 aletter aLetter: o      ���� 0 
lettername 
letterName8 =>= l ��?@A? s  ��BCB o  ������ 0 
lettername 
letterNameC n      DED  ;  ��E o  ������  0 createdletters createdLetters@ ! used for letters at the end   A �FF 6 u s e d   f o r   l e t t e r s   a t   t h e   e n d> GHG r  ��IJI n ��KLK 2 ����
�� 
cfolL o  ������ 0 aletter aLetterJ o      ���� 0 showlist showListH MNM X  ��O��PO k  	�QQ RSR r  		TUT n  		VWV 1  		��
�� 
pnamW o  		���� 0 ashow aShowU o      ���� 0 showname showNameS XYX r  		%Z[Z n 		!\]\ 2 		!��
�� 
cfol] o  		���� 0 ashow aShow[ o      ���� 0 
seasonlist 
seasonListY ^_^ X  	&,`��a` k  	<'bb cdc r  	<	Eefe n  	<	Aghg 1  	=	A��
�� 
pnamh o  	<	=���� 0 aseason aSeasonf o      ���� 0 
seasonname 
seasonNamed iji r  	F	Oklk n 	F	Kmnm 2 	G	K��
�� 
filen o  	F	G���� 0 aseason aSeasonl o      ���� 0 episodelist episodeListj opo l 	P6qrsq X  	P6t��ut k  	f1vv wxw Z  	f
�yz����y >  	f	o{|{ n  	f	k}~} 1  	g	k��
�� 
nmxt~ o  	f	g���� 0 	anepisode 	anEpisode| m  	k	n ���  h t m lz l 	r
����� k  	r
��� ��� r  	r	}��� m  	r	u�� ���  .� n     ��� 1  	x	|��
�� 
txdl� 1  	u	x��
�� 
ascr� ��� r  	~	���� n  	~	���� 1  		���
�� 
pnam� o  	~	���� 0 	anepisode 	anEpisode� o      �� 0 episodename episodeName� ��� l 	�	����� r  	�	���� o  	�	��~�~ 0 episodename episodeName� o      �}�} "0 origepisodename origEpisodeName�  backup of the name!   � ��� & b a c k u p   o f   t h e   n a m e !� ��� r  	�	���� n 	�	���� I  	�	��|��{�| 0 replace_chars  � ��� o  	�	��z�z 0 episodename episodeName� ��� m  	�	��� ���   � ��y� m  	�	��� ���  _�y  �{  �  f  	�	�� o      �x�x 0 episodename episodeName� ��� r  	�	���� n  	�	���� 1  	�	��w
�w 
nmxt� o  	�	��v�v 0 	anepisode 	anEpisode� o      �u�u $0 episodeextension episodeExtension� ��� r  	�	���� n  	�	���� 7 	�	��t��
�t 
ctxt� m  	�	��s�s � l 	�	���r�q� \  	�	���� l 	�	���p�o� I 	�	��n�m�
�n .sysooffslong    ��� null�m  � �l��
�l 
psof� l 
	�	���k�j� o  	�	��i�i $0 episodeextension episodeExtension�k  �j  � �h��g
�h 
psin� o  	�	��f�f "0 origepisodename origEpisodeName�g  �p  �o  � m  	�	��e�e �r  �q  � o  	�	��d�d "0 origepisodename origEpisodeName� o      �c�c (0 actualepisodetitle actualEpisodeTitle� ��� r  	�	���� n  	�	���� 7 	�	��b��
�b 
ctxt� m  	�	��a�a � l 	�	���`�_� \  	�	���� l 	�	���^�]� I 	�	��\�[�
�\ .sysooffslong    ��� null�[  � �Z��
�Z 
psof� o  	�	��Y�Y $0 episodeextension episodeExtension� �X��W
�X 
psin� o  	�	��V�V 0 episodename episodeName�W  �^  �]  � m  	�	��U�U �`  �_  � o  	�	��T�T 0 episodename episodeName� o      �S�S 0 episodetitle episodeTitle� ��� r  	�
��� b  	�
��� o  	�
 �R�R 0 episodetitle episodeTitle� m  
 
�� ���  h t m l� o      �Q�Q 0 docname docName� ��P� Z  
	
����O�N� >  
	
��� n  
	
��� 1  


�M
�M 
nmxt� o  
	

�L�L 0 	anepisode 	anEpisode� m  

�� ���  h t m l� l 

����� Z  

����K�� J  

%�� ��J� I 

#�I��H
�I .coredoexbool        obj � n 

��� 4  

�G�
�G 
cfol� l 

��F�E� o  

�D�D 0 showname showName�F  �E  � o  

�C�C 0 viddirectory vidDirectory�H  �J  � k  
(
N�� ��� r  
(
6��� n 
(
2��� 4  
+
2�B�
�B 
cfol� l 
.
1��A�@� o  
.
1�?�? 0 showname showName�A  �@  � o  
(
+�>�> 0 viddirectory vidDirectory� o      �=�= 0 altshow altShow� ��� l 
7
B���� I 
7
B�<��
�< .coremoveobj        obj � o  
7
8�;�; 0 	anepisode 	anEpisode� �: �9
�: 
insh  o  
;
>�8�8 0 altshow altShow�9  � $ move to Season in vidDirectory   � � < m o v e   t o   S e a s o n   i n   v i d D i r e c t o r y� �7 r  
C
N c  
C
J o  
C
F�6�6 0 altshow altShow m  
F
I�5
�5 
ctxt o      �4�4 0 
currentloc 
currentLoc�7  �K  � k  
Q
� 	 Q  
Q

�3
 r  
T
v I 
T
r�2�1
�2 .corecrel****      � null�1   �0
�0 
kocl m  
X
[�/
�/ 
cfol �.
�. 
insh o  
^
a�-�- 0 viddirectory vidDirectory �,�+
�, 
prdt K  
d
l �*�)
�* 
pnam o  
g
j�(�( 0 showname showName�)  �+   o      �'�' 0 altshow altShow R      �&�%�$
�& .ascrerr ****      � ****�%  �$  �3  	  I 
�
��#
�# .coremoveobj        obj  o  
�
��"�" 0 	anepisode 	anEpisode �!� 
�! 
insh o  
�
��� 0 altshow altShow�    � r  
�
� c  
�
� o  
�
��� 0 altshow altShow m  
�
��
� 
ctxt o      �� 0 
currentloc 
currentLoc�  � ; 5move anEpisode to vidDirectory and rebuild filesystem   � �   j m o v e   a n E p i s o d e   t o   v i d D i r e c t o r y   a n d   r e b u i l d   f i l e s y s t e m�O  �N  �P  �  avoid html files   � �!!   a v o i d   h t m l   f i l e s��  ��  x "#" l 
�
�$%&$ r  
�
�'(' n  
�
�)*) m  
�
��
� 
cfol* o  
�
��� 0 dumpdirectory dumpDirectory( o      �� 0 	parentfol 	parentFol% &  used as a delimiter! (mwahahaha)   & �++ @ u s e d   a s   a   d e l i m i t e r !   ( m w a h a h a h a )# ,-, r  
�
�./. n  
�
�010 1  
�
��
� 
pnam1 o  
�
��� 0 	parentfol 	parentFol/ o      �� 0 
parentname 
parentName- 232 r  
�
�454 c  
�
�676 o  
�
��� 0 
currentloc 
currentLoc7 m  
�
��
� 
ctxt5 o      �� 0 pathname pathName3 898 l 
�
�:;<: r  
�
�=>= n 
�
�?@? I  
�
��A�� 0 replace_chars  A BCB o  
�
��� 0 pathname pathNameC DED m  
�
�FF �GG  :E H�H m  
�
�II �JJ  /�  �  @  f  
�
�> o      �� 0 pathname pathName;  change ":" to "_"   < �KK " c h a n g e   " : "   t o   " _ "9 LML l 
�
�NOPN r  
�
�QRQ n 
�
�STS I  
�
��U�� 0 replace_chars  U VWV o  
�
��
�
 0 pathname pathNameW XYX m  
�
�ZZ �[[   Y \�	\ m  
�
�]] �^^  _�	  �  T  f  
�
�R o      �� 0 pathname pathNameO  change " " to "_"   P �__ " c h a n g e   "   "   t o   " _ "M `a` l 
�
�bcdb r  
�
�efe o  
�
��� 0 
parentname 
parentNamef n     ghg 1  
�
��
� 
txdlh 1  
�
��
� 
ascrc  this all points   d �ii  t h i s   a l l   p o i n t sa jkj l 
�lmnl r  
�opo n  
�
�qrq 4  
�
��s
� 
citms m  
�
��� r o  
�
��� 0 pathname pathNamep o      �� 0 	almostloc 	almostLocm  to the file for the HTML   n �tt 0 t o   t h e   f i l e   f o r   t h e   H T M Lk uvu l wxyw r  z{z o  � �  "0 origepisodename origEpisodeName{ n     |}| 1  	��
�� 
txdl} 1  	��
�� 
ascrx  coding   y �~~  c o d i n gv � r  ��� b  ��� n  ��� 4  ���
�� 
citm� m  ���� � o  ���� 0 	almostloc 	almostLoc� o  ���� "0 origepisodename origEpisodeName� o      ���� 0 	nearlyloc 	nearlyLoc� ��� r   G��� n   C��� 7 #C����
�� 
ctxt� l )?������ [  )?��� l *=������ I *=�����
�� .sysooffslong    ��� null��  � ����
�� 
psof� m  .1�� ���  :� �����
�� 
psin� o  47���� 0 	nearlyloc 	nearlyLoc��  ��  ��  � m  =>���� ��  ��  � m  @B������� o   #���� 0 	nearlyloc 	nearlyLoc� o      ���� 0 fileloc fileLoc� ��� r  HU��� J  HM�� ���� m  HK�� ���  ��  � n     ��� 1  PT��
�� 
txdl� 1  MP��
�� 
ascr� ��� l V~���� Q  V~����� l Yu���� l Yu���� I Yu�����
�� .corecrel****      � null��  � ����
�� 
kocl� m  ]`��
�� 
file� ����
�� 
insh� o  cd���� 0 aseason aSeason� �����
�� 
prdt� K  go�� �����
�� 
pnam� o  jm���� 0 docname docName��  ��  �  d8888   � ��� 
 d 8 8 8 8� O Iprevents duplicates from being written----------------------------...d888   � ��� � p r e v e n t s   d u p l i c a t e s   f r o m   b e i n g   w r i t t e n - - - - - - - - - - - - - - - - - - - - - - - - - - - - . . . d 8 8 8� R      ������
�� .ascrerr ****      � ****��  ��  ��  �  													888   � ���   	 	 	 	 	 	 	 	 	 	 	 	 	 8 8 8� ���� l 1���� Z  1������� J  ��� ���� I ������
�� .coredoexbool        obj � n ���� 4  �����
�� 
file� l �������� o  ������ 0 docname docName��  ��  � o  ����� 0 aseason aSeason��  ��  � l �-���� k  �-�� ��� l ������ r  ����� n ����� 4  �����
�� 
file� l �������� o  ������ 0 docname docName��  ��  � o  ������ 0 aseason aSeason� o      ���� 0 dfile dFile�  							888   � ���  	 	 	 	 	 	 8 8 8� ��� l ������ r  ����� c  ����� o  ������ 0 dfile dFile� m  ����
�� 
alis� o      ���� 0 episodefile episodeFile�  
							888   � ���  	 	 	 	 	 	 	 8 8 8� ��� l ��������  � 6 0Code for episode html text file!---						   	888   � ��� ` C o d e   f o r   e p i s o d e   h t m l   t e x t   f i l e ! - - - 	 	 	 	 	 	       	 8 8 8� ��� l ��������  � L Fyou can modify this for your own coding needs of course        8888888   � ��� � y o u   c a n   m o d i f y   t h i s   f o r   y o u r   o w n   c o d i n g   n e e d s   o f   c o u r s e                 8 8 8 8 8 8 8� ��� Z  �	������ = ����� n  ����� 1  ����
�� 
bhit� o  ������ 0 presubquery preSubQuery� m  ���� ���  Y e s� k  ���� ��� r  ����� J  ������  � o      ���� 0 subtitlehtml subtitleHTML� ��� r  ��� � b  �� m  �� � @ . . / . . / . . / . . / . . / v i d e o s / s u b t i t l e s / o  ������ (0 actualepisodetitle actualEpisodeTitle  o      ���� 0 almostsubloc almostSubLoc�  r  �� n ��	
	 1  ����
�� 
txdl
 1  ����
�� 
ascr o      ���� 0 oldtid oldTID  r  �� m  �� �  . n      1  ����
�� 
txdl 1  ����
�� 
ascr  r  �� n  �� 2  ����
�� 
citm o  ������ 0 
menuchoice 
menuChoice o      ���� 0 
allchoices 
allChoices  X  ���� Z  ����� E  	  o  ���� 0 
menuchoice 
menuChoice  o  ���� 0 anitem anItem k  �!! "#" r  $%$ o  ���� 0 oldtid oldTID% n     &'& 1  ��
�� 
txdl' 1  ��
�� 
ascr# ()( r  #*+* n ,-, 1  ��
�� 
txdl- 1  ��
�� 
ascr+ o      ���� 0 oldtid oldTID) ./. r  $/010 m  $'22 �33    - -  1 n     454 1  *.��
�� 
txdl5 1  '*��
�� 
ascr/ 676 r  0:898 n  06:;: 4 16��<
�� 
citm< m  45���� ; o  01���� 0 anitem anItem9 o      ���� 0 
theheading 
theHeading7 =>= r  ;E?@? n  ;AABA 4 <A��C
�� 
citmC m  ?@���� B o  ;<���� 0 anitem anItem@ o      ���� 0 namelang nameLang> DED r  FQFGF o  FI���� 0 oldtid oldTIDG n     HIH 1  LP��
�� 
txdlI 1  IL��
�� 
ascrE JKJ r  R]LML n RYNON 1  UY��
�� 
txdlO 1  RU��
�� 
ascrM o      ���� 0 oldtid oldTIDK PQP r  ^iRSR m  ^aTT �UU  .S n     VWV 1  dh��
�� 
txdlW 1  ad��
�� 
ascrQ XYX r  jyZ[Z b  ju\]\ b  jq^_^ o  jm���� 0 almostsubloc almostSubLoc_ o  mp���� 0 namelang nameLang] o  qt���� 0 subtypequery subTypeQuery[ o      ���� 0 subloc subLocY `a` r  z�bcb b  z�ded b  z�fgf b  z�hih b  z�jkj b  z�lml b  z�non b  z�pqp m  z}rr �ss : < t r a c k   k i n d = ' s u b t i t l e s '   s r c = 'q o  }����� 0 subloc subLoco m  ��tt �uu  '   s r c l a n g = 'm o  ������ 0 
theheading 
theHeadingk m  ��vv �ww  '   l a b e l = 'i l 
��x����x o  ������ 0 namelang nameLang��  ��  g m  ��yy �zz  '   / >e o  ����
�� 
ret c o      ���� 0 	totallist 	totalLista {��{ s  ��|}| o  ������ 0 	totallist 	totalList} n      ~~  ;  �� o  ������ 0 subtitlehtml subtitleHTML��  ��  ��  �� 0 anitem anItem o  ������ 0 
allchoices 
allChoices ���� r  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ��� l < ! D O C T Y P E   h t m l > 
 < h t m l > 	 	       
         < h e a d > 
                 < t i t l e >� o  ������ 0 episodename episodeName� m  ���� ���	� < / t i t l e > 
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
             d a t a - s e t u p = ' { " e x a m p l e _ o p t i o n " : t r u e } ' >     
             < s o u r c e   s r c = ' . . / . . / . . / . . / . .� o  ������ 0 fileloc fileLoc� m  ���� ��� l '   t y p e = ' v i d e o / m p 4 ' / > 
             < s o u r c e   s r c = ' . . / . . / . . / . . / . .� o  ������ 0 fileloc fileLoc� m  ���� ��� l '   t y p e = ' v i d e o / o g g ' / > 
             < s o u r c e   s r c = ' . . / . . / . . / . . / . .� o  ������ 0 fileloc fileLoc� m  ���� ��� : '   t y p e = ' v i d e o / w e b m '   / > 
            � o  ������ 0 subtitlehtml subtitleHTML� m  ���� ���� 
                     < / v i d e o > 
                     < b u t t o n   i d = ' f u l l s c r e e n v i d '   c l a s s = ' b u t t o n ' > F u l l s c r e e n   v i d e o < / b u t t o n > 
                     < s c r i p t   t y p e = ' t e x t / j a v a s c r i p t ' > 
                             ( f u n c t i o n ( w i n d o w ,   d o c u m e n t ) { 
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
                         < / s c r i p t > 
             < / b o d y > 
     < / h t m l >� o      ���� 0 episodetext episodeText��  ��  � r  �	��� b  ���� b  ���� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ��� � < ! D O C T Y P E   h t m l > 
 < h t m l > 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	       
         < h e a d > 
         	   < t i t l e >� o  ���� 0 episodename episodeName� m  ���� ���
� < / t i t l e > 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
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
                     < s o u r c e   s r c = ' . . / . . / . . / . . / . .� o  ���~�~ 0 fileloc fileLoc� m  ���� ��� t '   t y p e = ' v i d e o / m p 4 ' / > 
                     < s o u r c e   s r c = ' . . / . . / . . / . . / . .� o  ���}�} 0 fileloc fileLoc� m  ���� ��� t '   t y p e = ' v i d e o / o g g ' / > 
                     < s o u r c e   s r c = ' . . / . . / . . / . . / . .� o  � �|�| 0 fileloc fileLoc� m  �� ���� '   t y p e = ' v i d e o / w e b m '   / > 
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
 < / h t m l >� o      �{�{ 0 episodetext episodeText� ��� P  
!��z�� r   ��� n ��� I  �y��x�y 0 	writecode 	writeCode� ��� o  �w�w 0 episodefile episodeFile� ��v� o  �u�u 0 episodetext episodeText�v  �x  �  f  � o      �t�t 0 episodefile episodeFile�z  � �s�r
�s consrmte�r  � ��� l ""�q���q  � R L--------------------------------------------------------------------.d8888b.   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . d 8 8 8 8 b .� ��p� l "-���� r  "-��� m  "%�� ���  � n     ��� 1  (,�o
�o 
txdl� 1  %(�n
�n 
ascr�  ---------------d88P  Y88b   � ��� 2 - - - - - - - - - - - - - - - d 8 8 P     Y 8 8 b�p  �  							888   � ���  	 	 	 	 	 	 8 8 8��  ��  � P J-----------			---                        -------------                 888   � ��� � - - - - - - - - - - - 	 	 	 - - -                                                 - - - - - - - - - - - - -                                   8 8 8��  �� 0 	anepisode 	anEpisodeu o  	S	V�m�m 0 episodelist episodeListr T N-----------------------------   	-- --------               ---           .d88P   s ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - -       	 - -   - - - - - - - -                               - - -                       . d 8 8 Pp ��� l 7B���� r  7B��� b  7>��� o  7:�l�l 0 
seasonname 
seasonName� m  :=�� ��� 
 . h t m l� o      �k�k 0 docname docName� ) #----		   -------------     .od888PI   � ��� F - - - - 	 	       - - - - - - - - - - - - -           . o d 8 8 8 P I� ��� l CN���� r  CN��� c  CJ��� o  CF�j�j 0 showname showName� m  FI�i
�i 
ctxt� o      �h�h 0 altshowname altShowName� ) #---------    -------------    d88PI   � ��� F - - - - - - - - -         - - - - - - - - - - - - -         d 8 8 P I� ��� l Oa���� r  Oa��� n O]��� I  P]�g��f�g 0 replace_chars  � ��� o  PS�e�e 0 altshowname altShowName� 	 		  m  SV		 �		  _	 	�d	 m  VY		 �		   �d  �f  �  f  OP� o      �c�c 0 altshowname altShowName�  888I    � �		 
 8 8 8 I  � 				 l bm	
			
 r  bm			 c  bi			 o  be�b�b 0 
seasonname 
seasonName	 m  eh�a
�a 
ctxt	 o      �`�` 0 altseasonname altSeasonName	 ) #------------------------8888888888    	 �		 F - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8 8 8 8 8 8 8 8  		 			 r  n�			 n n|			 I  o|�_	�^�_ 0 replace_chars  	 			 o  or�]�] 0 altseasonname altSeasonName	 			 m  ru		 �		  _	 	�\	 m  ux	 	  �	!	!   �\  �^  	  f  no	 o      �[�[ 0 altseasonname altSeasonName	 	"	#	" Q  ��	$	%�Z	$ I ���Y�X	&
�Y .corecrel****      � null�X  	& �W	'	(
�W 
kocl	' m  ���V
�V 
file	( �U	)	*
�U 
insh	) o  ���T�T 0 ashow aShow	* �S	+�R
�S 
prdt	+ K  ��	,	, �Q	-�P
�Q 
pnam	- o  ���O�O 0 docname docName�P  �R  	% R      �N�M�L
�N .ascrerr ****      � ****�M  �L  �Z  	# 	.�K	. Z  �'	/	0�J�I	/ J  ��	1	1 	2�H	2 I ���G	3�F
�G .coredoexbool        obj 	3 n ��	4	5	4 4  ���E	6
�E 
file	6 l ��	7�D�C	7 o  ���B�B 0 docname docName�D  �C  	5 o  ���A�A 0 ashow aShow�F  �H  	0 k  �#	8	8 	9	:	9 r  ��	;	<	; n ��	=	>	= 4  ���@	?
�@ 
file	? l ��	@�?�>	@ o  ���=�= 0 docname docName�?  �>  	> o  ���<�< 0 ashow aShow	< o      �;�; 0 dfile dFile	: 	A	B	A r  ��	C	D	C c  ��	E	F	E o  ���:�: 0 dfile dFile	F m  ���9
�9 
alis	D o      �8�8 0 episodefile episodeFile	B 	G	H	G l ��	I	J	K	I r  ��	L	M	L m  ��	N	N �	O	O  < l i > < a   h r e f = '	M o      �7�7 0 	listpart1 	listPart1	J  auto generate HTML lists   	K �	P	P 0 a u t o   g e n e r a t e   H T M L   l i s t s	H 	Q	R	Q r  ��	S	T	S m  ��	U	U �	V	V  ' >	T o      �6�6 0 	listpart7 	listPart7	R 	W	X	W r  ��	Y	Z	Y m  ��	[	[ �	\	\  < / a > < / l i >	Z o      �5�5 0 	listpart9 	listPart9	X 	]	^	] r  ��	_	`	_ J  ���4�4  	` o      �3�3  0 seasonhtmllist seasonHtmlList	^ 	a	b	a r  ��	c	d	c n ��	e	f	e 2  ���2
�2 
file	f o  ���1�1 0 aseason aSeason	d o      �0�0 0 allfiles allFiles	b 	g	h	g X  ��	i�/	j	i Z  �	k	l�.�-	k = 	m	n	m n  	o	p	o 1  �,
�, 
nmxt	p o  �+�+ 0 afile aFile	n m  	q	q �	r	r  h t m l	l k  �	s	s 	t	u	t r  *	v	w	v m  "	x	x �	y	y  .	w n     	z	{	z 1  %)�*
�* 
txdl	{ 1  "%�)
�) 
ascr	u 	|	}	| r  +:	~		~ c  +6	�	�	� b  +2	�	�	� o  +.�(�( (0 actualepisodetitle actualEpisodeTitle	� m  .1	�	� �	�	�  h t m l	� m  25�'
�' 
TEXT	 o      �&�& 0 htmlfile htmlFile	} 	�	�	� r  ;G	�	�	� n  ;C	�	�	� 4  >C�%	�
�% 
citm	� m  AB�$�$ 	� o  ;>�#�# 0 htmlfile htmlFile	� o      �"�" "0 trueepisodename trueEpisodeName	� 	�	�	� r  HZ	�	�	� n HV	�	�	� I  IV�!	�� �! 0 replace_chars  	� 	�	�	� o  IL�� 0 htmlfile htmlFile	� 	�	�	� m  LO	�	� �	�	�   	� 	��	� m  OR	�	� �	�	�  _�  �   	�  f  HI	� o      �� 0 htmlfile htmlFile	� 	�	�	� r  [f	�	�	� m  [^	�	� �	�	�  	� n     	�	�	� 1  ae�
� 
txdl	� 1  ^a�
� 
ascr	� 	�	�	� r  gy	�	�	� n gu	�	�	� I  hu�	��� 0 replace_chars  	� 	�	�	� o  hk�� "0 trueepisodename trueEpisodeName	� 	�	�	� m  kn	�	� �	�	�   	� 	��	� m  nq	�	� �	�	�  _�  �  	�  f  gh	� o      �� "0 trueepisodename trueEpisodeName	� 	�	�	� r  z�	�	�	� b  z�	�	�	� b  z�	�	�	� b  z�	�	�	� b  z�	�	�	� b  z�	�	�	� b  z�	�	�	� b  z�	�	�	� b  z�	�	�	� b  z�	�	�	� b  z�	�	�	� b  z�	�	�	� b  z�	�	�	� b  z�	�	�	� b  z�	�	�	� o  z}�� 0 	listpart1 	listPart1	� m  }�	�	� �	�	� ( . . / . . / . . / . . / T V _ S h o w s	� m  ��	�	� �	�	�  /	� o  ���� 0 
azmenuname 
azMenuName	� m  ��	�	� �	�	�  /	� o  ���� 0 
lettername 
letterName	� m  ��	�	� �	�	�  /	� o  ���� 0 showname showName	� m  ��	�	� �	�	�  /	� o  ���� 0 
seasonname 
seasonName	� m  ��	�	� �	�	�  /	� o  ���� 0 htmlfile htmlFile	� o  ���� 0 	listpart7 	listPart7	� o  ���� "0 trueepisodename trueEpisodeName	� o  ���� 0 	listpart9 	listPart9	� o      �� 0 	totallist 	totalList	� 	��	� s  ��	�	�	� o  ���
�
 0 	totallist 	totalList	� n      	�	�	�  ;  ��	� o  ���	�	  0 seasonhtmllist seasonHtmlList�  �.  �-  �/ 0 afile aFile	j o   �� 0 allfiles allFiles	h 	�	�	� r  �	�	�	� b  �	�	�	� b  �	�	�	� b  ��	�	�	� b  ��	�	�	� b  ��	�	�	� b  ��	�	�	� b  ��	�	�	� b  ��	�	�	� b  ��	�	�	� b  ��	�	�	� b  ��	�	�	� b  ��
 

  b  ��


 b  ��


 m  ��

 �

 D < ! D o c t y p e   h t m l > 
 < h e a d > 
         < t i t l e >
 o  ���� 0 showname showName
 m  ��

 �
	
	   
 o  ���� 0 
seasonname 
seasonName	� m  ��



 �

� < / t i t l e > 
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
                         c o l o r : # 7 0 8 0 9 0 ; 
 	     h e i g h t : 1 0 0 p x ; 
 	     w i d t h : 6 5 0 p x ; 
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
                         < l i > < a   h r e f = ' . . / . . / . . / . . / T V _ S h o w s / A - Z m e n u /	� o  ���� 0 
lettername 
letterName	� m  ��

 �

  /	� o  ���� 0 showname showName	� m  ��

 �

H . h t m l ' >   . . < / a > < / l i > 
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
                 < h e a d e r   i d = ' s h o w T i t l e '   >	� o  ���� 0 altshowname altShowName	� m  ��

 �

 X < / h e a d e r > 
                 < h e a d e r   i d = ' s e a s o n T i t l e '   >	� o  ���� 0 altseasonname altSeasonName	� m  ��

 �

 J < / h e a d e r > 
                 < u l   c l a s s = ' S E _ n a v ' >	� l 	�
�� 
 o  �����  0 seasonhtmllist seasonHtmlList�  �   	� m  

 �

 F 
 	 	 < / u l > 
         < / d i v > 
 < / b o d y > 
 < / h t m l >	� o      ���� 0 episodetext episodeText	� 
��
 P  #
��

 r  "


 n 


 I  ��
���� 0 	writecode 	writeCode
 

 
 o  ���� 0 episodefile episodeFile
  
!��
! o  ���� 0 episodetext episodeText��  ��  
  f  
 o      ���� 0 episodefile episodeFile��  
 ����
�� consrmte��  ��  �J  �I  �K  �� 0 aseason aSeasona o  	)	,���� 0 
seasonlist 
seasonList_ 
"
#
" r  -8
$
%
$ b  -4
&
'
& o  -0���� 0 showname showName
' m  03
(
( �
)
) 
 . h t m l
% o      ���� 0 docname docName
# 
*
+
* Q  9a
,
-��
, I <X����
.
�� .corecrel****      � null��  
. ��
/
0
�� 
kocl
/ m  @C��
�� 
file
0 ��
1
2
�� 
insh
1 o  FG���� 0 aletter aLetter
2 ��
3��
�� 
prdt
3 K  JR
4
4 ��
5��
�� 
pnam
5 o  MP���� 0 docname docName��  ��  
- R      ������
�� .ascrerr ****      � ****��  ��  ��  
+ 
6��
6 Z  b�
7
8����
7 J  bp
9
9 
:��
: I bn��
;��
�� .coredoexbool        obj 
; n bj
<
=
< 4  cj��
>
�� 
file
> l fi
?����
? o  fi���� 0 docname docName��  ��  
= o  bc���� 0 aletter aLetter��  ��  
8 k  s�
@
@ 
A
B
A r  s
C
D
C n s{
E
F
E 4  t{��
G
�� 
file
G l wz
H����
H o  wz���� 0 docname docName��  ��  
F o  st���� 0 aletter aLetter
D o      ���� 0 dfile dFile
B 
I
J
I l ��
K
L
M
K r  ��
N
O
N c  ��
P
Q
P o  ������ 0 dfile dFile
Q m  ����
�� 
alis
O o      ���� 0 episodefile episodeFile
L  							.d8888b.   
M �
R
R  	 	 	 	 	 	 	 . d 8 8 8 8 b .
J 
S
T
S l ��
U
V
W
U r  ��
X
Y
X m  ��
Z
Z �
[
[  < l i > < a   h r e f = '
Y o      ���� 0 	listpart1 	listPart1
V / )auto generate HTML lists-------d88P  Y88b   
W �
\
\ R a u t o   g e n e r a t e   H T M L   l i s t s - - - - - - - d 8 8 P     Y 8 8 b
T 
]
^
] l ��
_
`
a
_ r  ��
b
c
b m  ��
d
d �
e
e  ' >
c o      ���� 0 	listpart6 	listPart6
`  											  .d88P   
a �
f
f $ 	 	 	 	 	 	 	 	 	 	 	     . d 8 8 P
^ 
g
h
g l ��
i
j
k
i r  ��
l
m
l m  ��
n
n �
o
o  < / a > < / l i >
m o      ���� 0 	listpart8 	listPart8
j  									8888I   
k �
p
p  	 	 	 	 	 	 	 	 	 8 8 8 8 I
h 
q
r
q l ��
s
t
u
s r  ��
v
w
v J  ������  
w o      ���� 0 showhtmllist showHtmlList
t  										  IY8b.   
u �
x
x " 	 	 	 	 	 	 	 	 	 	     I Y 8 b .
r 
y
z
y l ��
{
|
}
{ r  ��
~

~ n ��
�
�
� 2  ����
�� 
file
� o  ������ 0 ashow aShow
 o      ���� 0 allfiles allFiles
|  							888    888   
} �
�
� " 	 	 	 	 	 	 	 8 8 8         8 8 8
z 
�
�
� X  �i
���
�
� l �d
�
�
�
� Z  �d
�
�����
� = ��
�
�
� n  ��
�
�
� 1  ����
�� 
nmxt
� o  ������ 0 afile aFile
� m  ��
�
� �
�
�  h t m l
� l �`
�
�
�
� k  �`
�
� 
�
�
� r  ��
�
�
� c  ��
�
�
� n  ��
�
�
� 1  ����
�� 
pnam
� o  ������ 0 afile aFile
� m  ����
�� 
ctxt
� o      ���� 0 htmlfile htmlFile
� 
�
�
� r  �
�
�
� n  �
�
�
� 7 ���
�
�
�� 
ctxt
� m  ������ 
� l �
�����
� \  �
�
�
� l �
�����
� I �����
�
�� .sysooffslong    ��� null��  
� ��
�
�
�� 
psof
� m  ��
�
� �
�
�  .
� ��
���
�� 
psin
� o  ������ 0 htmlfile htmlFile��  ��  ��  
� m  ���� ��  ��  
� o  ������ 0 htmlfile htmlFile
� o      ����  0 trueseasonname trueSeasonName
� 
�
�
� r  
�
�
� n 
�
�
� I  ��
����� 0 replace_chars  
� 
�
�
� o  ����  0 trueseasonname trueSeasonName
� 
�
�
� m  
�
� �
�
�  _
� 
���
� m  
�
� �
�
�   ��  ��  
�  f  
� o      ����  0 trueseasonname trueSeasonName
� 
�
�
� r   W
�
�
� b   S
�
�
� b   O
�
�
� b   K
�
�
� b   G
�
�
� b   C
�
�
� b   ?
�
�
� b   ;
�
�
� b   7
�
�
� b   3
�
�
� b   /
�
�
� b   +
�
�
� b   '
�
�
� o   #���� 0 	listpart1 	listPart1
� m  #&
�
� �
�
� " . . / . . / . . / T V _ S h o w s
� m  '*
�
� �
�
�  /
� o  +.���� 0 
azmenuname 
azMenuName
� m  /2
�
� �
�
�  /
� o  36���� 0 
lettername 
letterName
� m  7:
�
� �
�
�  /
� o  ;>���� 0 showname showName
� m  ?B
�
� �
�
�  /
� o  CF���� 0 htmlfile htmlFile
� o  GJ���� 0 	listpart6 	listPart6
� o  KN����  0 trueseasonname trueSeasonName
� o  OR���� 0 	listpart8 	listPart8
� o      ���� 0 	totallist 	totalList
� 
���
� s  X`
�
�
� o  X[���� 0 	totallist 	totalList
� n      
�
�
�  ;  ^_
� o  [^���� 0 showhtmllist showHtmlList��  
�  -				 IY8888PI   
� �
�
�  - 	 	 	 	   I Y 8 8 8 8 P I��  ��  
�  								Y88b  d88P   
� �
�
� $ 	 	 	 	 	 	 	 	 Y 8 8 b     d 8 8 P�� 0 afile aFile
� o  ������ 0 allfiles allFiles
� 
�
�
� r  j�
�
�
� b  j�
�
�
� b  j�
�
�
� b  j�
�
�
� b  j�
�
�
� b  j}
�
�
� b  jy
�
�
� b  ju
�
�
� b  jq
� 
� m  jm � D < ! D o c t y p e   h t m l > 
 < h e a d > 
         < t i t l e >  o  mp���� 0 showname showName
� m  qt �� < / t i t l e > 
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
                         < l i > < a   h r e f = ' . . / . . / . . / T V _ S h o w s / A - Z m e n u /
� o  ux���� 0 
lettername 
letterName
� m  y| �� . h t m l ' >   . . < / a > < / l i > 
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
                         c o l o r : # 7 0 8 0 9 0 ; p o s i t i o n : a b s o l u t e ; t o p : 2 ; l e f t : 2 0 p x ; h e i g h t : 1 0 0 p x ; w i d t h : 6 0 0 p x ' >
� o  }����� 0 altshowname altShowName
� m  �� � � < / h e a d e r >                 
                 < u l   c l a s s = ' S E _ n a v '   s t y l e = ' p o s i t i o n : a b s o l u t e ; t o p : 1 2 5 p x ; ' >
� l 	��	����	 o  ������ 0 showhtmllist showHtmlList��  ��  
� m  ��

 � F 
 	 	 < / u l > 
         < / d i v > 
 < / b o d y > 
 < / h t m l >
� o      ���� 0 episodetext episodeText
� �� P  ���� r  �� n �� I  �������� 0 	writecode 	writeCode  o  ������ 0 episodefile episodeFile �� o  ������ 0 episodetext episodeText��  ��    f  �� o      ���� 0 episodefile episodeFile��   ����
�� consrmte��  ��  ��  ��  ��  �� 0 ashow aShowP o  �	���� 0 showlist showListN  r  �� b  �� o  ������ 0 
lettername 
letterName m  �� � 
 . h t m l o      ���� 0 docname docName   Q  ��!"��! I ������#
�� .corecrel****      � null��  # ��$%
�� 
kocl$ m  ����
�� 
file% ��&'
�� 
insh& l ��(����( o  ���� 0 azmenu azMenu��  ��  ' �~)�}
�~ 
prdt) K  ��** �|+�{
�| 
pnam+ o  ���z�z 0 docname docName�{  �}  " R      �y�x�w
�y .ascrerr ****      � ****�x  �w  ��    ,�v, l �A-./- Z  �A01�u�t0 J  ��22 3�s3 I ���r4�q
�r .coredoexbool        obj 4 n ��565 4  ���p7
�p 
file7 l ��8�o�n8 o  ���m�m 0 docname docName�o  �n  6 o  ���l�l 0 azmenu azMenu�q  �s  1 k  �=99 :;: l �<=>< r  �?@? n �ABA 4  ��kC
�k 
fileC l � D�j�iD o  � �h�h 0 docname docName�j  �i  B o  ���g�g 0 azmenu azMenu@ o      �f�f 0 dfile dFile=  					d8888   > �EE  	 	 	 	 d 8 8 8 8; FGF l HIJH r  KLK c  MNM o  	�e�e 0 dfile dFileN m  	�d
�d 
alisL o      �c�c 0 episodefile episodeFileI ( "--------------------------d8P888     J �OO D - - - - - - - - - - - - - - - - - - - - - - - - - - d 8 P 8 8 8    G PQP l RSTR r  UVU m  WW �XX  < l i > < a   h r e f = 'V o      �b�b 0 	listpart1 	listPart1S % ------------------------d8P 888   T �YY > - - - - - - - - - - - - - - - - - - - - - - - - d 8 P   8 8 8Q Z[Z l !\]^\ r  !_`_ m  aa �bb  ' >` o      �a�a 0 	listpart6 	listPart6] 3 --------------------------------------d8P  888   ^ �cc Z - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - d 8 P     8 8 8[ ded l ")fghf r  ")iji m  "%kk �ll  < / a > < / l i >j o      �`�` 0 	listpart8 	listPart8g * $--------------------------d88   888    h �mm H - - - - - - - - - - - - - - - - - - - - - - - - - - d 8 8       8 8 8  e non l *0pqrp r  *0sts J  *,�_�_  t o      �^�^  0 letterhtmllist letterHtmlListq / )-------------------------------8888888888   r �uu R - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8 8 8 8 8 8 8 8o vwv l 1:xyzx r  1:{|{ n 16}~} 2  26�]
�] 
file~ o  12�\�\ 0 aletter aLetter| o      �[�[ 0 allfiles allFilesy % ----------------------     888    z � > - - - - - - - - - - - - - - - - - - - - - -           8 8 8  w ��� X  ;���Z�� l Q����� Z  Q����Y�X� = QZ��� n  QV��� 1  RV�W
�W 
nmxt� o  QR�V�V 0 afile aFile� m  VY�� ���  h t m l� k  ]��� ��� r  ]j��� c  ]f��� n  ]b��� 1  ^b�U
�U 
pnam� o  ]^�T�T 0 afile aFile� m  be�S
�S 
ctxt� o      �R�R 0 htmlfile htmlFile� ��� r  k���� n  k���� 7 n��Q��
�Q 
ctxt� m  tv�P�P � l w���O�N� \  w���� l x���M�L� I x��K�J�
�K .sysooffslong    ��� null�J  � �I��
�I 
psof� m  |�� ���  .� �H��G
�H 
psin� o  ���F�F 0 htmlfile htmlFile�G  �M  �L  � m  ���E�E �O  �N  � o  kn�D�D 0 htmlfile htmlFile� o      �C�C 0 trueshowname trueShowName� ��� r  ����� n ����� I  ���B��A�B 0 replace_chars  � ��� o  ���@�@ 0 trueshowname trueShowName� ��� m  ���� ���  _� ��?� m  ���� ���   �?  �A  �  f  ��� o      �>�> 0 trueshowname trueShowName� ��� r  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� o  ���=�= 0 	listpart1 	listPart1� m  ���� ���  . . / . . / T V _ S h o w s� m  ���� ���  /� o  ���<�< 0 
azmenuname 
azMenuName� m  ���� ���  /� o  ���;�; 0 
lettername 
letterName� m  ���� ���  /� o  ���:�: 0 htmlfile htmlFile� o  ���9�9 0 	listpart6 	listPart6� o  ���8�8 0 trueshowname trueShowName� o  ���7�7 0 	listpart8 	listPart8� o      �6�6 0 	totallist 	totalList� ��5� s  ����� o  ���4�4 0 	totallist 	totalList� n      ���  ;  ��� o  ���3�3  0 letterhtmllist letterHtmlList�5  �Y  �X  � + %----------------------------------888   � ��� J - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8�Z 0 afile aFile� o  >A�2�2 0 allfiles allFiles� ��� Z  ����1�0� = ����� c  ����� o  ���/�/ 0 
lettername 
letterName� m  ���.
�. 
TEXT� m  ���� ���  -� r  ���� c  ����� m  ���� ���  #� m  ���-
�- 
TEXT� o      �,�, 0 
lettername 
letterName�1  �0  � ��� r  %��� b  !��� b  ��� b  ��� b  ��� b  ��� b  ��� m  	   � D < ! D o c t y p e   h t m l > 
 < h e a d > 
         < t i t l e >� o  	�+�+ 0 
lettername 
letterName� m   �* < / t i t l e > 
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
                         c o l o r : # 7 0 8 0 9 0 ; p o s i t i o n : a b s o l u t e ; t o p : 2 ; l e f t : 2 0 p x ; h e i g h t : 5 0 p x ; w i d t h : 3 0 0 p x ' >� o  �*�* 0 
lettername 
letterName� m   � � < / h e a d e r >                 
                 < u l   c l a s s = ' S E _ n a v '   s t y l e = ' p o s i t i o n : a b s o l u t e ; t o p : 7 5 p x ; ' >� l 	�)�( o  �'�'  0 letterhtmllist letterHtmlList�)  �(  � m    � H 
 	 	   < / u l > 
         < / d i v > 
 < / b o d y > 
 < / h t m l >� o      �&�& 0 episodetext episodeText� 	�%	 P  &=
�$
 r  -< n -8 I  .8�#�"�# 0 	writecode 	writeCode  o  .1�!�! 0 episodefile episodeFile �  o  14�� 0 episodetext episodeText�   �"    f  -. o      �� 0 episodefile episodeFile�$   ��
� consrmte�  �%  �u  �t  . Z T---------------------------------------------------------------------------888888888   / � � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8 8 8 8 8 8 8�v  �� 0 aletter aLetter5 o  ���� 0 
letterlist 
letterList2 S M--------------------------------------------------------------------------888   3 � � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 80  l GR r  GR b  GN o  GJ�� 0 
azmenuname 
azMenuName m  JM �   
 . h t m l o      �� 0 docname docName 1 +----------------------------------------888    �!! V - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8 "#" l S}$%&$ Q  S}'(�' l Vt)*+) l Vt,-., I Vt��/
� .corecrel****      � null�  / �01
� 
kocl0 m  Z]�
� 
file1 �23
� 
insh2 l `c4��4 o  `c�� 0 dumpdirectory dumpDirectory�  �  3 �5�
� 
prdt5 K  fn66 �7�
� 
pnam7 o  il�� 0 docname docName�  �  -  --------IY88b   . �88  - - - - - - - - I Y 8 8 b* c ]------------------------------------------------------------------------------------8888888b.   + �99 � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8 8 8 8 8 b .( R      �
�	�
�
 .ascrerr ****      � ****�	  �  �  % b \-----------------------------------------------------------------------------------------888   & �:: � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8# ;�; l ~�<=>< Z  ~�?@��? J  ~�AA B�B I ~��C�
� .coredoexbool        obj C n ~�DED 4  ���F
� 
fileF l ��G� ��G o  ������ 0 docname docName�   ��  E o  ~����� 0 dumpdirectory dumpDirectory�  �  @ l ��HIJH k  ��KK LML l ��NOPN r  ��QRQ n ��STS 4  ����U
�� 
fileU l ��V����V o  ������ 0 docname docName��  ��  T o  ������ 0 dumpdirectory dumpDirectoryR o      ���� 0 dfile dFileO . (--------------------------------IY8888PI   P �WW P - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - I Y 8 8 8 8 P IM XYX r  ��Z[Z c  ��\]\ o  ������ 0 dfile dFile] m  ����
�� 
alis[ o      ���� 0 episodefile episodeFileY ^_^ r  ��`a` m  ��bb �cc)l < ! D o c t y p e   h t m l > 
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
 < / h t m l >a o      ���� 0 episodetext episodeText_ d��d P  ��e��fe r  ��ghg n ��iji I  ����k���� 0 	writecode 	writeCodek lml o  ������ 0 episodefile episodeFilem n��n o  ������ 0 episodetext episodeText��  ��  j  f  ��h o      ���� 0 episodefile episodeFile��  f ����
�� consrmte��  ��  I . (-----------------------------Y88b  d88P    J �oo P - - - - - - - - - - - - - - - - - - - - - - - - - - - - - Y 8 8 b     d 8 8 P  �  �  = @ :the section below makes blank pages for the unused letters   > �pp t t h e   s e c t i o n   b e l o w   m a k e s   b l a n k   p a g e s   f o r   t h e   u n u s e d   l e t t e r s�  �� 0 azmenu azMenu! o  ������ 0 azlist azList qrq r  �Dsts b  �@uvu b  �<wxw b  �8yzy b  �4{|{ b  �0}~} b  �,� b  �(��� b  �$��� b  � ��� b  ���� b  ���� b  ���� b  ���� b  ���� b  ���� b  ���� b  � ��� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ���  -� m  ���� ���  A� m  ���� ���  B� m  ���� ���  C� m  ���� ���  D� m  ���� ���  E� m  ���� ���  F� m  ���� ���  G� m  ���� ���  H� m  ���� ���  I� m  ���� ���  J� m   �� ���  K� m  �� ���  L� m  �� ���  M� m  �� ���  N� m  �� ���  O� m  �� ���  P� m  �� ���  Q� m  �� ���  R� m   #�� ���  S� m  $'�� ���  T� m  (+�� ���  U~ m  ,/�� ���  V| m  03�� ���  Wz m  47�� ���  Xx m  8;�� ���  Yv m  <?�� ���  Zt o      ���� 0 
allletters 
allLettersr ��� r  ET��� c  EP��� n  EL��� 2  HL��
�� 
cha � o  EH���� 0 
allletters 
allLetters� m  LO��
�� 
TEXT� o      ���� 0 allitems allItems� ��� l UO���� X  UO����� Z  kJ������� H  kq�� E  kp��� o  kn����  0 createdletters createdLetters� o  no���� 0 anitem anItem� k  tF�� ��� r  ty��� o  tu���� 0 anitem anItem� o      ���� 0 
lettername 
letterName� ��� r  z���� b  z���� o  z}���� 0 
lettername 
letterName� m  }��� ��� 
 . h t m l� o      ���� 0 docname docName�    Q  ���� I ������
�� .corecrel****      � null��   ��
�� 
kocl m  ����
�� 
file ��
�� 
insh l ��	����	 o  ������ 0 azmenu azMenu��  ��   ��
��
�� 
prdt
 K  �� ����
�� 
pnam o  ������ 0 docname docName��  ��   R      ������
�� .ascrerr ****      � ****��  ��  ��   �� Q  �F�� l �= Z  �=���� J  �� �� I ������
�� .coredoexbool        obj  n �� 4  ����
�� 
file l ������ o  ������ 0 docname docName��  ��   o  ������ 0 azmenu azMenu��  ��   k  �9  l �� ! r  ��"#" n ��$%$ 4  ����&
�� 
file& l ��'����' o  ������ 0 docname docName��  ��  % o  ������ 0 azmenu azMenu# o      ���� 0 dfile dFile   					d8888   ! �((  	 	 	 	 d 8 8 8 8 )*) l ��+,-+ r  ��./. c  ��010 o  ������ 0 dfile dFile1 m  ����
�� 
alis/ o      ���� 0 episodefile episodeFile, ( "--------------------------d8P888     - �22 D - - - - - - - - - - - - - - - - - - - - - - - - - - d 8 P 8 8 8    * 343 r  ��565 m  ��77 �88  6 o      ����  0 letterhtmllist letterHtmlList4 9:9 Z  �;<����; = ��=>= c  ��?@? o  ������ 0 
lettername 
letterName@ m  ����
�� 
TEXT> m  ��AA �BB  -< r  ��CDC c  ��EFE m  ��GG �HH  #F m  ����
�� 
TEXTD o      ���� 0 
lettername 
letterName��  ��  : IJI r  !KLK b  MNM b  OPO b  QRQ b  STS b  UVU b  	WXW m  YY �ZZ D < ! D o c t y p e   h t m l > 
 < h e a d > 
         < t i t l e >X o  ���� 0 
lettername 
letterNameV m  	[[ �\\0 < / t i t l e > 
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
                         c o l o r : # 7 0 8 0 9 0 ; p o s i t i o n : a b s o l u t e ; t o p : 2 ; l e f t : 2 0 p x ; h e i g h t : 1 0 0 p x ; w i d t h : 6 0 0 p x ; ; ' >T o  ���� 0 
lettername 
letterNameR m  ]] �^^ � < / h e a d e r >                 
                 < u l   c l a s s = ' S E _ n a v '   s t y l e = ' p o s i t i o n : a b s o l u t e ; t o p : 1 2 5 p x ; ' >P l 	_����_ o  ����  0 letterhtmllist letterHtmlList��  ��  N m  `` �aa H 
 	 	   < / u l > 
         < / d i v > 
 < / b o d y > 
 < / h t m l >L o      ���� 0 episodetext episodeTextJ b��b P  "9c��dc r  )8efe n )4ghg I  *4��i���� 0 	writecode 	writeCodei jkj o  *-���� 0 episodefile episodeFilek l��l o  -0���� 0 episodetext episodeText��  ��  h  f  )*f o      ���� 0 episodefile episodeFile��  d ����
�� consrmte��  ��  ��  ��   Z T---------------------------------------------------------------------------888888888    �mm � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8 8 8 8 8 8 8 R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  ��  �� 0 anitem anItem� o  X[���� 0 allitems allItems� S M--------------------------------------------------------------------------888   � �nn � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8� opo l PP��������  ��  ��  p qrq l PP��������  ��  ��  r s��s l PP��������  ��  ��  ��  ��  � k  T�tt uvu Z  Thwx����w = T_yzy n  T[{|{ 1  W[��
�� 
bhit| o  TW���� 0 mediachoice mediaChoicez m  [^}} �~~ 
 M o v i ex l bd�� k  bd�� ��� r  bm��� n  bi��� 1  ei��
�� 
pnam� o  be���� 0 dumpdirectory dumpDirectory� o      ���� 0 	moviename 	movieName� ��� r  ny��� n nu��� 2 qu��
�� 
cfol� o  nq���� 0 dumpdirectory dumpDirectory� o      ���� 0 azlist azList� ��� l z����� r  z���� J  z|����  � o      ����  0 createdletters createdLetters� . ( used for determining letters at the end   � ��� P   u s e d   f o r   d e t e r m i n i n g   l e t t e r s   a t   t h e   e n d� ���� X  �d����� k  �_�� ��� r  ����� n  ����� 1  ����
�� 
pnam� o  ���� 0 azmenu azMenu� o      �~�~ 0 
azmenuname 
azMenuName� ��� r  ����� n ����� 2 ���}
�} 
cfol� o  ���|�| 0 azmenu azMenu� o      �{�{ 0 
letterlist 
letterList� ��z� X  �_��y�� k  �Z�� ��� r  ����� n  ����� 1  ���x
�x 
pnam� o  ���w�w 0 aletter aLetter� o      �v�v 0 
lettername 
letterName� ��� l ������ s  ����� o  ���u�u 0 
lettername 
letterName� n      ���  ;  ��� o  ���t�t  0 createdletters createdLetters� ! used for letters at the end   � ��� 6 u s e d   f o r   l e t t e r s   a t   t h e   e n d� ��� r  ����� n ����� 2 ���s
�s 
cfol� o  ���r�r 0 aletter aLetter� o      �q�q 0 showlist showList� ��� X  ����p�� k  ���� ��� r  ����� n  ����� 1  ���o
�o 
pnam� o  ���n�n 0 ashow aShow� o      �m�m 0 showname showName� ��� r  ���� n ���� 2 ��l
�l 
file� o  ���k�k 0 ashow aShow� o      �j�j 0 episodelist episodeList� ��� X  ���i�� k  ��� ��� r  '��� n  #��� 1  #�h
�h 
pnam� o  �g�g 0 	anepisode 	anEpisode� o      �f�f 0 episodename episodeName� ��� Z  (���e�d� >  (1��� n  (-��� 1  )-�c
�c 
nmxt� o  ()�b�b 0 	anepisode 	anEpisode� m  -0�� ���  h t m l� l 4
���� k  4
�� ��� r  4?��� m  47�� ���  .� n     ��� 1  :>�a
�a 
txdl� 1  7:�`
�` 
ascr� ��� r  @M��� b  @I��� m  @C�� ���  .� n  CH��� 1  DH�_
�_ 
nmxt� o  CD�^�^ 0 	anepisode 	anEpisode� o      �]�] 0 theextension theExtension� ��� r  NZ� � n  NV 4  QV�\
�\ 
citm m  TU�[�[  o  NQ�Z�Z 0 episodename episodeName  o      �Y�Y 0 episodetitle episodeTitle�  l [m r  [m	
	 n [i I  \i�X�W�X 0 replace_chars    o  \_�V�V 0 episodetitle episodeTitle  m  _b �    �U m  be �  _�U  �W    f  [\
 o      �T�T 0 episodetitle episodeTitle  changes " " to "_"    � $ c h a n g e s   "   "   t o   " _ "  r  ny b  nu o  nq�S�S 0 episodetitle episodeTitle m  qt � 
 . h t m l o      �R�R 0 docname docName  !  r  z�"#" J  z$$ %�Q% m  z}&& �''  �Q  # n     ()( 1  ���P
�P 
txdl) 1  ��O
�O 
ascr! *�N* Z  �
+,�M-+ J  ��.. /�L/ I ���K0�J
�K .coredoexbool        obj 0 n ��121 4  ���I3
�I 
cfol3 l ��4�H�G4 o  ���F�F 0 showname showName�H  �G  2 o  ���E�E 0 viddirectory vidDirectory�J  �L  , k  ��55 676 r  ��898 n ��:;: 4  ���D<
�D 
cfol< l ��=�C�B= o  ���A�A 0 showname showName�C  �B  ; o  ���@�@ 0 viddirectory vidDirectory9 o      �?�? 0 altshow altShow7 >?> I ���>@A
�> .coremoveobj        obj @ o  ���=�= 0 	anepisode 	anEpisodeA �<B�;
�< 
inshB o  ���:�: 0 altshow altShow�;  ? C�9C r  ��DED c  ��FGF o  ���8�8 0 altshow altShowG m  ���7
�7 
ctxtE o      �6�6 0 
currentloc 
currentLoc�9  �M  - k  �
HH IJI Q  ��KL�5K r  ��MNM I ���4�3O
�4 .corecrel****      � null�3  O �2PQ
�2 
koclP m  ���1
�1 
cfolQ �0RS
�0 
inshR o  ���/�/ 0 viddirectory vidDirectoryS �.T�-
�. 
prdtT K  ��UU �,V�+
�, 
pnamV o  ���*�* 0 showname showName�+  �-  N o      �)�) 0 altshow altShowL R      �(�'�&
�( .ascrerr ****      � ****�'  �&  �5  J WXW I ���%YZ
�% .coremoveobj        obj Y o  ���$�$ 0 	anepisode 	anEpisodeZ �#[�"
�# 
insh[ o  ���!�! 0 altshow altShow�"  X \� \ r  �
]^] c  �_`_ o  ��� 0 altshow altShow` m  �
� 
ctxt^ o      �� 0 
currentloc 
currentLoc�   �N  �  avoids html files   � �aa " a v o i d s   h t m l   f i l e s�e  �d  � bcb l defd r  ghg n  iji m  �
� 
cfolj o  �� 0 dumpdirectory dumpDirectoryh o      �� 0 	parentfol 	parentFole " used as a delimiter (hehehe)   f �kk 8 u s e d   a s   a   d e l i m i t e r   ( h e h e h e )c lml r  &non n  "pqp 1  "�
� 
pnamq o  �� 0 	parentfol 	parentFolo o      �� 0 
parentname 
parentNamem rsr r  '2tut c  '.vwv o  '*�� 0 
currentloc 
currentLocw m  *-�
� 
ctxtu o      �� 0 pathname pathNames xyx l 3Ez{|z r  3E}~} n 3A� I  4A���� 0 replace_chars  � ��� o  47�� 0 pathname pathName� ��� m  7:�� ���   � ��� m  :=�� ���  _�  �  �  f  34~ o      �� 0 pathname pathName{  changes " " to "_"   | ��� $ c h a n g e s   "   "   t o   " _ "y ��� l FQ���� r  FQ��� o  FI�� 0 
parentname 
parentName� n     ��� 1  LP�
� 
txdl� 1  IL�
� 
ascr�  this all points   � ���  t h i s   a l l   p o i n t s� ��� l R^���� r  R^��� n  RZ��� 4  UZ��
� 
citm� m  XY�
�
 � o  RU�	�	 0 pathname pathName� o      �� 0 	almostloc 	almostLoc�  to the file for the HTML   � ��� 0 t o   t h e   f i l e   f o r   t h e   H T M L� ��� r  _j��� o  _b�� 0 episodename episodeName� n     ��� 1  ei�
� 
txdl� 1  be�
� 
ascr� ��� r  k{��� b  kw��� n  ks��� 4  ns��
� 
citm� m  qr�� � o  kn�� 0 	almostloc 	almostLoc� o  sv�� 0 episodename episodeName� o      � �  0 	nearlyloc 	nearlyLoc� ��� r  |���� n  |���� 7 �����
�� 
ctxt� l �������� [  ����� l �������� I �������
�� .sysooffslong    ��� null��  � ����
�� 
psof� m  ���� ���  :� �����
�� 
psin� o  ������ 0 	nearlyloc 	nearlyLoc��  ��  ��  � m  ������ ��  ��  � m  ��������� o  |���� 0 	nearlyloc 	nearlyLoc� o      ���� 0 fileloc fileLoc� ��� r  ����� n ����� I  ��������� 0 replace_chars  � ��� o  ������ 0 fileloc fileLoc� ��� m  ���� ���  :� ���� m  ���� ���  /��  ��  �  f  ��� o      ���� 0 fileloc fileLoc� ��� l ��������  � \ V----------------------------------------------------------------------------....###...   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . . . . # # # . . .� ��� l ��������  � \ V-----------------------------------------------------------------.-----------..##.##..   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . - - - - - - - - - - - . . # # . # # . .� ��� l ������ r  ����� J  ���� ���� m  ���� ���  ��  � n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� % ---------------------..##...##.   � ��� > - - - - - - - - - - - - - - - - - - - - - . . # # . . . # # .� ��� l ������ Q  ������� l ������ l ������ I �������
�� .corecrel****      � null��  � ����
�� 
kocl� m  ����
�� 
file� ����
�� 
insh� o  ������ 0 ashow aShow� �����
�� 
prdt� K  ���� �����
�� 
pnam� o  ������ 0 docname docName��  ��  �  ######   � ���  # # # # # #� P Jprevents duplicates from being written-------------------------..##.....##   � �   � p r e v e n t s   d u p l i c a t e s   f r o m   b e i n g   w r i t t e n - - - - - - - - - - - - - - - - - - - - - - - - - . . # # . . . . . # #� R      ������
�� .ascrerr ****      � ****��  ��  ��  � R L------------------------------------------------------------------.##.....##   � � � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . # #� �� Z  ������ J  �� �� I ������
�� .coredoexbool        obj  n ��	 4  ����

�� 
file
 l ������ o  ������ 0 docname docName��  ��  	 o  ������ 0 ashow aShow��  ��   l �� k  ��  r  � n � 4   ��
�� 
file l ���� o  ���� 0 docname docName��  ��   o  � ���� 0 ashow aShow o      ���� 0 dfile dFile  r   c   o  ���� 0 dfile dFile m  ��
�� 
alis o      ���� 0 episodefile episodeFile  l �� !��    &  Code for episode html text file!   ! �"" @ C o d e   f o r   e p i s o d e   h t m l   t e x t   f i l e ! #$# l ��%&��  % @ :you should modify this for your own coding needs of course   & �'' t y o u   s h o u l d   m o d i f y   t h i s   f o r   y o u r   o w n   c o d i n g   n e e d s   o f   c o u r s e$ ()( Z  |*+��,* = #-.- n  /0/ 1  ��
�� 
bhit0 o  ���� 0 presubquery preSubQuery. m  "11 �22  Y e s+ k  &R33 454 r  &,676 J  &(����  7 o      ���� 0 subtitlehtml subtitleHTML5 898 r  -8:;: b  -4<=< m  -0>> �?? : . . / . . / . . / . . / v i d e o s / s u b t i t l e s /= o  03���� 0 episodetitle episodeTitle; o      ���� 0 almostsubloc almostSubLoc9 @A@ r  9DBCB n 9@DED 1  <@��
�� 
txdlE 1  9<��
�� 
ascrC o      ���� 0 oldtid oldTIDA FGF r  EPHIH m  EHJJ �KK  .I n     LML 1  KO��
�� 
txdlM 1  HK��
�� 
ascrG NON r  Q\PQP n  QXRSR 2  TX��
�� 
citmS o  QT���� 0 
menuchoice 
menuChoiceQ o      ���� 0 
allchoices 
allChoicesO TUT X  ]"V��WV Z  sXY����X E  sxZ[Z o  sv���� 0 
menuchoice 
menuChoice[ o  vw���� 0 anitem anItemY k  {\\ ]^] r  {�_`_ o  {~���� 0 oldtid oldTID` n     aba 1  ����
�� 
txdlb 1  ~���
�� 
ascr^ cdc r  ��efe n ��ghg 1  ����
�� 
txdlh 1  ����
�� 
ascrf o      ���� 0 oldtid oldTIDd iji r  ��klk m  ��mm �nn    - -  l n     opo 1  ����
�� 
txdlp 1  ����
�� 
ascrj qrq r  ��sts n  ��uvu 4 ����w
�� 
citmw m  ������ v o  ������ 0 anitem anItemt o      ���� 0 
theheading 
theHeadingr xyx r  ��z{z n  ��|}| 4 ����~
�� 
citm~ m  ������ } o  ������ 0 anitem anItem{ o      ���� 0 namelang nameLangy � r  ����� o  ������ 0 oldtid oldTID� n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ����� n ����� 1  ����
�� 
txdl� 1  ����
�� 
ascr� o      ���� 0 oldtid oldTID� ��� r  ����� m  ���� ���  .� n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ����� b  ����� b  ����� b  ����� o  ������ 0 almostsubloc almostSubLoc� m  ���� ���  .� o  ������ 0 namelang nameLang� o  ������ 0 subtypequery subTypeQuery� o      ���� 0 subloc subLoc� ��� r  ���� b  ���� b  ���� b  ���� b  � ��� b  ����� b  ����� b  ����� m  ���� ��� : < t r a c k   k i n d = ' s u b t i t l e s '   s r c = '� o  ������ 0 subloc subLoc� m  ���� ���  '   s r c l a n g = '� o  ������ 0 
theheading 
theHeading� m  ���� ���  '   l a b e l = '� l 
 ������ o   ���� 0 namelang nameLang��  ��  � m  �� ���  '   / >� o  ��
�� 
ret � o      ���� 0 	totallist 	totalList� ���� s  ��� o  ���� 0 	totallist 	totalList� n      ���  ;  � o  ���� 0 subtitlehtml subtitleHTML��  ��  ��  �� 0 anitem anItemW o  `c���� 0 
allchoices 
allChoicesU ���� r  #R��� b  #N��� b  #J��� b  #F��� b  #B��� b  #>��� b  #:��� b  #6��� b  #2��� b  #.��� b  #*��� m  #&�� ��� l < ! D O C T Y P E   h t m l > 
 < h t m l > 	 	       
         < h e a d > 
                 < t i t l e >� o  &)���� 0 showname showName� m  *-�� ���	� < / t i t l e > 
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
             d a t a - s e t u p = ' { " e x a m p l e _ o p t i o n " : t r u e } ' >     
             < s o u r c e   s r c = ' . . / . . / . . / . . /� o  .1���� 0 fileloc fileLoc� m  25�� ��� h '   t y p e = ' v i d e o / m p 4 ' / > 
             < s o u r c e   s r c = ' . . / . . / . . / . . /� o  69���� 0 fileloc fileLoc� m  :=�� ��� h '   t y p e = ' v i d e o / o g g ' / > 
             < s o u r c e   s r c = ' . . / . . / . . / . . /� o  >A���� 0 fileloc fileLoc� m  BE�� ��� : '   t y p e = ' v i d e o / w e b m '   / > 
            � o  FI���� 0 subtitlehtml subtitleHTML� m  JM�� ���� 
                     < / v i d e o > 
                     < b u t t o n   i d = ' f u l l s c r e e n v i d '   c l a s s = ' b u t t o n ' > F u l l s c r e e n   v i d e o < / b u t t o n > 
                     < s c r i p t   t y p e = ' t e x t / j a v a s c r i p t ' > 
                             ( f u n c t i o n ( w i n d o w ,   d o c u m e n t ) { 
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
                         < / s c r i p t > 
             < / b o d y > 
     < / h t m l >� o      ���� 0 episodetext episodeText��  ��  , r  U|��� b  Ux��� b  Ut��� b  Up��� b  Ul��� b  Uh��� b  Ud��� b  U`��� b  U\��� m  UX�� ��� x < ! D O C T Y P E   h t m l > 
 < h t m l > 	 	 	 	 	 	 	 	 	 	 	 	 	 	 	       
         < h e a d > 
 	 < t i t l e >� o  X[�� 0 showname showName� m  \_�� ���
� < / t i t l e > 	 	 	 	 	 	 	 	 	 	 	 	 	 	 
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
                     < s o u r c e   s r c = ' . . / . . / . . / . . /� o  `c�~�~ 0 fileloc fileLoc� m  dg�� ��� p '   t y p e = ' v i d e o / m p 4 ' / > 
                     < s o u r c e   s r c = ' . . / . . / . . / . . /� o  hk�}�} 0 fileloc fileLoc� m  lo�� ��� p '   t y p e = ' v i d e o / o g g ' / > 
                     < s o u r c e   s r c = ' . . / . . / . . / . . /� o  ps�|�| 0 fileloc fileLoc� m  tw�� ���� '   t y p e = ' v i d e o / w e b m '   / > 
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
 < / h t m l >� o      �{�{ 0 episodetext episodeText) ��z� P  }���y � r  �� n �� I  ���x�w�x 0 	writecode 	writeCode  o  ���v�v 0 episodefile episodeFile �u o  ���t�t 0 episodetext episodeText�u  �w    f  �� o      �s�s 0 episodefile episodeFile�y    �r�q
�r consrmte�q  �z   ) #-------------------------.##.....##    �		 F - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . # #��  ��  ��  �i 0 	anepisode 	anEpisode� o  �p�p 0 episodelist episodeList� 

 r  �� b  �� o  ���o�o 0 showname showName m  �� � 
 . h t m l o      �n�n 0 docname docName  r  �� c  �� o  ���m�m 0 showname showName m  ���l
�l 
ctxt o      �k�k 0 altshowname altShowName  r  �� n �� I  ���j�i�j 0 replace_chars     o  ���h�h 0 altshowname altShowName  !"! m  ��## �$$  _" %�g% m  ��&& �''   �g  �i    f  �� o      �f�f 0 altshowname altShowName ()( Q  ��*+�e* I ���d�c,
�d .corecrel****      � null�c  , �b-.
�b 
kocl- m  ���a
�a 
file. �`/0
�` 
insh/ o  ���_�_ 0 aletter aLetter0 �^1�]
�^ 
prdt1 K  ��22 �\3�[
�\ 
pnam3 o  ���Z�Z 0 docname docName�[  �]  + R      �Y�X�W
�Y .ascrerr ****      � ****�X  �W  �e  ) 454 Z  �=67�V�U6 J  � 88 9�T9 I ���S:�R
�S .coredoexbool        obj : n ��;<; 4  ���Q=
�Q 
file= l ��>�P�O> o  ���N�N 0 docname docName�P  �O  < o  ���M�M 0 aletter aLetter�R  �T  7 k  9?? @A@ r  BCB n DED 4  �LF
�L 
fileF l 
G�K�JG o  
�I�I 0 docname docName�K  �J  E o  �H�H 0 aletter aLetterC o      �G�G 0 dfile dFileA HIH r  JKJ c  LML o  �F�F 0 dfile dFileM m  �E
�E 
alisK o      �D�D 0 episodefile episodeFileI NON l #PQRP r  #STS m  UU �VV  < l i > < a   h r e f = 'T o      �C�C 0 	listpart1 	listPart1Q . (auto generate HTML lists-----.#######...   R �WW P a u t o   g e n e r a t e   H T M L   l i s t s - - - - - . # # # # # # # . . .O XYX l $+Z[\Z r  $+]^] m  $'__ �``  ' >^ o      �B�B 0 	listpart6 	listPart6[ K E-------------------------------------------------.##...........##.	     \ �aa � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . # # . 	    Y bcb l ,3defd r  ,3ghg m  ,/ii �jj  < / a > < / l i >h o      �A�A 0 	listpart8 	listPart8e ? 9---------------------------------------.##...........##.	   f �kk r - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . # # . 	c lml l 4:nopn r  4:qrq J  46�@�@  r o      �?�? 0 showhtmllist showHtmlListo > 8--------------------------------------------.#######....   p �ss p - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # # # # # # . . . .m tut l ;Dvwxv r  ;Dyzy n ;@{|{ 2  <@�>
�> 
file| o  ;<�=�= 0 ashow aShowz o      �<�< 0 allfiles allFilesw 7 1--------------------------------.##...........##.   x �}} b - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . # # .u ~~ X  E���;�� l [����� Z  [����:�9� = [d��� n  [`��� 1  \`�8
�8 
nmxt� o  [\�7�7 0 afile aFile� m  `c�� ���  h t m l� l g����� k  g��� ��� r  gt��� c  gp��� n  gl��� 1  hl�6
�6 
pnam� o  gh�5�5 0 afile aFile� m  lo�4
�4 
ctxt� o      �3�3 0 htmlfile htmlFile� ��� r  u���� n  u���� 7 x��2��
�2 
ctxt� m  ~��1�1 � l ����0�/� \  ����� l ����.�-� I ���,�+�
�, .sysooffslong    ��� null�+  � �*��
�* 
psof� m  ���� ���  .� �)��(
�) 
psin� o  ���'�' 0 htmlfile htmlFile�(  �.  �-  � m  ���&�& �0  �/  � o  ux�%�% 0 htmlfile htmlFile� o      �$�$  0 trueseasonname trueSeasonName� ��� r  ����� n ����� I  ���#��"�# 0 replace_chars  � ��� o  ���!�!  0 trueseasonname trueSeasonName� ��� m  ���� ���  _� �� � m  ���� ���   �   �"  �  f  ��� o      ��  0 trueseasonname trueSeasonName� ��� r  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� o  ���� 0 	listpart1 	listPart1� m  ���� ���  . . / . . / . . / M o v i e s� m  ���� ���  /� o  ���� 0 
azmenuname 
azMenuName� m  ���� ���  /� o  ���� 0 
lettername 
letterName� m  ���� ���  /� o  ���� 0 showname showName� m  ���� ���  /� o  ���� 0 htmlfile htmlFile� o  ���� 0 	listpart6 	listPart6� o  ����  0 trueseasonname trueSeasonName� o  ���� 0 	listpart8 	listPart8� o      �� 0 	totallist 	totalList� ��� s  ����� o  ���� 0 	totallist 	totalList� n      ���  ;  ��� o  ���� 0 showhtmllist showHtmlList�  � $ -----------------.#######....	   � ��� < - - - - - - - - - - - - - - - - - . # # # # # # # . . . . 	�:  �9  � > 8---------------------------------------.##...........##.   � ��� p - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . # # .�; 0 afile aFile� o  HK�� 0 allfiles allFiles ��� r  �!��� b  ���� b  ���� b  ���� b  ���� b  ���� b  �	��� b  ���� b  ���� m  ���� ��� D < ! D o c t y p e   h t m l > 
 < h e a d > 
         < t i t l e >� o  � �� 0 showname showName� m  �� ���� < / t i t l e > 
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
                         < l i > < a   h r e f = ' . . / . . / . . / M o v i e s / A - Z m e n u /� o  �� 0 
lettername 
letterName� m  	   �� . h t m l ' >   . . < / a > < / l i > 
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
                         c o l o r : # 7 0 8 0 9 0 ; p o s i t i o n : a b s o l u t e ; t o p : 2 ; l e f t : 2 0 p x ; h e i g h t : 1 0 0 p x ; w i d t h : 6 0 0 p x ; ' >� o  �� 0 altshowname altShowName� m   � � < / h e a d e r >                 
                 < u l   c l a s s = ' S E _ n a v '   s t y l e = ' p o s i t i o n : a b s o l u t e ; t o p : 1 1 0 p x ; ' >� l 	�� o  �� 0 showhtmllist showHtmlList�  �  � m   � F 
 	 	 < / u l > 
         < / d i v > 
 < / b o d y > 
 < / h t m l >� o      �� 0 episodetext episodeText� �
 P  "9�		 r  )8

 n )4 I  *4��� 0 	writecode 	writeCode  o  *-�� 0 episodefile episodeFile � o  -0�� 0 episodetext episodeText�  �    f  )* o      �� 0 episodefile episodeFile�	  	 ��
� consrmte�  �
  �V  �U  5  r  >I b  >E o  >A� �  0 
lettername 
letterName m  AD � 
 . h t m l o      ���� 0 docname docName  Q  Jr�� I Mi����
�� .corecrel****      � null��   �� 
�� 
kocl m  QT��
�� 
file  ��!"
�� 
insh! l WX#����# o  WX���� 0 azmenu azMenu��  ��  " ��$��
�� 
prdt$ K  [c%% ��&��
�� 
pnam& o  ^a���� 0 docname docName��  ��   R      ������
�� .ascrerr ****      � ****��  ��  ��   '��' Z  s�()����( J  s�** +��+ I s��,��
�� .coredoexbool        obj , n s{-.- 4  t{��/
�� 
file/ l wz0����0 o  wz���� 0 docname docName��  ��  . o  st���� 0 azmenu azMenu��  ��  ) k  ��11 232 l ��4564 r  ��787 n ��9:9 4  ����;
�� 
file; l ��<����< o  ������ 0 docname docName��  ��  : o  ������ 0 azmenu azMenu8 o      ���� 0 dfile dFile5  			-----..######...   6 �== & 	 	 	 - - - - - . . # # # # # # . . .3 >?> l ��@AB@ r  ��CDC c  ��EFE o  ������ 0 dfile dFileF m  ����
�� 
alisD o      ���� 0 episodefile episodeFileA 0 *-------------------------.##...........##.   B �GG T - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . # # .? HIH l ��JKLJ r  ��MNM m  ��OO �PP  < l i > < a   h r e f = 'N o      ���� 0 	listpart1 	listPart1K 1 +------------------------.##................   L �QQ V - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . . . . . .I RSR l ��TUVT r  ��WXW m  ��YY �ZZ  ' >X o      ���� 0 	listpart6 	listPart6U ? 9--------------------------------------.##................   V �[[ r - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . . . . . .S \]\ l ��^_`^ r  ��aba m  ��cc �dd  < / a > < / l i >b o      ���� 0 	listpart8 	listPart8_ 6 0----------------------------.##.................   ` �ee ` - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . . . . . . .] fgf l ��hijh r  ��klk J  ������  l o      ����  0 letterhtmllist letterHtmlListi 8 2---------------------------------.##..........##..   j �mm d - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . # # . .g non l ��pqrp r  ��sts n ��uvu 2  ����
�� 
filev o  ������ 0 aletter aLettert o      ���� 0 allfiles allFilesq ( "----------------------.######. ...   r �ww D - - - - - - - - - - - - - - - - - - - - - - . # # # # # # .   . . .o xyx X  �rz��{z l �m|}~| Z  �m����� = ����� n  ����� 1  ����
�� 
nmxt� o  ������ 0 afile aFile� m  ���� ���  h t m l� k  �i�� ��� r  ����� c  ����� n  ����� 1  ����
�� 
pnam� o  ������ 0 afile aFile� m  ����
�� 
ctxt� o      ���� 0 htmlfile htmlFile� ��� r  ���� n  ���� 7 �����
�� 
ctxt� m  ����� � l ������ \  ��� l ������ I �����
�� .sysooffslong    ��� null��  � ����
�� 
psof� m  
�� ���  .� �����
�� 
psin� o  ���� 0 htmlfile htmlFile��  ��  ��  � m  ���� ��  ��  � o  ������ 0 htmlfile htmlFile� o      ���� 0 trueshowname trueShowName� ��� r  0��� n ,��� I  ,������� 0 replace_chars  � ��� o  "���� 0 trueshowname trueShowName� ��� m  "%�� ���  _� ���� m  %(�� ���   ��  ��  �  f  � o      ���� 0 trueshowname trueShowName� ��� r  1`��� b  1\��� b  1X��� b  1T��� b  1P��� b  1L��� b  1H��� b  1D��� b  1@��� b  1<��� b  18��� o  14���� 0 	listpart1 	listPart1� m  47�� ���  . . / . . / M o v i e s� m  8;�� ���  /� o  <?���� 0 
azmenuname 
azMenuName� m  @C�� ���  /� o  DG���� 0 
lettername 
letterName� m  HK�� ���  /� o  LO���� 0 htmlfile htmlFile� o  PS���� 0 	listpart6 	listPart6� o  TW���� 0 trueshowname trueShowName� o  X[���� 0 	listpart8 	listPart8� o      ���� 0 	totallist 	totalList� ���� s  ai��� o  ad���� 0 	totallist 	totalList� n      ���  ;  gh� o  dg����  0 letterhtmllist letterHtmlList��  ��  ��  } 1 +-------------------------------------------   ~ ��� V - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -�� 0 afile aFile{ o  ������ 0 allfiles allFilesy ��� Z  s�������� = s~��� c  sz��� o  sv���� 0 
lettername 
letterName� m  vy��
�� 
TEXT� m  z}�� ���  -� r  ����� c  ����� m  ���� ���  #� m  ����
�� 
TEXT� o      ���� 0 
lettername 
letterName��  ��  � ��� r  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ��� D < ! D o c t y p e   h t m l > 
 < h e a d > 
         < t i t l e >� o  ������ 0 
lettername 
letterName� m  ���� ���& < / t i t l e > 
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
                         c o l o r : # 7 0 8 0 9 0 ; p o s i t i o n : a b s o l u t e ; t o p : 2 ; l e f t : 2 0 p x ; h e i g h t : 5 0 p x ; w i d t h : 3 0 0 p x ' >� o  ������ 0 
lettername 
letterName� m  ���� ��� � < / h e a d e r >                 
                 < u l   c l a s s = ' S E _ n a v '   s t y l e = ' p o s i t i o n : a b s o l u t e ; t o p : 7 5 p x ' >� l 	�������� o  ������  0 letterhtmllist letterHtmlList��  ��  � m  ���� �   H 
 	 	   < / u l > 
         < / d i v > 
 < / b o d y > 
 < / h t m l >� o      ���� 0 episodetext episodeText� �� P  ���� r  �� n �� I  �������� 0 	writecode 	writeCode 	
	 o  ������ 0 episodefile episodeFile
 �� o  ������ 0 episodetext episodeText��  ��    f  �� o      ���� 0 episodefile episodeFile��   ����
�� consrmte��  ��  ��  ��  ��  �p 0 ashow aShow� o  ������ 0 showlist showList�  l �� r  �� b  �� o  ������ 0 
azmenuname 
azMenuName m  �� � 
 . h t m l o      ���� 0 docname docName 4 .------------------------------------.########.    � \ - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # # # # # # # .  l � Q  ��� l �� ! l ��"#$" I ������%
�� .corecrel****      � null��  % ��&'
�� 
kocl& m  ����
�� 
file' ��()
�� 
insh( l ��*����* o  ������ 0 dumpdirectory dumpDirectory��  ��  ) ��+��
�� 
prdt+ K  ��,, ��-��
�� 
pnam- o  ������ 0 docname docName��  ��  #  ##...............##   $ �.. & # # . . . . . . . . . . . . . . . # #  k e-----------------------------------------------------------------------------------.##.............##   ! �// � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . . . # # R      �����
�� .ascrerr ****      � ****��  �  ��   h b-----------------------------------------------------------------------------.##................##    �00 � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . . . . . . # # 1�~1 Z  	Z23�}�|2 J  	44 5�{5 I 	�z6�y
�z .coredoexbool        obj 6 n 	787 4  �x9
�x 
file9 l :�w�v: o  �u�u 0 docname docName�w  �v  8 o  	�t�t 0 dumpdirectory dumpDirectory�y  �{  3 l V;<=; k  V>> ?@? l *ABCA r  *DED n &FGF 4  &�sH
�s 
fileH l "%I�r�qI o  "%�p�p 0 docname docName�r  �q  G o  �o�o 0 dumpdirectory dumpDirectoryE o      �n�n 0 dfile dFileB 4 .----------------------------.##.............##   C �JJ \ - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . . . # #@ KLK l +6MNOM r  +6PQP c  +2RSR o  +.�m�m 0 dfile dFileS m  .1�l
�l 
alisQ o      �k�k 0 episodefile episodeFileN 9 3-----------------------------------------.########.   O �TT f - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # # # # # # # .L UVU r  7>WXW m  7:YY �ZZ)  < ! D o c t y p e   h t m l > 
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
 < / h t m l >X o      �j�j 0 episodetext episodeTextV [�i[ P  ?V\�h]\ r  FU^_^ n FQ`a` I  GQ�gb�f�g 0 	writecode 	writeCodeb cdc o  GJ�e�e 0 episodefile episodeFiled e�de o  JM�c�c 0 episodetext episodeText�d  �f  a  f  FG_ o      �b�b 0 episodefile episodeFile�h  ] �a�`
�a consrmte�`  �i  < 4 .---------------------------.##..............##   = �ff \ - - - - - - - - - - - - - - - - - - - - - - - - - - - . # # . . . . . . . . . . . . . . # #�}  �|  �~  �y 0 aletter aLetter� o  ���_�_ 0 
letterlist 
letterList�z  �� 0 azmenu azMenu� o  ���^�^ 0 azlist azList��  �  Movie section!   � �gg  M o v i e   s e c t i o n !��  ��  v hih r  i�jkj b  i�lml b  i�non b  i�pqp b  i�rsr b  i�tut b  i�vwv b  i�xyx b  i�z{z b  i�|}| b  i�~~ b  i���� b  i���� b  i���� b  i���� b  i���� b  i���� b  i���� b  i���� b  i���� b  i���� b  i���� b  i���� b  i|��� b  ix��� b  it��� b  ip��� m  il�� ���  -� m  lo�� ���  A� m  ps�� ���  B� m  tw�� ���  C� m  x{�� ���  D� m  |�� ���  E� m  ���� ���  F� m  ���� ���  G� m  ���� ���  H� m  ���� ���  I� m  ���� ���  J� m  ���� ���  K� m  ���� ���  L� m  ���� ���  M� m  ���� ���  N� m  ���� ���  O� m  ���� ���  P m  ���� ���  Q} m  ���� ���  R{ m  ���� ���  Sy m  ���� ���  Tw m  ���� ���  Uu m  ���� ���  Vs m  ���� ���  Wq m  ���� ���  Xo m  ���� ���  Ym m  ���� ���  Zk o      �]�] 0 
allletters 
allLettersi ��� r  ����� c  ����� n  ����� 2  ���\
�\ 
cha � o  ���[�[ 0 
allletters 
allLetters� m  ���Z
�Z 
TEXT� o      �Y�Y 0 allitems allItems� ��� l ������ X  ����X�� Z  �����W�V� H  ��� E  ���� o  ��U�U  0 createdletters createdLetters� o  �T�T 0 anitem anItem� k  ��� ��� r  ��� o  	�S�S 0 anitem anItem� o      �R�R 0 
lettername 
letterName� ��� r  ��� b  ��� o  �Q�Q 0 
lettername 
letterName� m  �� ��� 
 . h t m l� o      �P�P 0 docname docName� ��� Q  B���O� I 9�N�M�
�N .corecrel****      � null�M  � �L��
�L 
kocl� m  !$�K
�K 
file� �J��
�J 
insh� l '( �I�H  o  '(�G�G 0 azmenu azMenu�I  �H  � �F�E
�F 
prdt K  +3 �D�C
�D 
pnam o  .1�B�B 0 docname docName�C  �E  � R      �A�@�?
�A .ascrerr ****      � ****�@  �?  �O  � �> Q  C��= l F�	 Z  F�
�<�;
 J  FT �: I FR�9�8
�9 .coredoexbool        obj  n FN 4  GN�7
�7 
file l JM�6�5 o  JM�4�4 0 docname docName�6  �5   o  FG�3�3 0 azmenu azMenu�8  �:   k  W�  l Wc r  Wc n W_ 4  X_�2
�2 
file l [^�1�0 o  [^�/�/ 0 docname docName�1  �0   o  WX�.�. 0 azmenu azMenu o      �-�- 0 dfile dFile  					d8888    �  	 	 	 	 d 8 8 8 8  !  l do"#$" r  do%&% c  dk'(' o  dg�,�, 0 dfile dFile( m  gj�+
�+ 
alis& o      �*�* 0 episodefile episodeFile# ( "--------------------------d8P888     $ �)) D - - - - - - - - - - - - - - - - - - - - - - - - - - d 8 P 8 8 8    ! *+* r  pw,-, m  ps.. �//  - o      �)�)  0 letterhtmllist letterHtmlList+ 010 Z  x�23�(�'2 = x�454 c  x676 o  x{�&�& 0 
lettername 
letterName7 m  {~�%
�% 
TEXT5 m  �88 �99  -3 r  ��:;: c  ��<=< m  ��>> �??  #= m  ���$
�$ 
TEXT; o      �#�# 0 
lettername 
letterName�(  �'  1 @A@ r  ��BCB b  ��DED b  ��FGF b  ��HIH b  ��JKJ b  ��LML b  ��NON m  ��PP �QQ D < ! D o c t y p e   h t m l > 
 < h e a d > 
         < t i t l e >O o  ���"�" 0 
lettername 
letterNameM m  ��RR �SS, < / t i t l e > 
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
                         c o l o r : # 7 0 8 0 9 0 ; p o s i t i o n : a b s o l u t e ; t o p : 2 ; l e f t : 2 0 p x ; h e i g h t : 1 0 0 p x ; w i d t h : 6 0 0 p x ' >K o  ���!�! 0 
lettername 
letterNameI m  ��TT �UU � < / h e a d e r >                 
                 < u l   c l a s s = ' S E _ n a v '   s t y l e = ' p o s i t i o n : a b s o l u t e ; t o p : 1 2 5 p x ; ' >G l 	��V� �V o  ����  0 letterhtmllist letterHtmlList�   �  E m  ��WW �XX H 
 	 	   < / u l > 
         < / d i v > 
 < / b o d y > 
 < / h t m l >C o      �� 0 episodetext episodeTextA Y�Y P  ��Z�[Z r  ��\]\ n ��^_^ I  ���`�� 0 	writecode 	writeCode` aba o  ���� 0 episodefile episodeFileb c�c o  ���� 0 episodetext episodeText�  �  _  f  ��] o      �� 0 episodefile episodeFile�  [ ��
� consrmte�  �  �<  �;   Z T---------------------------------------------------------------------------888888888   	 �dd � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8 8 8 8 8 8 8 R      ���
� .ascrerr ****      � ****�  �  �=  �>  �W  �V  �X 0 anitem anItem� o  ���� 0 allitems allItems� S M--------------------------------------------------------------------------888   � �ee � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 8 8 8� f�f l ������  �  �  �  � : 4first part selects where to store the original files   � �gg h f i r s t   p a r t   s e l e c t s   w h e r e   t o   s t o r e   t h e   o r i g i n a l   f i l e s� m  lohh�                                                                                  MACS  alis    l  
Untitled 1                 ����H+   ��
Finder.app                                                      ǟM�        ����  	                CoreServices    ��.I      ǟ��     �� �t �s  1Untitled 1:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p   
 U n t i t l e d   1  &System/Library/CoreServices/Finder.app  / ��  ��  ��  � iji l     �
�	��
  �	  �  j klk l     ����  �  �  l mnm l     ����  �  �  n opo l     �qr�  q  ------------   r �ss  - - - - - - - - - - - -p tut i     vwv I      � x���  0 	writecode 	writeCodex yzy o      ���� 0 episodefile episodeFilez {��{ o      ���� 0 episodetext episodeText��  ��  w l    B|}~| k     B ��� r     ��� I    �����
�� .rdwropenshor       file� o     ���� 0 episodefile episodeFile��  � o      ���� 0 bar  � ��� I   �����
�� .rdwrclosnull���     ****� o    	���� 0 bar  ��  � ��� Q    -����� k    $�� ��� I   ����
�� .rdwrwritnull���     ****� o    ���� 0 episodetext episodeText� �����
�� 
refn� o    ���� 0 episodefile episodeFile��  � ��� I   �����
�� .rdwrclosnull���     ****� o    ���� 0 episodefile episodeFile��  � ���� I   $�����
�� .rdwropenshor       file� o     ���� 0 episodefile episodeFile��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ��� Q   . ?����� I  1 6�����
�� .rdwrclosnull���     ****� o   1 2���� 0 episodefile episodeFile��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ���� L   @ B�� o   @ A���� 0 episodefile episodeFile��  } 1 +don't even ask me why this section works...   ~ ��� V d o n ' t   e v e n   a s k   m e   w h y   t h i s   s e c t i o n   w o r k s . . .u ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 replace_chars  � ��� o      ���� 0 	this_text  � ��� o      ���� 0 search_string  � ���� o      ���� 0 replacement_string  ��  ��  � k      �� ��� r     ��� l    ������ o     ���� 0 search_string  ��  ��  � n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ��� r    ��� n    	��� 2    	��
�� 
citm� o    ���� 0 	this_text  � l     ������ o      ���� 0 	item_list  ��  ��  � ��� r    ��� l   ������ o    ���� 0 replacement_string  ��  ��  � n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ��� r    ��� c    ��� l   ������ o    ���� 0 	item_list  ��  ��  � m    ��
�� 
TEXT� o      ���� 0 	this_text  � ��� r    ��� m    �� ���  � n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ���� L     �� o    ���� 0 	this_text  ��  � ��� l     ��������  ��  ��  � ���� i    ��� I      ������� $0 numbercorrection numberCorrection� ���� o      ���� 0 thename theName��  ��  � k     ?�� ��� p      �� ����� 0 
thenumbers 
theNumbers� ������ 0 numberlabel numberLabel��  � ��� r     ��� n    ��� 1    ��
�� 
txdl� 1     ��
�� 
ascr� o      ���� 0 oldtid oldTID� ��� Y    6�������� k    1�� ��� r    ��� n    ��� 4    ���
�� 
cobj� o    ���� 0 i  � o    ���� 0 
thenumbers 
theNumbers� n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ��� r    "��� n     ��� 2    ��
�� 
citm� o    ���� 0 thename theName� o      ���� 0 thetextbits theTextBits� ��� r   # +��� n   # '��� 4   $ '���
�� 
cobj� m   % &���� � o   # $���� 0 numberlabel numberLabel� n        1   ( *��
�� 
txdl 1   ' (��
�� 
ascr� �� r   , 1 c   , / o   , -���� 0 thetextbits theTextBits m   - .��
�� 
ctxt o      ���� 0 thename theName��  �� 0 i  � m   	 
���� � I  
 ����
�� .corecnte****       **** o   
 ���� 0 
thenumbers 
theNumbers��  ��  � 	 r   7 <

 o   7 8���� 0 oldtid oldTID n      1   9 ;��
�� 
txdl 1   8 9��
�� 
ascr	 �� L   = ? o   = >���� 0 thename theName��  ��       ����   ���������� 0 	writecode 	writeCode�� 0 replace_chars  �� $0 numbercorrection numberCorrection
�� .aevtoappnull  �   � **** ��w�������� 0 	writecode 	writeCode�� ����   ������ 0 episodefile episodeFile�� 0 episodetext episodeText��   �������� 0 episodefile episodeFile�� 0 episodetext episodeText�� 0 bar   ������~�}�|
�� .rdwropenshor       file
�� .rdwrclosnull���     ****
� 
refn
�~ .rdwrwritnull���     ****�}  �|  �� C�j  E�O�j O ��l O�j O�j  W X  hO 
�j W X  hO� �{��z�y�x�{ 0 replace_chars  �z �w�w   �v�u�t�v 0 	this_text  �u 0 search_string  �t 0 replacement_string  �y   �s�r�q�p�s 0 	this_text  �r 0 search_string  �q 0 replacement_string  �p 0 	item_list   �o�n�m�l�
�o 
ascr
�n 
txdl
�m 
citm
�l 
TEXT�x !���,FO��-E�O���,FO��&E�O���,FO� �k��j�i�h�k $0 numbercorrection numberCorrection�j �g�g   �f�f 0 thename theName�i   �e�d�c�b�e 0 thename theName�d 0 oldtid oldTID�c 0 i  �b 0 thetextbits theTextBits �a�`�_�^�]�\�[�Z
�a 
ascr
�` 
txdl�_ 0 
thenumbers 
theNumbers
�^ .corecnte****       ****
�] 
cobj
�\ 
citm�[ 0 numberlabel numberLabel
�Z 
ctxt�h @��,E�O /k�j kh ��/��,FO��-E�O��k/��,FO��&E�[OY��O���,FO� �Y�X�W �V
�Y .aevtoappnull  �   � **** k    �!!  ""  >##  G$$  P%%  Y&&  e''  s((  v))  �**  �++  �,,  �--  �..  // 00 �11 �22 �33 �44 �55 ��U�U  �X  �W   �T�S�R�Q�P�O�N�M�T 0 afile aFile�S 0 ashow aShow�R 0 	anepisode 	anEpisode�Q 0 avid aVid�P 0 azmenu azMenu�O 0 aletter aLetter�N 0 aseason aSeason�M 0 anitem anItem @   ! % ) - 1 5 9 <�L�K E�J N�I W�H b�G n�F�E � ��D � ��C�B�A ��@�?�>�=�<�;�:�9 ��8�7�6 � � � ��5 ��4 ��3 ��2�1%)-0�0�/�.=�-�,�+�*GKOSW[_cgkosw{��������������������������������#'+/37;?CGKOSW[_cgkosw{��������������������������������#'+/37;?CGKOSW[_cgkosw{����)�(��'��&����%��$�#�"�!� �������'��/��������������
�	����������� 9��GJ��������������������������������������FIZ]�����������������������2����T��rtvy������������������������		��		 	N��	U��	[����	q	x	�����	�	�	�	�	�	�	�	�	�	�	�









(
Z
d��
n����
�
���
�
�
�
�
�
�
�
Wak�������������� b��������������������������������7AGY[]`}�����&������1>Jm�����������������#&U_i����������� OYc��������������Y����������������������������.8>PRTW�L 
�K 0 
thenumbers 
theNumbers�J 0 numberlabel numberLabel�I 0 	thespaces 	theSpaces�H 0 	thecolons 	theColons�G 0 	thedashes 	theDashes�F *0 thenormalcharacters theNormalCharacters
�E .sysobeepnull��� ��� long
�D 
btns
�C .sysodlogaskr        TEXT�B 0 htmldeletion htmlDeletion
�A 
bhit
�@ .sysostflalis    ��� null�? 0 targetfolder targetFolder
�> 
ects
�= 
cobj�< 0 allfiles allFiles
�; 
kocl
�: .corecnte****       ****
�9 
nmxt
�8 .coredeloobj        obj �7  �6  �5  0 folderdeletion folderDeletion
�4 
cfol
�3 .miscactvnull��� ��� null�2 0 viddirectory vidDirectory�1 0 presubquery preSubQuery�0 �/ 0 extensionlist extensionList
�. 
prmp
�- 
mlsl
�, .gtqpchltns    @   @ ns  
�+ 
ctxt�* 0 subtypequery subTypeQuery�) ��( 0 subtitlequery subtitleQuery�' 0 
menuchoice 
menuChoice�& 0 dumpdirectory dumpDirectory�% 0 mediachoice mediaChoice�$ 0 showlist showList
�# 
pnam�" 0 showname showName
�! 
file�  0 episodelist episodeList� "0 semiepisodename semiEpisodeName� 0 theextension theExtension
� 
psof
� 
psin
� .sysooffslong    ��� null� 0 episodename episodeName
� 
ascr
� 
txdl� 0 
azmenuname 
azMenuName
� 
cha � 0 
lettername 
letterName
� 
citm� 0 
seasonname 
seasonName� 0 	oldletter 	oldLetter
� 
nmbr� 0 numtest numTest� $0 numbercorrection numberCorrection
� 
TEXT
� .coredoexbool        obj 
� kfrmname� 0 alphafolder alphaFolder
�
 
insh
�	 
prdt� 
� .corecrel****      � null� 0 letterfolder letterFolder� 0 
showfolder 
showFolder� 0 seasonfolder seasonFolder
� .coremoveobj        obj � 0 allvids allVids� 0 alabel aLabel�  0 lettertitle letterTitle�� 0 	showtitle 	showTitle�� 0 replace_chars  ��  0 createdletters createdLetters�� 0 tvname tvName�� 0 azlist azList�� 0 
letterlist 
letterList�� 0 
seasonlist 
seasonList�� "0 origepisodename origEpisodeName�� $0 episodeextension episodeExtension�� (0 actualepisodetitle actualEpisodeTitle�� 0 episodetitle episodeTitle�� 0 docname docName�� 0 altshow altShow�� 0 
currentloc 
currentLoc�� 0 	parentfol 	parentFol�� 0 
parentname 
parentName�� 0 pathname pathName�� 0 	almostloc 	almostLoc�� 0 	nearlyloc 	nearlyLoc�� 0 fileloc fileLoc�� 0 dfile dFile
�� 
alis�� 0 episodefile episodeFile�� 0 subtitlehtml subtitleHTML�� 0 almostsubloc almostSubLoc�� 0 oldtid oldTID�� 0 
allchoices 
allChoices�� 0 
theheading 
theHeading�� 0 namelang nameLang�� 0 subloc subLoc
�� 
ret �� 0 	totallist 	totalList�� 0 episodetext episodeText�� 0 	writecode 	writeCode�� 0 altshowname altShowName�� 0 altseasonname altSeasonName�� 0 	listpart1 	listPart1�� 0 	listpart7 	listPart7�� 0 	listpart9 	listPart9��  0 seasonhtmllist seasonHtmlList�� 0 htmlfile htmlFile�� "0 trueepisodename trueEpisodeName�� 0 	listpart6 	listPart6�� 0 	listpart8 	listPart8�� 0 showhtmllist showHtmlList��  0 trueseasonname trueSeasonName��  0 letterhtmllist letterHtmlList�� 0 trueshowname trueShowName�� 0 
allletters 
allLetters�� 0 allitems allItems�� 0 	moviename 	movieName�V������������vE�O�kvE�O�kvE�Oa kvE` Oa kvE` Oa kvE` O*j Oa  �a a a a lvl E` O_ a ,a   [ O*j  E` !O_ !a ",a #-E` $O /_ $[a %a #l &kh  �a ',a (  
�j )Y h[OY��W X * +hY _ a ,a ,  hY hO*j Oa -a a .a /lvl E` 0O_ 0a ,a 1    _ !a ",a 2-j )W X * +hY _ 0a ,a 3  hY hUO*j 4O*j Oa 5j O*j  E` 6O*j Oa 7a a 8a 9lvl E` :O_ :a ,a ; a <a =a >a ?a @vE` AO_ Aa Ba Ca Dfa @ Ea F&E` GOa Ha Ia Ja Ka La Ma Na Oa Pa Qa Ra Sa Ta Ua Va Wa Xa Ya Za [a \a ]a ^a _a `a aa ba ca da ea fa ga ha ia ja ka la ma na oa pa qa ra sa ta ua va wa xa ya za {a |a }a ~a a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �a �vE` �O_ �a Ba �a Dea @ Ea F&E` �Y hO*j Oa �j O*j  E` �Oa �a �a a �a �lvl E` �O_ �a ,a � �_ 6a 2-E` �Ou_ �[a %a #l &kh �a �,a F&E` �O�a �-E` �OB_ �[a %a #l &kh �a �,a F&E` �O_ �a �a �a ',%E` �O_ �[a F\[Zk\Z*a �_ �a �_ �a @ �k2E` �Oa �_ �a �,FOa �E` �O_ �a �k/a F&E` �O_ �a �l/a F&E` �O "_ �E` �Oa �E` �OeE` �O_ �E` �W X * +hO_ �e  )_ �k+ �E` �Y hO_ �a 2_ �a �&/j  _ �a 2_ �a0E`Y $*a %a 2a_ �aa �_ �laE`O_a 2_ �a �&/j  _a 2_ �a0E`Y $*a %a 2a_aa �_ �laE`O_a 2_ �a �&/j  _a 2_ �a0E`Y $*a %a 2a_aa �_ �laE`O_a 2_ �a �&/j  _a 2_ �a0E`	Y $*a %a 2a_aa �_ �laE`	O %_	a �_ �/j  hY �a_	l
W X * +hY h[OY��[OY��OPY_ �a ,a �aE` �O_ 6a ",a �-E`O�_[a %a #l &kh �a �,a F&E`O_a�_a �k/E`O_[a F\[Zk\Z*a �aa �_a @ �k2E`O)_aam+E`O "_E` �Oa �E`OeE` �O_ �E`W X * +hO_ �e  )_k+ �E`Y hO_ �a 2_ �a �&/j  _ �a 2_ �a0E`Y $*a %a 2a_ �aa �_ �laE`O_a 2_a �&/j  _a 2_a0E`Y 2*a %a 2a_aa �_laO_a 2_a0E`O_a 2_a �&/j  _a 2_a0E`Y 2*a %a 2a_aa �_laO_a 2_a0E`O �a_l
W X * +hY h[OY�;Y hUOakv_ �a �,FOa u_ �a ,a �jvE`O_ �a �,E`O_ �a 2-E`O
4_[a %a #l &kh �a �,E` �O�a 2-E`O	|_[a %a #l &kh �a �,E` �O_ �_6GO�a 2-E` �O�_ �[a %a #l &kh �a �,E` �O�a 2-E`O_[a %a #l &kh �a �,E` �O�a �-E` �O�_ �[a %a #l &kh �a ',a.a_ �a �,FO�a �,E` �O_ �E`O)_ �a a!m+E` �O�a ',E`"O_[a F\[Zk\Z*a �_"a �_a @ �k2E`#O_ �[a F\[Zk\Z*a �_"a �_ �a @ �k2E`$O_$a%%E`&O�a ',a' �_ 6a 2_ �/j kv +_ 6a 2_ �/E`(O�a_(l
O_(a F&E`)Y H '*a %a 2a_ 6aa �_ �laE`(W X * +hO�a_(l
O_(a F&E`)Y hY hO_ �a 2,E`*O_*a �,E`+O_)a F&E`,O)_,a-a.m+E`,O)_,a/a0m+E`,O_+_ �a �,FO_,a �l/E`1O__ �a �,FO_1a �k/_%E`2O_2[a F\[Z*a �a3a �_2a @ �k\Zi2E`4Oa5kv_ �a �,FO !*a %a �a�aa �_&laW X * +hO�a �_&/j kv��a �_&/E`6O_6a7&E`8O_ :a ,a9 -jvE`:Oa;_#%E`<O_ �a �,E`=Oa>_ �a �,FO_ �a �-E`?O �_?[a %a #l &kh _ ݧ �_=_ �a �,FO_ �a �,E`=Oa@_ �a �,FO�a �k/E`AO�a �l/E`BO_=_ �a �,FO_ �a �,E`=OaC_ �a �,FO_<_B%_ G%E`DOaE_D%aF%_A%aG%_B%aH%_I%E`JO_J_:6GY h[OY�TOaK_ �%aL%_4%aM%_4%aN%_4%aO%_:%aP%E`QY )aR_ �%aS%_4%aT%_4%aU%_4%aV%E`QOgaW )_8_Ql+XE`8VOaY_ �a �,FY h[OY�/O_ �aZ%E`&O_ �a F&E`[O)_[a\a]m+E`[O_ �a F&E`^O)_^a_a`m+E`^O !*a %a �a�aa �_&laW X * +hO�a �_&/j kvm�a �_&/E`6O_6a7&E`8OaaE`bOacE`dOaeE`fOjvE`gO�a �-E` $O �_ $[a %a #l &kh  �a ',ah  �ai_ �a �,FO_#aj%a �&E`kO_ka �m/E`lO)_kamanm+E`kOao_ �a �,FO)_lapaqm+E`lO_bar%as%_ �%at%_ �%au%_ �%av%_ �%aw%_k%_d%_l%_f%E`JO_J_g6GY h[OY�GOax_ �%ay%_ �%az%_ �%a{%_ �%a|%_[%a}%_^%a~%_g%a%E`QOgaW )_8_Ql+XE`8VY h[OY�O_ �a�%E`&O !*a %a �a�aa �_&laW X * +hO�a �_&/j kv;�a �_&/E`6O_6a7&E`8Oa�E`bOa�E`�Oa�E`�OjvE`�O�a �-E` $O �_ $[a %a #l &kh  �a ',a�  ��a �,a F&E`kO_k[a F\[Zk\Z*a �a�a �_ka @ �k2E`�O)_�a�a�m+E`�O_ba�%a�%_ �%a�%_ �%a�%_ �%a�%_k%_�%_�%_�%E`JO_J_�6GY h[OY�aOa�_ �%a�%_ �%a�%_[%a�%_�%a�%E`QOgaW )_8_Ql+XE`8VY h[OY�_O_ �a�%E`&O !*a %a �a�aa �_&laW X * +hO�a �_&/j kvI�a �_&/E`6O_6a7&E`8Oa�E`bOa�E`�Oa�E`�OjvE`�O�a �-E` $O �_ $[a %a #l &kh  �a ',a�  ��a �,a F&E`kO_k[a F\[Zk\Z*a �a�a �_ka @ �k2E`�O)_�a�a�m+E`�O_ba�%a�%_ �%a�%_ �%a�%_k%_�%_�%_�%E`JO_J_�6GY h[OY�iO_ �a �&a�  a�a �&E` �Y hOa�_ �%a�%_ �%a�%_�%a�%E`QOgaW )_8_Ql+XE`8VY h[OY��O_ �a�%E`&O #*a %a �a_ �aa �_&laW X * +hO_ �a �_&/j kv ?_ �a �_&/E`6O_6a7&E`8Oa�E`QOgaW )_8_Ql+XE`8VY h[OY��Oa�a�%a�%a�%a�%a�%a�%a�%a�%a�%a�%a�%a�%a�%a�%a�%a�%a�%a�%a�%a�%a�%a�%a�%a�%a�%a�%E`�O_�a �-a �&E`�O �_�[a %a #l &kh _� קE` �O_ �a�%E`&O !*a %a �a�aa �_&laW X * +hO ��a �_&/j kv {�a �_&/E`6O_6a7&E`8Oa�E`�O_ �a �&a�  a�a �&E` �Y hOa�_ �%a�%_ �%a�%_�%a�%E`QOgaW )_8_Ql+XE`8VY hW X * +hY h[OY�OPY	�_ �a ,a� _ �a �,E`�O_ �a 2-E`OjvE`O�_[a %a #l &kh �a �,E` �O�a 2-E`O�_[a %a #l &kh �a �,E` �O_ �_6GO�a 2-E` �O�_ �[a %a #l &kh �a �,E` �O�a �-E` �O�_ �[a %a #l &kh �a �,E` �O�a ',a� �a�_ �a �,FOaբa ',%E` �O_ �a �k/E`$O)_$a�a�m+E`$O_$a�%E`&Oa�kv_ �a �,FO_ 6a 2_ �/j kv +_ 6a 2_ �/E`(O�a_(l
O_(a F&E`)Y H '*a %a 2a_ 6aa �_ �laE`(W X * +hO�a_(l
O_(a F&E`)Y hO_ �a 2,E`*O_*a �,E`+O_)a F&E`,O)_,a�a�m+E`,O_+_ �a �,FO_,a �l/E`1O_ �_ �a �,FO_1a �k/_ �%E`2O_2[a F\[Z*a �a�a �_2a @ �k\Zi2E`4O)_4a�a�m+E`4Oa�kv_ �a �,FO !*a %a �a�aa �_&laW X * +hO�a �_&/j kv��a �_&/E`6O_6a7&E`8O_ :a ,a� 1jvE`:Oa�_$%E`<O_ �a �,E`=Oa�_ �a �,FO_ �a �-E`?O �_?[a %a #l &kh _ ݧ �_=_ �a �,FO_ �a �,E`=Oa�_ �a �,FO�a �k/E`AO�a �l/E`BO_=_ �a �,FO_ �a �,E`=Oa�_ �a �,FO_<a�%_B%_ G%E`DOa�_D%a�%_A%a�%_B%a�%_I%E`JO_J_:6GY h[OY�POa�_ �%a�%_4%a�%_4%a�%_4%a�%_:%a�%E`QY )a�_ �%a�%_4%a�%_4%a�%_4%a�%E`QOgaW )_8_Ql+XE`8VY h[OY��O_ �a�%E`&O_ �a F&E`[O)_[a�a�m+E`[O !*a %a �a�aa �_&laW X * +hO�a �_&/j kv;�a �_&/E`6O_6a7&E`8Oa�E`bOa�E`�Oa�E`�OjvE`�O�a �-E` $O �_ $[a %a #l &kh  �a ',a�  ��a �,a F&E`kO_k[a F\[Zk\Z*a �a�a �_ka @ �k2E`�O)_�a�a�m+E`�O_ba�%a %_ �%a%_ �%a%_ �%a%_k%_�%_�%_�%E`JO_J_�6GY h[OY�aOa_ �%a%_ �%a%_[%a%_�%a%E`QOgaW )_8_Ql+XE`8VY hO_ �a	%E`&O !*a %a �a�aa �_&laW X * +hO�a �_&/j kvI�a �_&/E`6O_6a7&E`8Oa
E`bOaE`�OaE`�OjvE`�O�a �-E` $O �_ $[a %a #l &kh  �a ',a  ��a �,a F&E`kO_k[a F\[Zk\Z*a �aa �_ka @ �k2E`�O)_�aam+E`�O_ba%a%_ �%a%_ �%a%_k%_�%_�%_�%E`JO_J_�6GY h[OY�iO_ �a �&a  aa �&E` �Y hOa_ �%a%_ �%a%_�%a%E`QOgaW )_8_Ql+XE`8VY h[OY�"O_ �a%E`&O #*a %a �a_ �aa �_&laW X * +hO_ �a �_&/j kv ?_ �a �_&/E`6O_6a7&E`8OaE`QOgaW )_8_Ql+XE`8VY h[OY�a[OY�2Y hOaa%a%a %a!%a"%a#%a$%a%%a&%a'%a(%a)%a*%a+%a,%a-%a.%a/%a0%a1%a2%a3%a4%a5%a6%a7%E`�O_�a �-a �&E`�O �_�[a %a #l &kh _� קE` �O_ �a8%E`&O !*a %a �a�aa �_&laW X * +hO ��a �_&/j kv {�a �_&/E`6O_6a7&E`8Oa9E`�O_ �a �&a:  a;a �&E` �Y hOa<_ �%a=%_ �%a>%_�%a?%E`QOgaW )_8_Ql+XE`8VY hW X * +hY h[OY�OPUascr  ��ޭ