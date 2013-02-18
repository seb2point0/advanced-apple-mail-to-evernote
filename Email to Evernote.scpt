FasdUAS 1.101.10   ��   ��    k             l      ��  ��   SM

Advanced Apple Mail to Evernote
Version 1.0
https://github.com/scouture

// ATTRIBUTION
This script is forked from version 2.04 of "Apple Mail to Evernote" script by Veritrope.com
http://veritrope.com/code/apple-mail-to-evernote/

// TERMS OF USE:
This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License. 
To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/ or send a letter to Creative Commons, 444 Castro Street, Suite 900, Mountain View, California, 94041, USA.

// IMPORTANT LINKS:
-- Original Project Page: http://veritrope.com/code/apple-mail-to-evernote
-- GROWL (App Store Version) (Optional): http://bit.ly/GrowlApp
-- terminal-notifier (Optional): https://github.com/alloy/terminal-notifier/downloads
-- FastScripts (Optional): http://bit.ly/FastScripts
-- Alfred (Optional): http://www.alfredapp.com

// REQUIREMENTS:
THIS SCRIPT REQUIRES LION OR GREATER (OS X 10.7+) TO RUN WITHOUT MODIFICATION

// INSTALLATION:  
-- You can save this script to /Library/Scripts/Mail Scripts and launch it using the system-wide script menu from the Mac OS X menu bar. (The script menu can be activated using the AppleScript Utility application). 
-- To use, highlight the email messages you want to archive into Evernote and run this script file;
-- The "User Switches" below allow you to customize the way this script works.
-- You can save this script as a service and trigger it with a keyboard shortcut.

	(Optional but recommended)
	Easier Keyboard Shortcut with FastScripts
	-- Download and Install FastScripts here: 
	-- http://bit.ly/FastScripts
	Assign to Alfred keyword
	-- Download and install Alfred here:
	-- http://www.alfredapp.com
	

// CHANGELOG:
    	* 1.00 (February 16, 2013) 
	- Fork from v.2.0.4 of "Apple Mail to Evernote" script by Veritrope.com (http://veritrope.com/code/apple-mail-to-evernote/)
	- Made GROWL notifications optional
	- Added OSX notifications with "terminal-notifier"
	- Added the ability to turn off notifications
	- Added mail archiving and flagging
	- Code cleanup
     � 	 	� 
 
 A d v a n c e d   A p p l e   M a i l   t o   E v e r n o t e 
 V e r s i o n   1 . 0 
 h t t p s : / / g i t h u b . c o m / s c o u t u r e 
 
 / /   A T T R I B U T I O N 
 T h i s   s c r i p t   i s   f o r k e d   f r o m   v e r s i o n   2 . 0 4   o f   " A p p l e   M a i l   t o   E v e r n o t e "   s c r i p t   b y   V e r i t r o p e . c o m 
 h t t p : / / v e r i t r o p e . c o m / c o d e / a p p l e - m a i l - t o - e v e r n o t e /  
  
 / /   T E R M S   O F   U S E :  
 T h i s   w o r k   i s   l i c e n s e d   u n d e r   t h e   C r e a t i v e   C o m m o n s   A t t r i b u t i o n - N o n C o m m e r c i a l - S h a r e A l i k e   3 . 0   U n p o r t e d   L i c e n s e .    
 T o   v i e w   a   c o p y   o f   t h i s   l i c e n s e ,   v i s i t   h t t p : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - n c - s a / 3 . 0 /   o r   s e n d   a   l e t t e r   t o   C r e a t i v e   C o m m o n s ,   4 4 4   C a s t r o   S t r e e t ,   S u i t e   9 0 0 ,   M o u n t a i n   V i e w ,   C a l i f o r n i a ,   9 4 0 4 1 ,   U S A .  
  
 / /   I M P O R T A N T   L I N K S :  
 - -   O r i g i n a l   P r o j e c t   P a g e :   h t t p : / / v e r i t r o p e . c o m / c o d e / a p p l e - m a i l - t o - e v e r n o t e  
 - -   G R O W L   ( A p p   S t o r e   V e r s i o n )   ( O p t i o n a l ) :   h t t p : / / b i t . l y / G r o w l A p p  
 - -   t e r m i n a l - n o t i f i e r   ( O p t i o n a l ) :   h t t p s : / / g i t h u b . c o m / a l l o y / t e r m i n a l - n o t i f i e r / d o w n l o a d s  
 - -   F a s t S c r i p t s   ( O p t i o n a l ) :   h t t p : / / b i t . l y / F a s t S c r i p t s 
 - -   A l f r e d   ( O p t i o n a l ) :   h t t p : / / w w w . a l f r e d a p p . c o m  
  
 / /   R E Q U I R E M E N T S :  
 T H I S   S C R I P T   R E Q U I R E S   L I O N   O R   G R E A T E R   ( O S   X   1 0 . 7 + )   T O   R U N   W I T H O U T   M O D I F I C A T I O N  
  
 / /   I N S T A L L A T I O N :      
 - -   Y o u   c a n   s a v e   t h i s   s c r i p t   t o   / L i b r a r y / S c r i p t s / M a i l   S c r i p t s   a n d   l a u n c h   i t   u s i n g   t h e   s y s t e m - w i d e   s c r i p t   m e n u   f r o m   t h e   M a c   O S   X   m e n u   b a r .   ( T h e   s c r i p t   m e n u   c a n   b e   a c t i v a t e d   u s i n g   t h e   A p p l e S c r i p t   U t i l i t y   a p p l i c a t i o n ) .    
 - -   T o   u s e ,   h i g h l i g h t   t h e   e m a i l   m e s s a g e s   y o u   w a n t   t o   a r c h i v e   i n t o   E v e r n o t e   a n d   r u n   t h i s   s c r i p t   f i l e ;  
 - -   T h e   " U s e r   S w i t c h e s "   b e l o w   a l l o w   y o u   t o   c u s t o m i z e   t h e   w a y   t h i s   s c r i p t   w o r k s .  
 - -   Y o u   c a n   s a v e   t h i s   s c r i p t   a s   a   s e r v i c e   a n d   t r i g g e r   i t   w i t h   a   k e y b o a r d   s h o r t c u t .  
  
 	 ( O p t i o n a l   b u t   r e c o m m e n d e d )  
 	 E a s i e r   K e y b o a r d   S h o r t c u t   w i t h   F a s t S c r i p t s  
 	 - -   D o w n l o a d   a n d   I n s t a l l   F a s t S c r i p t s   h e r e :    
 	 - -   h t t p : / / b i t . l y / F a s t S c r i p t s 
 	 A s s i g n   t o   A l f r e d   k e y w o r d 
 	 - -   D o w n l o a d   a n d   i n s t a l l   A l f r e d   h e r e : 
 	 - -   h t t p : / / w w w . a l f r e d a p p . c o m 
 	  
  
 / /   C H A N G E L O G :  
         	 *   1 . 0 0   ( F e b r u a r y   1 6 ,   2 0 1 3 )    
 	 -   F o r k   f r o m   v . 2 . 0 . 4   o f   " A p p l e   M a i l   t o   E v e r n o t e "   s c r i p t   b y   V e r i t r o p e . c o m   ( h t t p : / / v e r i t r o p e . c o m / c o d e / a p p l e - m a i l - t o - e v e r n o t e / ) 
 	 -   M a d e   G R O W L   n o t i f i c a t i o n s   o p t i o n a l 
 	 -   A d d e d   O S X   n o t i f i c a t i o n s   w i t h   " t e r m i n a l - n o t i f i e r " 
 	 -   A d d e d   t h e   a b i l i t y   t o   t u r n   o f f   n o t i f i c a t i o n s 
 	 -   A d d e d   m a i l   a r c h i v i n g   a n d   f l a g g i n g 
 	 -   C o d e   c l e a n u p  
   
  
 l     ��������  ��  ��        l      ��  ��    h b 
======================================
// USER SWITCHES 
======================================
     �   �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   U S E R   S W I T C H E S   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
      l     ��������  ��  ��        l     ��  ��    H B SET THIS TO "OFF" IF YOU WANT TO SKIP THE TAGGING/NOTEBOOK DIALOG     �   �   S E T   T H I S   T O   " O F F "   I F   Y O U   W A N T   T O   S K I P   T H E   T A G G I N G / N O T E B O O K   D I A L O G      l     ��  ��    9 3 AND SEND ITEMS DIRECTLY INTO YOUR DEFAULT NOTEBOOK     �   f   A N D   S E N D   I T E M S   D I R E C T L Y   I N T O   Y O U R   D E F A U L T   N O T E B O O K      j     �� ��  0 tagging_switch tagging_Switch  m          � ! !  O N   " # " l     ��������  ��  ��   #  $ % $ l     �� & '��   & 6 0 IF YOU'VE DISABLED THE TAGGING/NOTEBOOK DIALOG,    ' � ( ( `   I F   Y O U ' V E   D I S A B L E D   T H E   T A G G I N G / N O T E B O O K   D I A L O G , %  ) * ) l     �� + ,��   + = 7 TYPE THE NAME OF THE NOTEBOOK YOU WANT TO SEND ITEM TO    , � - - n   T Y P E   T H E   N A M E   O F   T H E   N O T E B O O K   Y O U   W A N T   T O   S E N D   I T E M   T O *  . / . l     �� 0 1��   0 < 6 BETWEEN THE QUOTES IF IT ISN'T YOUR DEFAULT NOTEBOOK.    1 � 2 2 l   B E T W E E N   T H E   Q U O T E S   I F   I T   I S N ' T   Y O U R   D E F A U L T   N O T E B O O K . /  3 4 3 l     �� 5 6��   5   (EMPTY SENDS TO DEFAULT)    6 � 7 7 2   ( E M P T Y   S E N D S   T O   D E F A U L T ) 4  8 9 8 j    �� :�� 0 
evnotebook 
EVnotebook : m     ; ; � < <   9  = > = l     ��������  ��  ��   >  ? @ ? l     �� A B��   A A ; IF TAGGING IS ON AND YOU'D LIKE TO CHANGE THE DEFAULT TAG,    B � C C v   I F   T A G G I N G   I S   O N   A N D   Y O U ' D   L I K E   T O   C H A N G E   T H E   D E F A U L T   T A G , @  D E D l     �� F G��   F > 8 TYPE IT BETWEEN THE QUOTES ("Email Message" IS DEFAULT)    G � H H p   T Y P E   I T   B E T W E E N   T H E   Q U O T E S   ( " E m a i l   M e s s a g e "   I S   D E F A U L T ) E  I J I j    �� K�� 0 
defaulttag 
defaultTag K m     L L � M M   J  N O N l     ��������  ��  ��   O  P Q P l     �� R S��   R h b SET THIS "ON" IF YOU WISH TO ACTIVATE ARCHIVING OF PROCESSED MESSAGES IN '<year> Archive' MAILBOX    S � T T �   S E T   T H I S   " O N "   I F   Y O U   W I S H   T O   A C T I V A T E   A R C H I V I N G   O F   P R O C E S S E D   M E S S A G E S   I N   ' < y e a r >   A r c h i v e '   M A I L B O X Q  U V U j   	 �� W�� 0 	archiving   W m   	 
 X X � Y Y  O N V  Z [ Z l     ��������  ��  ��   [  \ ] \ l     �� ^ _��   ^ ; 5 SET THIS "ON" IF YOU WISH TO FLAG PROCESSED MESSAGES    _ � ` ` j   S E T   T H I S   " O N "   I F   Y O U   W I S H   T O   F L A G   P R O C E S S E D   M E S S A G E S ]  a b a j    �� c�� 0 flagging   c m     d d � e e  O N b  f g f l     ��������  ��  ��   g  h i h l     �� j k��   j � � SET THIS TO "GROWL", "OSX" OR "OFF". FOR OSX NOTIFICATIONS, YOU MUST INSTALL 'terminial-notifier.app' AND SET COMMAND PATH IN 'terminal_notifier_path' PROPERTY    k � l l@   S E T   T H I S   T O   " G R O W L " ,   " O S X "   O R   " O F F " .   F O R   O S X   N O T I F I C A T I O N S ,   Y O U   M U S T   I N S T A L L   ' t e r m i n i a l - n o t i f i e r . a p p '   A N D   S E T   C O M M A N D   P A T H   I N   ' t e r m i n a l _ n o t i f i e r _ p a t h '   P R O P E R T Y i  m n m j    �� o�� 0 notifications   o m     p p � q q  O S X n  r s r l      �� t u��   t k e 
======================================
// OTHER PROPERTIES 
======================================
    u � v v �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   O T H E R   P R O P E R T I E S   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 s  w x w l     ��������  ��  ��   x  y z y l     �� { |��   {   Global properties    | � } } $   G l o b a l   p r o p e r t i e s z  ~  ~ j    �� ��� 0 successcount successCount � m    ����     � � � j    �� ��� 0 growl_running growl_Running � m     � � � � � 
 f a l s e �  � � � j    �� ��� 80 osxnotifications_available osxNotifications_Available � m     � � � � � 
 f a l s e �  � � � j    �� ��� 0 mytitle myTitle � m     � � � � �  M a i l   I t e m �  � � � j     #�� ��� 0 themessages theMessages � J     "����   �  � � � j   $ (�� ��� 0 thismessage thisMessage � m   $ ' � � � � �   �  � � � j   ) -�� ��� 0 itemnum itemNum � m   ) , � � � � �  0 �  � � � j   . 2�� ��� 0 attnum attNum � m   . 1 � � � � �  0 �  � � � j   3 7�� ��� 0 errnum errNum � m   3 6 � � � � �  0 �  � � � j   8 <�� ��� 0 usertag userTag � m   8 ; � � � � �   �  � � � j   = B�� ��� 0 evtag EVTag � J   = ?����   �  � � � j   C I�� ��� 0 	multihtml 	multiHTML � m   C F � � � � �   �  � � � j   J O�� ���  0 thesourceitems theSourceItems � J   J L����   �  � � � j   P V�� ��� 0 mysource mySource � m   P S � � � � �   �  � � � j   W ]�� ���  0 decode_success decode_Success � m   W Z � � � � �   �  � � � j   ^ d�� ��� 0 	finalhtml 	finalHTML � m   ^ a � � � � �   �  � � � j   e k�� ��� 0 	myheaders 	myHeaders � m   e h � � � � �   �  � � � j   l q�� ��� *0 mysource_paragraphs mysource_Paragraphs � J   l n����   �  � � � j   r x�� ��� 0 
base64_raw 
base64_Raw � m   r u � � � � �   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Archive properties    � � � � &   A r c h i v e   p r o p e r t i e s �  � � � l      � � � � j   y �� ��� 0 archive_mailbox_label   � m   y | � � � � �  A r c h i v e � %  Will generate "<year> <label>"    � � � � >   W i l l   g e n e r a t e   " < y e a r >   < l a b e l > " �  � � � j   � ��� ��� 0 archive_flag   � m   � �����  �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Notification properties    � � � � 0   N o t i f i c a t i o n   p r o p e r t i e s �  � � � j   � ��� ��� 0 terminal_notifier_path   � m   � � � � � � � � / u s r / l o c a l / b i n / t e r m i n a l - n o t i f i e r . a p p / C o n t e n t s / M a c O S / t e r m i n a l - n o t i f i e r �  � � � j   � ��� ��� *0 notificationappname notificationAppName � m   � � � � � � � , A p p l e   M a i l   t o   E v e r n o t e �  � � � j   � ��� ��� (0 notificationaction notificationAction � m   � � � � � � �  c o m . a p p l e . M a i l �  � � � j   � ��� ��� $0 notificationicon notificationIcon � m   � � � � �    M a i l �  l     ��������  ��  ��    l     ��������  ��  ��    l      ����   g a 
======================================
// MAIN PROGRAM 
======================================
    �		 �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   M A I N   P R O G R A M   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 

 l     ��������  ��  ��    l     ����    RESET ITEMS    �  R E S E T   I T E M S  l    ���� r      m      �  0 o      ���� 0 successcount successCount��  ��    l   ���� r     m    	 �  0 o      ���� 0 errnum errNum��  ��     l   !����! r    "#" m    $$ �%%  # n     &'& 1    ��
�� 
txdl' 1    ��
�� 
ascr��  ��    ()( l     ��������  ��  ��  ) *+* l  ",����, Q   "-./- k    �00 121 l   ��34��  3   Check for Growl   4 �55     C h e c k   f o r   G r o w l2 676 Z    ,89����8 =    :;: o    ���� 0 notifications  ; m    << �== 
 G R O W L9 k   # (>> ?@? l  # #��AB��  A   Activate Grown   B �CC    A c t i v a t e   G r o w n@ D��D n  # (EFE I   $ (�������� 0 growl_check Growl_Check��  ��  F  f   # $��  ��  ��  7 GHG l  - -��������  ��  ��  H IJI l  - -��KL��  K   Set up activites   L �MM "   S e t   u p   a c t i v i t e sJ NON n  - 2PQP I   . 2�������� 0 
item_check 
item_Check��  ��  Q  f   - .O RSR l  3 3����~��  �  �~  S TUT l  3 3�}VW�}  V "  Check for selected messages   W �XX 8   C h e c k   f o r   s e l e c t e d   m e s s a g e sU YZY Z   3 o[\�|][ >  3 ;^_^ o   3 8�{�{ 0 themessages theMessages_ J   8 :�z�z  \ k   > e`` aba l  > >�y�x�w�y  �x  �w  b cdc l  > >�vef�v  e   Get messages count   f �gg &   G e t   m e s s a g e s   c o u n td hih n  > Hjkj I   ? H�ul�t�u 0 
item_count 
item_Countl m�sm o   ? D�r�r 0 themessages theMessages�s  �t  k  f   > ?i non l  I I�q�p�o�q  �p  �o  o pqp l  I I�nrs�n  r #  Announce the export of items   s �tt :   A n n o u n c e   t h e   e x p o r t   o f   i t e m sq uvu n  I Xwxw I   J X�my�l�m ,0 process_notification process_Notificationy z{z o   J O�k�k 0 itemnum itemNum{ |�j| o   O T�i�i 0 attnum attNum�j  �l  x  f   I Jv }~} l  Y Y�h�g�f�h  �g  �f  ~ � l  Y Y�e���e  � $  Process mail items for export   � ��� <   P r o c e s s   m a i l   i t e m s   f o r   e x p o r t� ��� n  Y c��� I   Z c�d��c�d 0 mail_process mail_Process� ��b� o   Z _�a�a 0 themessages theMessages�b  �c  �  f   Y Z� ��`� l  d d�_�^�]�_  �^  �]  �`  �|  ] k   h o�� ��� l  h h�\���\  �   No messages selected   � ��� *   N o   m e s s a g e s   s e l e c t e d� ��[� r   h o��� m   h i�Z�Z��� o      �Y�Y 0 successcount successCount�[  Z ��� l  p p�X�W�V�X  �W  �V  � ��� l  p p�U���U  �    Show results notification   � ��� 4   S h o w   r e s u l t s   n o t i f i c a t i o n� ��� n  p ��� I   q �T��S�T 00 processed_notification processed_Notification� ��� o   q v�R�R 0 successcount successCount� ��Q� o   v {�P�P 0 errnum errNum�Q  �S  �  f   p q� ��� l  � ��O�N�M�O  �N  �M  � ��L� l  � ��K���K  �   Error handling   � ���    E r r o r   h a n d l i n g�L  . R      �J��
�J .ascrerr ****      � ****� o      �I�I 0 errtext errText� �H��G
�H 
errn� o      �F�F 0 errnum errNum�G  / Z   �"����E� =  � ���� o   � ��D�D 0 growl_running growl_Running� m   � ��C
�C boovtrue� k   � ��� ��� l  � ��B�A�@�B  �A  �@  � ��� Z   � ����?�� =  � ���� o   � ��>�> 0 errnum errNum� m   � ��=�=��� k   � ��� ��� l  � ��<�;�:�<  �;  �:  � ��� l  � ��9���9  � &   Failure notification for cancel   � ��� @   F a i l u r e   n o t i f i c a t i o n   f o r   c a n c e l� ��� I   � ��8��7�8 0 notification  � ��� m   � ��� ��� ( F a i l u r e   N o t i f i c a t i o n� ��� m   � ��� ���  U s e r   C a n c e l l e d� ��� m   � ��� ��� " F a i l e d   t o   e x p o r t !� ��� o   � ��6�6 *0 notificationappname notificationAppName� ��� o   � ��5�5 (0 notificationaction notificationAction� ��4� o   � ��3�3 $0 notificationicon notificationIcon�4  �7  � ��2� l  � ��1�0�/�1  �0  �/  �2  �?  � k   � ��� ��� l  � ��.�-�,�.  �-  �,  � ��� l  � ��+���+  � %  Failure notification for error   � ��� >   F a i l u r e   n o t i f i c a t i o n   f o r   e r r o r� ��*� I   � ��)��(�) 0 notification  � ��� m   � ��� ��� ( F a i l u r e   N o t i f i c a t i o n� ��� m   � ��� ���  I m p o r t   F a i l u r e� ��� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� m   � ��� ��� " F a i l e d   t o   e x p o r t  � o   � ��'
�' 
ret � o   � ��&�& 0 mytitle myTitle� m   � ��� ��� > "     d u e   t o   t h e   f o l l o w i n g   e r r o r :  � o   � ��%
�% 
ret � o   � ��$�$ 0 errtext errText� ��� o   � ��#�# *0 notificationappname notificationAppName� ��� o   � ��"�" (0 notificationaction notificationAction� ��!� o   � �� �  $0 notificationicon notificationIcon�!  �(  �*  � � � l  � �����  �  �    � l  � ���   %  Non notification error message    � >   N o n   n o t i f i c a t i o n   e r r o r   m e s s a g e�  �  F   � =  � �	
	 o   � ��� 0 growl_running growl_Running
 m   � ��
� boovfals =  � o   ��� 80 osxnotifications_available osxNotifications_Available m  �
� boovfals � I �
� .sysodlogaskr        TEXT b   b   b   m   � . I t e m   F a i l e d   t o   I m p o r t :   o  �� 0 errnum errNum o  �
� 
ret  o  �� 0 errtext errText ��
� 
disp m  ��  �  �  �E  ��  ��  +  l     ����  �  �    l      ��   s m 
======================================
// PREPARATORY SUBROUTINES 
=======================================
    � �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   P R E P A R A T O R Y   S U B R O U T I N E S   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
  !  l     �
�	��
  �	  �  ! "#" l     �$%�  $   App detect   % �&&    A p p   d e t e c t# '(' i   � �)*) I      �+�� 0 appisrunning appIsRunning+ ,�, o      �� 0 appname appName�  �  * O    -.- E    /0/ l   	1��1 n    	232 1    	� 
�  
pnam3 2   ��
�� 
prcs�  �  0 o   	 
���� 0 appname appName. m     44�                                                                                  sevs  alis    �  Macintosh HD               ̦�H+     0System Events.app                                               3m�c90        ����  	                CoreServices    ̦ƒ      �c       0   *   )  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ( 565 l     ��������  ��  ��  6 787 l     ��9:��  9   Set up activities   : �;; $   S e t   u p   a c t i v i t i e s8 <=< i   � �>?> I      �������� 0 
item_check 
item_Check��  ��  ? k     "@@ ABA r     CDC l    E����E I    ��F��
�� .earsffdralis        afdrF m     ��
�� afdrcusr��  ��  ��  D o      ���� 0 mypath myPathB G��G O    "HIH Q    !JK��J r    LML 1    ��
�� 
slctM o      ���� 0 themessages theMessagesK R      ������
�� .ascrerr ****      � ****��  ��  ��  I m    	NN�                                                                                  emal  alis    F  Macintosh HD               ̦�H+     MMail.app                                                        Ro̐y        ����  	                Applications    ̦ƒ      ̏�Y       M  #Macintosh HD:Applications: Mail.app     M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��  ��  = OPO l     ��������  ��  ��  P QRQ l     ��ST��  S ) # Get count of items and attachments   T �UU F   G e t   c o u n t   o f   i t e m s   a n d   a t t a c h m e n t sR VWV i   � �XYX I      ��Z���� 0 
item_count 
item_CountZ [��[ o      ���� 0 themessages theMessages��  ��  Y O     A\]\ k    @^^ _`_ r    aba I   	��c��
�� .corecnte****       ****c o    ���� 0 themessages theMessages��  b o      ���� 0 itemnum itemNum` ded r    fgf m    ����  g o      ���� 0 attnum attNume h��h X    @i��ji r   ( ;klk [   ( 5mnm o   ( -���� 0 attnum attNumn l  - 4o����o I  - 4��p��
�� .corecnte****       ****p n   - 0qrq m   . 0��
�� 
attcr o   - .���� 0 
themessage 
theMessage��  ��  ��  l o      ���� 0 attnum attNum�� 0 
themessage 
theMessagej o    ���� 0 themessages theMessages��  ] m     ss�                                                                                  emal  alis    F  Macintosh HD               ̦�H+     MMail.app                                                        Ro̐y        ����  	                Applications    ̦ƒ      ̏�Y       M  #Macintosh HD:Applications: Mail.app     M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��  W tut l     ��������  ��  ��  u vwv l      ��xy��  x { u 
======================================
// TAGGING AND NOTEBOOK SUBROUTINES
=======================================
   y �zz �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   T A G G I N G   A N D   N O T E B O O K   S U B R O U T I N E S 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
w {|{ l     ��������  ��  ��  | }~} l     �����   , & Tagging and notebook selection dialog   � ��� L   T a g g i n g   a n d   n o t e b o o k   s e l e c t i o n   d i a l o g~ ��� i   � ���� I      ��������  0 tagging_dialog tagging_Dialog��  ��  � k     ��� ��� Q     [���� k    J�� ��� I   ,����
�� .sysodlogaskr        TEXT� b    ��� m    �� ���  � l 	  ������ m    �� ��� � P l e a s e   E n t e r   Y o u r   T a g s   B e l o w : 
 ( M u l t i p l e   T a g s   S e p a r a t e d   B y   C o m m a s )��  ��  � ����
�� 
appr� m    �� ��� Z V e r i t r o p e . c o m   |   A p p l e   M a i l   t o   E v e r n o t e   E x p o r t� ����
�� 
dtxt� o   	 ���� 0 
defaulttag 
defaultTag� ����
�� 
btns� J    �� ��� m    �� ��� 4 C r e a t e   i n   D e f a u l t   N o t e b o o k� ��� m    �� ��� 2 S e l e c t   N o t e b o o k   f r o m   L i s t� ���� m    �� ���  C a n c e l��  � ����
�� 
dflt� m    �� ��� 4 C r e a t e   i n   D e f a u l t   N o t e b o o k� ����
�� 
cbtn� l 	  ������ m    �� ���  C a n c e l��  ��  � �����
�� 
disp� I   &����
�� .sysorpthalis        TEXT� m    �� ���  E v e r n o t e . i c n s� �����
�� 
in B� l   "������ I   "�����
�� .earsffdralis        afdr� m    ���                                                                                  EVRN  alis    V  Macintosh HD               ̦�H+     MEvernote.app                                                    ���'L        ����  	                Applications    ̦ƒ      �'=�       M  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  ��  ��  ��  ��  ��  � ��� r   - 2��� l  - 0������ 1   - 0��
�� 
rslt��  ��  � o      ���� 0 dialogresult  � ��� r   3 :��� n   3 8��� 1   4 8��
�� 
ttxt� o   3 4���� 0 dialogresult  � o      ���� 0 	userinput 	userInput� ��� r   ; B��� n   ; @��� 1   < @��
�� 
bhit� o   ; <���� 0 dialogresult  � o      ���� 0 	buttonsel 	ButtonSel� ���� r   C J��� J   C H�� ���� m   C F�� ���  ,��  � o      ���� 0 	thedelims 	theDelims��  � R      �����
�� .ascrerr ****      � ****��  � �����
�� 
errn� d      �� m      ���� ���  � r   R [��� m   R U������� o      ���� 0 errnum errNum� ��� l  \ \��������  ��  ��  � ��� l  \ \������  �   Assemble tag list   � ��� $   A s s e m b l e   t a g   l i s t� ��� r   \ e��� n  \ c��� I   ] c������� 0 tag_list Tag_List� ��� o   ] ^���� 0 	userinput 	userInput� ���� o   ^ _���� 0 	thedelims 	theDelims��  ��  �  f   \ ]� o      ���� 0 thetags theTags� ��� l  f f��������  ��  ��  � ��� l  f f������  � / ) Reset, final check and formating of tags   � ��� R   R e s e t ,   f i n a l   c h e c k   a n d   f o r m a t i n g   o f   t a g s� ��� r   f n��� J   f h����  � o      ���� 0 evtag EVTag� ��� r   o {��� n  o u��� I   p u������� 0 	tag_check 	Tag_Check� ���� o   p q���� 0 thetags theTags��  ��  �  f   o p� o      ���� 0 evtag EVTag� � � l  | |��������  ��  ��     l  | |����     Select Notebook    �     S e l e c t   N o t e b o o k �� Z  | ����� =  | �	
	 o   | }���� 0 	buttonsel 	ButtonSel
 m   } � � 2 S e l e c t   N o t e b o o k   f r o m   L i s t r   � � n  � � I   � ���~�}� 0 notebook_list Notebook_List�~  �}    f   � � o      �|�| 0 
evnotebook 
EVnotebook��  ��  ��  �  l     �{�z�y�{  �z  �y    l     �x�x   &   Get Evernote's default Notebook    � @   G e t   E v e r n o t e ' s   d e f a u l t   N o t e b o o k  i   � � I      �w�v�u�w $0 default_notebook default_Notebook�v  �u   O     0 k    /   r    !"! 6   #$# 2    �t
�t 
EVnb$ =   %&% 1   	 �s
�s 
EVnd& m    �r
�r boovtrue" o      �q�q *0 get_defaultnotebook get_defaultNotebook  '�p' Z    /()�o�n( =   *+* o    �m�m 0 
evnotebook 
EVnotebook+ m    ,, �--  ) r    +./. c    %010 n    #232 1   ! #�l
�l 
pnam3 l   !4�k�j4 n    !565 4    !�i7
�i 
cobj7 m     �h�h 6 o    �g�g *0 get_defaultnotebook get_defaultNotebook�k  �j  1 m   # $�f
�f 
ctxt/ o      �e�e 0 
evnotebook 
EVnotebook�o  �n  �p   m     88�                                                                                  EVRN  alis    V  Macintosh HD               ̦�H+     MEvernote.app                                                    ���'L        ����  	                Applications    ̦ƒ      �'=�       M  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��   9:9 l     �d�c�b�d  �c  �b  : ;<; l     �a=>�a  =   Tag selection subroutine   > �?? 2   T a g   s e l e c t i o n   s u b r o u t i n e< @A@ i   � �BCB I      �`D�_�` 0 tag_list Tag_ListD EFE o      �^�^ 0 	userinput 	userInputF G�]G o      �\�\ 0 	thedelims 	theDelims�]  �_  C k     UHH IJI r     KLK n    MNM 1    �[
�[ 
txdlN 1     �Z
�Z 
ascrL o      �Y�Y 0 	olddelims 	oldDelimsJ OPO r    QRQ J    	SS T�XT o    �W�W 0 	userinput 	userInput�X  R o      �V�V 0 thelist theListP UVU X    LW�UXW k    GYY Z[Z r    !\]\ o    �T�T 0 adelim aDelim] n     ^_^ 1     �S
�S 
txdl_ 1    �R
�R 
ascr[ `a` r   " &bcb J   " $�Q�Q  c o      �P�P 0 newlist newLista ded X   ' Cf�Ogf r   7 >hih b   7 <jkj o   7 8�N�N 0 newlist newListk n   8 ;lml 2  9 ;�M
�M 
citmm o   8 9�L�L 0 anitem anItemi o      �K�K 0 newlist newList�O 0 anitem anItemg o   * +�J�J 0 thelist theListe n�In r   D Gopo o   D E�H�H 0 newlist newListp o      �G�G 0 thelist theList�I  �U 0 adelim aDelimX o    �F�F 0 	thedelims 	theDelimsV qrq r   M Rsts o   M N�E�E 0 	olddelims 	oldDelimst n     uvu 1   O Q�D
�D 
txdlv 1   N O�C
�C 
ascrr w�Bw L   S Uxx o   S T�A�A 0 thelist theList�B  A yzy l     �@�?�>�@  �?  �>  z {|{ l     �=}~�=  } ' ! Creates tags if they don't exist   ~ � B   C r e a t e s   t a g s   i f   t h e y   d o n ' t   e x i s t| ��� i   � ���� I      �<��;�< 0 	tag_check 	Tag_Check� ��:� o      �9�9 0 thetags theTags�:  �;  � k     V�� ��� O     S��� k    R�� ��� r    ��� J    �8�8  � o      �7�7 0 	finaltags 	finalTags� ��6� X   	 R��5�� Z    M���4�� l   #��3�2� H    #�� l   "��1�0� I   "�/��.
�/ .coredoexnull���     ****� 5    �-��,
�- 
EVtg� o    �+�+ 0 thetag theTag
�, kfrmname�.  �1  �0  �3  �2  � Q   & C���*� k   ) :�� ��� r   ) 5��� I  ) 3�)��
�) .corecrel****      � null� m   ) *�(
�( 
EVtg� �'��&
�' 
prdt� K   + /�� �%��$
�% 
pnam� o   , -�#�# 0 thetag theTag�$  �&  � o      �"�" 0 maketag makeTag� ��!� r   6 :��� o   6 7� �  0 maketag makeTag� n      ���  ;   8 9� o   7 8�� 0 	finaltags 	finalTags�!  � R      ���
� .ascrerr ****      � ****�  �  �*  �4  � r   F M��� 4   F J��
� 
EVtg� o   H I�� 0 thetag theTag� n      ���  ;   K L� o   J K�� 0 	finaltags 	finalTags�5 0 thetag theTag� o    �� 0 thetags theTags�6  � m     ���                                                                                  EVRN  alis    V  Macintosh HD               ̦�H+     MEvernote.app                                                    ���'L        ����  	                Applications    ̦ƒ      �'=�       M  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  � ��� L   T V�� o   T U�� 0 	finaltags 	finalTags�  � ��� l     ����  �  �  � ��� l     ����  � - ' Evernote Notebook selection subroutine   � ��� N   E v e r n o t e   N o t e b o o k   s e l e c t i o n   s u b r o u t i n e� ��� i   � ���� I      ���� 0 notebook_list Notebook_List�  �  � O     ��� k    ~�� ��� I   	���
� .miscactvnull��� ��� null�  �  � ��� l   
 ���� r   
 ��� J   
 ��  � o      �
�
 "0 listofnotebooks listOfNotebooks� 2 ,PREPARE TO GET EVERNOTE'S LIST OF NOTEBOOKS    � ��� X P R E P A R E   T O   G E T   E V E R N O T E ' S   L I S T   O F   N O T E B O O K S  � ��� l    ���� r    ��� 2    �	
�	 
EVnb� o      �� 0 evnotebooks EVNotebooks�  GET THE NOTEBOOK LIST    � ��� , G E T   T H E   N O T E B O O K   L I S T  � ��� X    4���� k   % /�� ��� r   % *��� l  % (���� l  % (���� n   % (��� 1   & (�
� 
pnam� o   % &�� "0 currentnotebook currentNotebook�  �  �  �  � o      � �  *0 currentnotebookname currentNotebookName� ���� s   + /��� o   + ,���� *0 currentnotebookname currentNotebookName� l     ������ n      ���  ;   - .� o   , -���� "0 listofnotebooks listOfNotebooks��  ��  ��  � "0 currentnotebook currentNotebook� o    ���� 0 evnotebooks EVNotebooks� ��� l   5 =���� r   5 =��� n  5 ;��� I   6 ;������� 0 simple_sort  � ���� o   6 7���� "0 listofnotebooks listOfNotebooks��  ��  �  f   5 6� o      ����  0 folders_sorted Folders_sorted�  SORT THE LIST    � ���  S O R T   T H E   L I S T  � ��� l   > O���� r   > O��� I  > M����
�� .gtqpchltns    @   @ ns  � o   > ?����  0 folders_sorted Folders_sorted� ����
�� 
appr� m   @ A�� ��� 0 S e l e c t   E v e r n o t e   N o t e b o o k� �� 
�� 
prmp  l 	 B C���� m   B C � 4 C u r r e n t   E v e r n o t e   N o t e b o o k s��  ��   ��
�� 
okbt m   D E �  O K ��	��
�� 
cnbt	 m   F G

 �  N e w   N o t e b o o k��  � o      ���� 0 selnotebook SelNotebook� ( "USER SELECTION FROM NOTEBOOK LIST    � � D U S E R   S E L E C T I O N   F R O M   N O T E B O O K   L I S T  � �� Z   P ~�� l  P S���� =  P S o   P Q���� 0 selnotebook SelNotebook m   Q R��
�� boovfals��  ��   l  V q k   V q  r   V i n   V g l 	 c g���� 1   c g��
�� 
ttxt��  ��   l  V c���� I  V c�� !
�� .sysodlogaskr        TEXT  m   V Y"" �## 0 E n t e r   N e w   N o t e b o o k   N a m e :! ��$��
�� 
dtxt$ m   \ _%% �&&  ��  ��  ��   o      ���� 0 	userinput 	userInput '��' r   j q()( o   j k���� 0 	userinput 	userInput) o      ���� 0 
evnotebook 
EVnotebook��   ! CREATE NEW NOTEBOOK OPTION     �** 6 C R E A T E   N E W   N O T E B O O K   O P T I O N  ��   r   t ~+,+ n   t x-.- 4   u x��/
�� 
cobj/ m   v w���� . o   t u���� 0 selnotebook SelNotebook, o      ���� 0 
evnotebook 
EVnotebook��  � m     00�                                                                                  EVRN  alis    V  Macintosh HD               ̦�H+     MEvernote.app                                                    ���'L        ����  	                Applications    ̦ƒ      �'=�       M  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  � 121 l     ��������  ��  ��  2 343 l      ��56��  5 o i 
======================================
// UTILITY SUBROUTINES 
=======================================
   6 �77 �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   U T I L I T Y   S U B R O U T I N E S   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
4 898 l     ��������  ��  ��  9 :;: l     ��<=��  <   Extraction subroutine   = �>> ,   E x t r a c t i o n   s u b r o u t i n e; ?@? i   � �ABA I      ��C����  0 extractbetween extractBetweenC DED o      ���� 0 
searchtext 
SearchTextE FGF o      ���� 0 	starttext 	startTextG H��H o      ���� 0 endtext endText��  ��  B k     ,II JKJ r     LML n    NON 1    ��
�� 
txdlO 1     ��
�� 
ascrM o      ���� 0 tid  K PQP r    RSR o    ���� 0 	starttext 	startTextS n     TUT 1    
��
�� 
txdlU 1    ��
�� 
ascrQ VWV r    XYX n    Z[Z m    ��
�� 
ctxt[ n    \]\ 4    ��^
�� 
citm^ m    ������] o    ���� 0 
searchtext 
SearchTextY o      ���� 0 enditems endItemsW _`_ r    aba o    ���� 0 endtext endTextb n     cdc 1    ��
�� 
txdld 1    ��
�� 
ascr` efe r    #ghg n    !iji m    !��
�� 
ctxtj n    klk 4    ��m
�� 
citmm m    ���� l o    ���� 0 enditems endItemsh o      ����  0 beginningtoend beginningToEndf non r   $ )pqp o   $ %���� 0 tid  q n     rsr 1   & (��
�� 
txdls 1   % &��
�� 
ascro t��t L   * ,uu o   * +����  0 beginningtoend beginningToEnd��  @ vwv l     ��������  ��  ��  w xyx l     ��z{��  z   Sort subroutine   { �||     S o r t   s u b r o u t i n ey }~} i   � �� I      ������� 0 simple_sort  � ���� o      ���� 0 my_list  ��  ��  � k     u�� ��� r     ��� J     ����  � l     ������ o      ���� 0 
index_list  ��  ��  � ��� r    	��� J    ����  � l     ������ o      ���� 0 sorted_list  ��  ��  � ��� U   
 r��� k    m�� ��� r    ��� m    �� ���  � l     ������ o      ���� 0 low_item  ��  ��  � ��� Y    c�������� Z   ) ^������� H   ) -�� E  ) ,��� l  ) *������ o   ) *���� 0 
index_list  ��  ��  � o   * +���� 0 i  � k   0 Z�� ��� r   0 8��� c   0 6��� n   0 4��� 4   1 4���
�� 
cobj� o   2 3���� 0 i  � o   0 1���� 0 my_list  � m   4 5��
�� 
ctxt� o      ���� 0 	this_item  � ���� Z   9 Z������ =  9 <��� l  9 :������ o   9 :���� 0 low_item  ��  ��  � m   : ;�� ���  � k   ? F�� ��� r   ? B��� o   ? @���� 0 	this_item  � l     ������ o      ���� 0 low_item  ��  ��  � ���� r   C F��� o   C D���� 0 i  � l     ������ o      ���� 0 low_item_index  ��  ��  ��  � ��� A I L��� o   I J���� 0 	this_item  � l  J K���~� o   J K�}�} 0 low_item  �  �~  � ��|� k   O V�� ��� r   O R��� o   O P�{�{ 0 	this_item  � l     ��z�y� o      �x�x 0 low_item  �z  �y  � ��w� r   S V��� o   S T�v�v 0 i  � l     ��u�t� o      �s�s 0 low_item_index  �u  �t  �w  �|  ��  ��  ��  ��  �� 0 i  � m    �r�r � l   $��q�p� n    $��� m   ! #�o
�o 
nmbr� n   !��� 2   !�n
�n 
cobj� o    �m�m 0 my_list  �q  �p  ��  � ��� r   d h��� l  d e��l�k� o   d e�j�j 0 low_item  �l  �k  � l     ��i�h� n      ���  ;   f g� o   e f�g�g 0 sorted_list  �i  �h  � ��f� r   i m��� l  i j��e�d� o   i j�c�c 0 low_item_index  �e  �d  � l     ��b�a� n      ���  ;   k l� l  j k��`�_� o   j k�^�^ 0 
index_list  �`  �_  �b  �a  �f  � l   ��]�\� l   ��[�Z� n    ��� m    �Y
�Y 
nmbr� n   ��� 2   �X
�X 
cobj� o    �W�W 0 my_list  �[  �Z  �]  �\  � ��V� L   s u�� l  s t��U�T� o   s t�S�S 0 sorted_list  �U  �T  �V  ~ ��� l     �R�Q�P�R  �Q  �P  � ��� l      �O���O  � x r 
======================================
// PROCESS MAIL ITEMS SUBROUTINE
=======================================
   � ��� �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   P R O C E S S   M A I L   I T E M S   S U B R O U T I N E 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
� ��� l     �N�M�L�N  �M  �L  � ��� i   � ���� I      �K��J�K 0 mail_process mail_Process� ��I� o      �H�H 0 themessages theMessages�I  �J  � k    ��    l     �G�G    CHECK DEFAULT NOTEBOOK    � , C H E C K   D E F A U L T   N O T E B O O K  n     I    �F�E�D�F $0 default_notebook default_Notebook�E  �D    f      	�C	 O   

 Q   
�B k     Z    �A�@ =    o    �?�?  0 tagging_switch tagging_Switch m     �  O N n    I    �>�=�<�>  0 tagging_dialog tagging_Dialog�=  �<    f    �A  �@    l  ! !�;�:�9�;  �:  �9   �8 X   !�7 k   1
   Q   1�!"�6! k   4�## $%$ l  4 4�5&'�5  &   Get message info   ' �(( "   G e t   m e s s a g e   i n f o% )*) r   4 =+,+ l  4 7-�4�3- n   4 7./. 1   5 7�2
�2 
subj/ o   4 5�1�1 0 thismessage thisMessage�4  �3  , o      �0�0 0 mytitle myTitle* 010 r   > C232 l  > A4�/�.4 n   > A565 1   ? A�-
�- 
ctnt6 o   > ?�,�, 0 thismessage thisMessage�/  �.  3 o      �+�+ 0 	mycontent 	myContent1 787 r   D M9:9 l  D G;�*�); n   D G<=< 1   E G�(
�( 
raso= o   D E�'�' 0 thismessage thisMessage�*  �)  : o      �&�& 0 mysource mySource8 >?> r   N S@A@ l  N QB�%�$B n   N QCDC 1   O Q�#
�# 
rptoD o   N O�"�" 0 thismessage thisMessage�%  �$  A o      �!�! 0 	replyaddr 	ReplyAddr? EFE r   T YGHG l  T WI� �I n   T WJKJ 1   U W�
� 
rdrcK o   T U�� 0 thismessage thisMessage�   �  H o      �� 0 	emaildate 	EmailDateF LML r   Z bNON l  Z `P��P n   Z `QRQ 2   ^ `�
� 
trcpR n   Z ^STS 4   [ ^�U
� 
cobjU m   \ ]�� T o   Z [�� 0 thismessage thisMessage�  �  O o      �� 0 allrecipients allRecipientsM VWV l  c c����  �  �  W XYX l  c c�Z[�  Z . ( Assemble all to : resipients for header   [ �\\ P   A s s e m b l e   a l l   t o   :   r e s i p i e n t s   f o r   h e a d e rY ]^] r   c f_`_ m   c daa �bb  ` o      �� 0 torecipients toRecipients^ cdc X   g �e�fe k   w �gg hih r   w |jkj l  w zl��l n   w zmnm 1   x z�
� 
pnamn o   w x�� 0 allrecipient allRecipient�  �  k o      �
�
 0 toname toNamei opo r   } �qrq l  } �s�	�s n   } �tut 1   ~ ��
� 
raddu o   } ~�� 0 allrecipient allRecipient�	  �  r o      �� 0 toemail toEmailp vwv r   � �xyx b   � �z{z b   � �|}| b   � �~~ b   � ���� o   � ��� 0 toname toName� 1   � ��
� 
spac m   � ��� ���  (} o   � ��� 0 toemail toEmail{ m   � ��� ���  ) < b r / >y o      �� 0 
tocombined 
toCombinedw �� � r   � ���� l  � ������� c   � ���� b   � ���� o   � ����� 0 torecipients toRecipients� o   � ����� 0 
tocombined 
toCombined� m   � ���
�� 
TEXT��  ��  � o      ���� 0 torecipients toRecipients�   � 0 allrecipient allRecipientf o   j k���� 0 allrecipients allRecipientsd ��� l  � ���������  ��  ��  � ��� l  � �������  �   Create mail message URL   � ��� 0   C r e a t e   m a i l   m e s s a g e   U R L� ��� r   � ���� m   � ��� ���  � o      ���� 0 therecipient theRecipient� ��� r   � ���� m   � ��� ���  � o      ���� 0 ex  � ��� r   � ���� m   � ��� ���  � o      ���� 0 msglink MsgLink� ��� Q   � ������ k   � ��� ��� r   � ���� m   � ��� ���  � o      ���� 0 therecipient theRecipient� ��� r   � ���� l  � ������� n   � ���� 1   � ���
�� 
radd� n   � ���� 4   � ����
�� 
trcp� m   � ����� � o   � ����� 0 thismessage thisMessage��  ��  � o      ���� 0 therecipient theRecipient� ��� r   � ���� b   � ���� b   � ���� m   � ��� ���  m e s s a g e : / / % 3 c� n  � ���� 1   � ���
�� 
meid� o   � ����� 0 thismessage thisMessage� m   � ��� ���  % 3 e� o      ���� 0 msglink MsgLink� ���� l  � ����� Z  � �������� >  � ���� o   � ����� 0 therecipient theRecipient� m   � ��� ���  � r   � ���� n  � ���� I   � ��������  0 extractbetween extractBetween� ��� o   � ����� 0 	replyaddr 	ReplyAddr� ��� m   � ��� ���  <� ���� m   � ��� ���  >��  ��  �  f   � �� o      ���� 0 ex  ��  ��  �   extract the Address   � ��� (   e x t r a c t   t h e   A d d r e s s��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ��� l  � ���������  ��  ��  � ��� l  � �������  �   HTML email functions   � ��� *   H T M L   e m a i l   f u n c t i o n s� ��� r   ���� n  ���� I   ��������  0 extractbetween extractBetween� ��� o   ����� 0 mysource mySource� ��� m  �� ���  b o u n d a r y = "� ���� m  �� ���  "��  ��  �  f   � �� o      ���� 0 theboundary theBoundary� ��� r  ��� l ������ b  � � b   o  ��
�� 
ret  m   �  - -  o  ���� 0 theboundary theBoundary��  ��  � o      ���� "0 themessagestart theMessagestart�  r  , l (	����	 b  (

 b  $ b    m   �  - - o  ���� 0 theboundary theBoundary o   #��
�� 
ret  m  $' �  C o n t e n t - T y p e :��  ��   o      ���� 0 themessageend theMessageEnd  r  -: n  -6 2 26��
�� 
cpar o  -2���� 0 mysource mySource o      ���� 0 
parasource 
paraSource  r  ;L n  ;H 2 DH��
�� 
cpar l ;D ����  c  ;D!"! n  ;@#$# 1  <@��
�� 
alhe$ o  ;<���� 0 thismessage thisMessage" m  @C��
�� 
ctxt��  ��   o      ���� 0 myheaderlines myHeaderlines %&% l MM��������  ��  ��  & '(' l MM��������  ��  ��  ( )*) l MM��+,��  +   Get content type   , �-- "   G e t   c o n t e n t   t y p e* ./. X  M�0��10 Z  _�23����2 C  _f454 o  _b���� 0 myheaderline myHeaderline5 m  be66 �77  C o n t e n t - T y p e :  3 r  i}898 n iw:;: I  jw��<����  0 extractbetween extractBetween< =>= o  jm���� 0 myheaderline myHeaderline> ?@? m  mpAA �BB  C o n t e n t - T y p e :  @ C��C m  psDD �EE  ;��  ��  ;  f  ij9 o      ���� 0 	myheaders 	myHeaders��  ��  �� 0 myheaderline myHeaderline1 o  PS���� 0 myheaderlines myHeaderlines/ FGF r  ��HIH n ��JKJ I  ����L���� 0 stripheader stripHeaderL MNM o  ������ 0 
parasource 
paraSourceN O��O o  ������ 0 myheaderlines myHeaderlines��  ��  K  f  ��I o      ���� 0 	cutsource 	cutSourceG P��P r  ��QRQ o  ������ 0 	cutsource 	cutSourceR o      ���� 0 evhtml evHTML��  " R      ������
�� .ascrerr ****      � ****��  ��  �6    STS l ����������  ��  ��  T UVU l ����WX��  W   Make header template   X �YY *   M a k e   h e a d e r   t e m p l a t eV Z[Z r  ��\]\ b  ��^_^ b  ��`a` b  ��bcb b  ��ded b  ��fgf b  ��hih b  ��jkj b  ��lml b  ��non b  ��pqp m  ��rr �ss� 
 < t a b l e   b o r d e r = " 1 "   w i d t h = " 1 0 0 % "   c e l l s p a c i n g = " 0 "   c e l l p a d d i n g = " 2 " > 
 < t b o d y > 
 
 < t r   B G C O L O R = " # f f f f f f " > 
 < t d   v a l i g n = " t o p " > < f o n t   c o l o r = " # 7 9 7 9 7 9 " > < s t r o n g > F r o m :   < / s t r o n g >     < / t d > 
 < t d   v a l i g n = " t o p "   > < a   h r e f = " m a i l t o :q o  ������ 0 ex  o m  ��tt �uu  " >m o  ������ 0 ex  k m  ��vv �ww < / a > < / t d > 
 < / t r > 
 
 < t r   B G C O L O R = " # f f f f f f " > 
 < t d   v a l i g n = " t o p " > < f o n t   c o l o r = " # 7 9 7 9 7 9 " > < s t r o n g > S u b j e c t :   < / s t r o n g >     < / t d > 
 < t d   v a l i g n = " t o p "   > < s t r o n g >i o  ������ 0 mytitle myTitleg m  ��xx �yy < / s t r o n g > < / t d > 
 < / t r > 
 
 < t r   B G C O L O R = " # f f f f f f " > 
 < t d   v a l i g n = " t o p " > < f o n t   c o l o r = " # 7 9 7 9 7 9 " > < s t r o n g > D a t e   /   T i m e :     < / s t r o n g > < / t d > 
 < t d   v a l i g n = " t o p " >e o  ������ 0 	emaildate 	EmailDatec m  ��zz �{{ � < / t d > 
 < / t r > 
 
 < t r   B G C O L O R = " # f f f f f f " > 
 < t d   v a l i g n = " t o p " > < f o n t   c o l o r = " # 7 9 7 9 7 9 " > < s t r o n g > T o : < / s t r o n g > < / t d > 
 < t d   v a l i g n = " t o p " >a o  ������ 0 torecipients toRecipients_ m  ��|| �}} J < / t d > 
 < / t r > 
 
 < / t b o d y > 
 < / t a b l e > 
 < h r   / >] o      ���� 0 the_template the_Template[ ~~ l ����������  ��  ��   ��� l ��������  � ' ! Sent item to Evernote subroutine   � ��� B   S e n t   i t e m   t o   E v e r n o t e   s u b r o u t i n e� ��� n ���� I  �������� 0 make_evernote make_Evernote� ��� o  ������ 0 mytitle myTitle� ��� o  ������ 0 evtag EVTag� ��� o  ������ 0 	emaildate 	EmailDate� ��� o  ������ 0 msglink MsgLink� ��� o  ������ 0 	mycontent 	myContent� ��� o  ������ 0 mysource mySource� ��� o  ������ 0 theboundary theBoundary� ��� o  ������ "0 themessagestart theMessagestart� ��� o  ������ 0 themessageend theMessageEnd� ��� o  ������ 0 	myheaders 	myHeaders� ��� o  ������ 0 thismessage thisMessage� ��� o  ������ 0 evhtml evHTML� ��� o  ������ 0 
evnotebook 
EVnotebook� ���� o  ������ 0 the_template the_Template��  ��  �  f  ��� ��� l ����~��  �  �~  � ��� l �}���}  � * $ Run message post process subroutine   � ��� H   R u n   m e s s a g e   p o s t   p r o c e s s   s u b r o u t i n e� ��� n ��� I  �|��{�| &0 mail_post_process mail_post_Process� ��z� o  �y�y 0 themessages theMessages�z  �{  �  f  � ��x� l 		�w�v�u�w  �v  �u  �x  �7 0 thismessage thisMessage o   $ %�t�t 0 themessages theMessages�8   R      �s�r�q
�s .ascrerr ****      � ****�r  �q  �B   m    ���                                                                                  emal  alis    F  Macintosh HD               ̦�H+     MMail.app                                                        Ro̐y        ����  	                Applications    ̦ƒ      ̏�Y       M  #Macintosh HD:Applications: Mail.app     M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��  �C  � ��� l     �p�o�n�p  �o  �n  � ��� l     �m���m  � 1 + Archiving and flagging of processed emails   � ��� V   A r c h i v i n g   a n d   f l a g g i n g   o f   p r o c e s s e d   e m a i l s� ��� i   � ���� I      �l��k�l &0 mail_post_process mail_post_Process� ��j� o      �i�i 0 themessages theMessages�j  �k  � O     ���� X    ���h�� k    ��� ��� l   �g�f�e�g  �f  �e  � ��� l   �d���d  �   Flag message   � ���    F l a g   m e s s a g e� ��� Z    -���c�b� =   ��� o    �a�a 0 flagging  � m    �� ���  O N� r    )��� c    %��� o    #�`�` 0 archive_flag  � m   # $�_
�_ 
long� n      ��� 1   & (�^
�^ 
fidx� o   % &�]�] 0 m  �c  �b  � ��� l  . .�\�[�Z�\  �[  �Z  � ��� l  . .�Y���Y  �   Archive message   � ���     A r c h i v e   m e s s a g e� ��� Z   . ����X�W� =  . 5��� o   . 3�V�V 0 	archiving  � m   3 4�� ���  O N� k   8 ��� ��� r   8 =��� n   8 ;��� m   9 ;�U
�U 
mbxp� o   8 9�T�T 0 m  � o      �S�S 0 mb  � ��� r   > C��� n   > A��� m   ? A�R
�R 
mact� o   > ?�Q�Q 0 mb  � o      �P�P 0 acc  � ��� r   D W��� e   D U�� b   D U��� b   D O��� l  D M �O�N  c   D M l  D K�M�L l  D K�K�J n   D K 1   I K�I
�I 
year l  D I�H�G I  D I�F�E�D
�F .misccurdldt    ��� null�E  �D  �H  �G  �K  �J  �M  �L   m   K L�C
�C 
TEXT�O  �N  � m   M N �		   � o   O T�B�B 0 archive_mailbox_label  � o      �A�A 0 archive_mailbox  � 

 I  X ]�@�?
�@ .ascrcmnt****      � **** m   X Y �  h e r e�?    I  ^ c�>�=
�> .ascrcmnt****      � **** o   ^ _�<�< 0 archive_mailbox  �=    Q   d � r   g m n  g k 4   h k�;
�; 
mbxp o   i j�:�: 0 archive_mailbox   o   g h�9�9 0 acc   o      �8�8 0 archive   R      �7�6�5
�7 .ascrerr ****      � ****�6  �5   k   u �  I  u ��4�3
�4 .sysodisAaleR        TEXT b   u � !  b   u �"#" b   u ~$%$ b   u z&'& m   u x(( �))  N o   '' o   x y�2�2 0 archive_mailbox  % m   z }** �++ : '   m a i l b o x   f o u n d   f o r   a c c o u n t   '# o   ~ �1�1 0 acc  ! m   � �,, �--  ' .�3   .�0. L   � ��/�/  �0   /0/ l  � ��.�-�,�.  �-  �,  0 1�+1 Q   � �2342 I  � ��*56
�* .coremovenull���     obj 5 o   � ��)�) 0 m  6 �(7�'
�( 
insh7 o   � ��&�& 0 archive  �'  3 R      �%�$�#
�% .ascrerr ****      � ****�$  �#  4 k   � �88 9:9 I  � ��";�!
�" .sysodisAaleR        TEXT; m   � �<< �== 
 E r r o r�!  : >� > L   � ���  �   �+  �X  �W  � ?�? l  � �����  �  �  �  �h 0 m  � o    �� 0 themessages theMessages� m     @@�                                                                                  emal  alis    F  Macintosh HD               ̦�H+     MMail.app                                                        Ro̐y        ����  	                Applications    ̦ƒ      ̏�Y       M  #Macintosh HD:Applications: Mail.app     M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��  � ABA l     ����  �  �  B CDC l     ����  �  �  D EFE l      �GH�  G { u 
======================================
// MAKE ITEM IN EVERNOTE SUBROUTINE
=======================================
   H �II �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   M A K E   I T E M   I N   E V E R N O T E   S U B R O U T I N E 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
F JKJ l     ����  �  �  K LML i   � �NON I      �P�� 0 make_evernote make_EvernoteP QRQ o      �� 0 mytitle myTitleR STS o      �� 0 evtag EVTagT UVU o      �� 0 	emaildate 	EmailDateV WXW o      �
�
 0 msglink MsgLinkX YZY o      �	�	 0 	mycontent 	myContentZ [\[ o      �� 0 mysource mySource\ ]^] o      �� 0 theboundary theBoundary^ _`_ o      �� "0 themessagestart theMessagestart` aba o      �� 0 themessageend theMessageEndb cdc o      �� 0 	myheaders 	myHeadersd efe o      �� 0 thismessage thisMessagef ghg o      �� 0 evhtml evHTMLh iji o      �� 0 
evnotebook 
EVnotebookj k� k o      ���� 0 the_template the_Template�   �  O k    �ll mnm l     ��������  ��  ��  n opo O    �qrq Q   �st��s k   �uu vwv l   ��xy��  x   Is it a text email?   y �zz (   I s   i t   a   t e x t   e m a i l ?w {|{ Z   �}~�} E    
��� o    ���� 0 	myheaders 	myHeaders� m    	�� ���  t e x t / p l a i n~ k    H�� ��� r    ��� I   �����
�� .EVRNcrntnull��� ��� null��  � ����
�� 
Enhl� o    ���� 0 the_template the_Template� ����
�� 
Entt� o    ���� 0 mytitle myTitle� �����
�� 
Ennb� o    ���� 0 
evnotebook 
EVnotebook��  � o      ���� 0 n  � ��� Z   -������� >   ��� o    ���� 0 evtag EVTag� J    ����  � I  " )����
�� .EVRNassnnull���     ****� o   " #���� 0 evtag EVTag� �����
�� 
EV13� o   $ %���� 0 n  ��  ��  ��  � ��� O  . :��� I  2 9�����
�� .EVRNadtnnull���     EVnn��  � �����
�� 
EV18� o   4 5���� 0 	mycontent 	myContent��  � o   . /���� 0 n  � ��� r   ; @��� o   ; <���� 0 	emaildate 	EmailDate� n      ��� 1   = ?��
�� 
EVdd� o   < =���� 0 n  � ��� r   A F��� o   A B���� 0 msglink MsgLink� n      ��� 1   C E��
�� 
EVsu� o   B C���� 0 n  � ��� l  G G��������  ��  ��  � ���� l  G G������  � #  Is it multipart alternative?   � ��� :   I s   i t   m u l t i p a r t   a l t e r n a t i v e ?��   ��� E   K N��� o   K L���� 0 	myheaders 	myHeaders� m   L M�� ��� * m u l t i p a r t / a l t e r n a t i v e� ��� k   Q��� ��� l  Q Q��������  ��  ��  � ��� l  Q Q������  �   Check for Base64   � ��� "   C h e c k   f o r   B a s e 6 4� ��� r   Q Y��� n  Q W��� I   R W������� 0 base64_check base64_Check� ���� o   R S���� 0 mysource mySource��  ��  �  f   Q R� o      ���� 0 base64detect base64Detect� ��� l  Z Z��������  ��  ��  � ��� l  Z Z������  � #  If message if Base64 encoded   � ��� :   I f   m e s s a g e   i f   B a s e 6 4   e n c o d e d� ��� Z   Z������� =  Z ]��� o   Z [���� 0 base64detect base64Detect� m   [ \��
�� boovtrue� k   `�� ��� r   ` n��� n  ` h��� I   a h�������  0 extractbetween extractBetween� ��� o   a b���� 0 mysource mySource� ��� m   b c�� ��� B C o n t e n t - T r a n s f e r - E n c o d i n g :   b a s e 6 4� ���� o   c d���� 0 theboundary theBoundary��  ��  �  f   ` a� o      ���� 0 	multihtml 	multiHTML� ��� l  o o��������  ��  ��  � ��� l  o o������  � 2 , Strip out content-disposition, if necessary   � ��� X   S t r i p   o u t   c o n t e n t - d i s p o s i t i o n ,   i f   n e c e s s a r y� ��� Z  o �������� E   o x��� o   o t���� 0 	multihtml 	multiHTML� m   t w�� ��� 6 C o n t e n t - D i s p o s i t i o n :   i n l i n e� r   { ���� n  { ���� I   | ��������  0 extractbetween extractBetween� ��� o   | ����� 0 	multihtml 	multiHTML� ��� m   � ��� ��� 6 C o n t e n t - D i s p o s i t i o n :   i n l i n e�  ��  o   � ����� 0 theboundary theBoundary��  ��  �  f   { |� o      ���� 0 	multihtml 	multiHTML��  ��  �  Z  � ����� E   � � o   � ����� 0 	multihtml 	multiHTML m   � � � > C o n t e n t - T r a n s f e r - E n c o d i n g :   7 b i t r   � �	
	 n  � � I   � �������  0 extractbetween extractBetween  o   � ����� 0 	multihtml 	multiHTML  m   � � � > C o n t e n t - T r a n s f e r - E n c o d i n g :   7 b i t �� o   � ����� 0 theboundary theBoundary��  ��    f   � �
 o      ���� 0 	multihtml 	multiHTML��  ��    l  � ���������  ��  ��    l  � �����     Decode Base64    �    D e c o d e   B a s e 6 4  r   � � I  � ��� ��
�� .sysoexecTEXT���     TEXT  b   � �!"! b   � �#$# m   � �%% �&& 
 e c h o  $ l  � �'����' n   � �()( 1   � ���
�� 
strq) o   � ����� 0 	multihtml 	multiHTML��  ��  " m   � �** �++ & |   o p e n s s l   b a s e 6 4   - d��   o      ���� 0 basehtml baseHTML ,-, l  � ���������  ��  ��  - ./. l  � ���01��  0   Make note in Evernote   1 �22 ,   M a k e   n o t e   i n   E v e r n o t e/ 343 r   � �565 I  � �����7
�� .EVRNcrntnull��� ��� null��  7 ��89
�� 
Enhl8 o   � ����� 0 the_template the_Template9 ��:;
�� 
Entt: o   � ����� 0 mytitle myTitle; ��<��
�� 
Ennb< o   � ����� 0 
evnotebook 
EVnotebook��  6 o      ���� 0 n  4 =>= Z  � �?@����? >  � �ABA o   � ����� 0 evtag EVTagB J   � �����  @ I  � ���CD
�� .EVRNassnnull���     ****C o   � ����� 0 evtag EVTagD ��E��
�� 
EV13E o   � ����� 0 n  ��  ��  ��  > FGF O  �HIH I  �����J
�� .EVRNadtnnull���     EVnn��  J ��K��
�� 
EV19K o   � ����� 0 basehtml baseHTML��  I o   � ����� 0 n  G LML r  
NON o  �� 0 	emaildate 	EmailDateO n      PQP 1  	�~
�~ 
EVddQ o  �}�} 0 n  M R�|R r  STS o  �{�{ 0 msglink MsgLinkT n      UVU 1  �z
�z 
EVsuV o  �y�y 0 n  �|  ��  � k  �WW XYX l �x�w�v�x  �w  �v  Y Z[Z l �u\]�u  \ ' ! If message is not Base64 encoded   ] �^^ B   I f   m e s s a g e   i s   n o t   B a s e 6 4   e n c o d e d[ _`_ r  !aba n cdc I  �te�s�t 0 htmlfix htmlFixe fgf o  �r�r 0 mysource mySourceg hih o  �q�q 0 theboundary theBoundaryi j�pj o  �o�o 0 	mycontent 	myContent�p  �s  d  f  b o      �n�n 0 	finalhtml 	finalHTML` k�mk Z  "�lm�lnl = ")opo o  "'�k�k  0 decode_success decode_Successp m  '(�j
�j boovtruem k  ,kqq rsr l ,,�i�h�g�i  �h  �g  s tut l ,,�fvw�f  v   Make note in Evernote   w �xx ,   M a k e   n o t e   i n   E v e r n o t eu yzy r  ,9{|{ I ,7�e�d}
�e .EVRNcrntnull��� ��� null�d  } �c~
�c 
Enhl~ o  ./�b�b 0 the_template the_Template �a��
�a 
Entt� o  01�`�` 0 mytitle myTitle� �_��^
�_ 
Ennb� o  23�]�] 0 
evnotebook 
EVnotebook�^  | o      �\�\ 0 n  z ��� Z :L���[�Z� > :>��� o  :;�Y�Y 0 evtag EVTag� J  ;=�X�X  � I AH�W��
�W .EVRNassnnull���     ****� o  AB�V�V 0 evtag EVTag� �U��T
�U 
EV13� o  CD�S�S 0 n  �T  �[  �Z  � ��� O M_��� I Q^�R�Q�
�R .EVRNadtnnull���     EVnn�Q  � �P��O
�P 
EV19� o  UZ�N�N 0 	finalhtml 	finalHTML�O  � o  MN�M�M 0 n  � ��� r  `e��� o  `a�L�L 0 	emaildate 	EmailDate� n      ��� 1  bd�K
�K 
EVdd� o  ab�J�J 0 n  � ��I� r  fk��� o  fg�H�H 0 msglink MsgLink� n      ��� 1  hj�G
�G 
EVsu� o  gh�F�F 0 n  �I  �l  n k  n��� ��� l nn�E�D�C�E  �D  �C  � ��� l nn�B���B  �   Make note in Evernote   � ��� ,   M a k e   n o t e   i n   E v e r n o t e� ��� r  n{��� I ny�A�@�
�A .EVRNcrntnull��� ��� null�@  � �?��
�? 
Enhl� o  pq�>�> 0 the_template the_Template� �=��
�= 
Entt� o  rs�<�< 0 mytitle myTitle� �;��:
�; 
Ennb� o  tu�9�9 0 
evnotebook 
EVnotebook�:  � o      �8�8 0 n  � ��� Z |����7�6� > |���� o  |}�5�5 0 evtag EVTag� J  }�4�4  � I ���3��
�3 .EVRNassnnull���     ****� o  ���2�2 0 evtag EVTag� �1��0
�1 
EV13� o  ���/�/ 0 n  �0  �7  �6  � ��� O ����� I ���.�-�
�. .EVRNadtnnull���     EVnn�-  � �,��+
�, 
EV18� o  ���*�* 0 	mycontent 	myContent�+  � o  ���)�) 0 n  � ��� r  ����� o  ���(�( 0 	emaildate 	EmailDate� n      ��� 1  ���'
�' 
EVdd� o  ���&�& 0 n  � ��%� r  ����� o  ���$�$ 0 msglink MsgLink� n      ��� 1  ���#
�# 
EVsu� o  ���"�" 0 n  �%  �m  � ��� l ���!� ��!  �   �  � ��� l ������  �   Is it multipart mixed?   � ��� .   I s   i t   m u l t i p a r t   m i x e d ?�  � ��� E  ����� o  ���� 0 	myheaders 	myHeaders� m  ���� ���  m u l t i p a r t� ��� k  ��� ��� Z  ������ E  ����� o  ���� 0 mysource mySource� m  ���� ��� . C o n t e n t - T y p e :   t e x t / h t m l� k  ���� ��� l ������  �  �  � ��� l ������  �   Check for Base64   � ��� "   C h e c k   f o r   B a s e 6 4� ��� r  ����� n ����� I  ������ 0 base64_check base64_Check� ��� o  ���� 0 mysource mySource�  �  �  f  ��� o      �� 0 base64detect base64Detect� ��� l ������  �  �  � ��� l ������  � #  If message is Base64 encoded   � ��� :   I f   m e s s a g e   i s   B a s e 6 4   e n c o d e d� ��� Z  ������� = ����� o  ���
�
 0 base64detect base64Detect� m  ���	
�	 boovtrue� k  ��� �	 � r  ��			 n ��			 I  ���	�� 0 base64_decode base64_Decode	 	�	 o  ���� 0 mysource mySource�  �  	  f  ��	 o      �� 0 basehtml baseHTML	  			 l ������  �  �  	 			
		 l ��� 		�   	   Make note in Evernote   	 �		 ,   M a k e   n o t e   i n   E v e r n o t e	
 			 r  ��			 I ������	
�� .EVRNcrntnull��� ��� null��  	 ��		
�� 
Enhl	 o  ������ 0 the_template the_Template	 ��		
�� 
Entt	 o  ������ 0 mytitle myTitle	 ��	��
�� 
Ennb	 o  ������ 0 
evnotebook 
EVnotebook��  	 o      ���� 0 n  	 			 Z ��		����	 > ��			 o  ������ 0 evtag EVTag	 J  ������  	 I ����		
�� .EVRNassnnull���     ****	 o  ������ 0 evtag EVTag	 ��	 ��
�� 
EV13	  o  ������ 0 n  ��  ��  ��  	 	!	"	! O �	#	$	# I �����	%
�� .EVRNadtnnull���     EVnn��  	% ��	&��
�� 
EV19	& o  ����� 0 basehtml baseHTML��  	$ o  ������ 0 n  	" 	'	(	' r  	)	*	) o  	���� 0 	emaildate 	EmailDate	* n      	+	,	+ 1  
��
�� 
EVdd	, o  	
���� 0 n  	( 	-	.	- r  	/	0	/ o  ���� 0 msglink MsgLink	0 n      	1	2	1 1  ��
�� 
EVsu	2 o  ���� 0 n  	. 	3	4	3 l ��������  ��  ��  	4 	5��	5 l ��	6	7��  	6 ' ! If message is not Base64 encoded   	7 �	8	8 B   I f   m e s s a g e   i s   n o t   B a s e 6 4   e n c o d e d��  � 	9	:	9 = 	;	<	; o  ���� 0 base64detect base64Detect	< m  ��
�� boovfals	: 	=��	= k  �	>	> 	?	@	? r  ,	A	B	A n &	C	D	C I  &��	E���� 0 htmlfix htmlFix	E 	F	G	F o   ���� 0 mysource mySource	G 	H	I	H o   !���� 0 theboundary theBoundary	I 	J��	J o  !"���� 0 	mycontent 	myContent��  ��  	D  f  	B o      ���� 0 	finalhtml 	finalHTML	@ 	K��	K Z  -�	L	M��	N	L = -4	O	P	O o  -2����  0 decode_success decode_Success	P m  23��
�� boovtrue	M k  7v	Q	Q 	R	S	R l 77��������  ��  ��  	S 	T	U	T l 77��	V	W��  	V   Make note in Evernote   	W �	X	X ,   M a k e   n o t e   i n   E v e r n o t e	U 	Y	Z	Y r  7D	[	\	[ I 7B����	]
�� .EVRNcrntnull��� ��� null��  	] ��	^	_
�� 
Enhl	^ o  9:���� 0 the_template the_Template	_ ��	`	a
�� 
Entt	` o  ;<���� 0 mytitle myTitle	a ��	b��
�� 
Ennb	b o  =>���� 0 
evnotebook 
EVnotebook��  	\ o      ���� 0 n  	Z 	c	d	c Z EW	e	f����	e > EI	g	h	g o  EF���� 0 evtag EVTag	h J  FH����  	f I LS��	i	j
�� .EVRNassnnull���     ****	i o  LM���� 0 evtag EVTag	j ��	k��
�� 
EV13	k o  NO���� 0 n  ��  ��  ��  	d 	l	m	l O Xj	n	o	n I \i����	p
�� .EVRNadtnnull���     EVnn��  	p ��	q��
�� 
EV19	q o  `e���� 0 	finalhtml 	finalHTML��  	o o  XY���� 0 n  	m 	r	s	r r  kp	t	u	t o  kl���� 0 	emaildate 	EmailDate	u n      	v	w	v 1  mo��
�� 
EVdd	w o  lm���� 0 n  	s 	x��	x r  qv	y	z	y o  qr���� 0 msglink MsgLink	z n      	{	|	{ 1  su��
�� 
EVsu	| o  rs���� 0 n  ��  ��  	N k  y�	}	} 	~		~ l yy��������  ��  ��  	 	�	�	� l yy��	�	���  	�   Make note in Evernote   	� �	�	� ,   M a k e   n o t e   i n   E v e r n o t e	� 	�	�	� r  y�	�	�	� I y�����	�
�� .EVRNcrntnull��� ��� null��  	� ��	�	�
�� 
Enhl	� o  {|���� 0 the_template the_Template	� ��	�	�
�� 
Entt	� o  }~���� 0 mytitle myTitle	� ��	���
�� 
Ennb	� o  ����� 0 
evnotebook 
EVnotebook��  	� o      ���� 0 n  	� 	�	�	� Z ��	�	�����	� > ��	�	�	� o  ������ 0 evtag EVTag	� J  ������  	� I ����	�	�
�� .EVRNassnnull���     ****	� o  ������ 0 evtag EVTag	� ��	���
�� 
EV13	� o  ������ 0 n  ��  ��  ��  	� 	�	�	� O ��	�	�	� I ������	�
�� .EVRNadtnnull���     EVnn��  	� ��	���
�� 
EV18	� o  ������ 0 	mycontent 	myContent��  	� o  ������ 0 n  	� 	�	�	� r  ��	�	�	� o  ������ 0 	emaildate 	EmailDate	� n      	�	�	� 1  ����
�� 
EVdd	� o  ������ 0 n  	� 	���	� r  ��	�	�	� o  ������ 0 msglink MsgLink	� n      	�	�	� 1  ����
�� 
EVsu	� o  ������ 0 n  ��  ��  ��  �  � 	���	� l ����������  ��  ��  ��  � 	�	�	� E  ��	�	�	� o  ������ 0 mysource mySource	� m  ��	�	� �	�	�  t e x t / p l a i n	� 	���	� k  ��	�	� 	�	�	� l ����~�}�  �~  �}  	� 	�	�	� l ���|	�	��|  	�   Make note in Evernote   	� �	�	� ,   M a k e   n o t e   i n   E v e r n o t e	� 	�	�	� r  ��	�	�	� I ���{�z	�
�{ .EVRNcrntnull��� ��� null�z  	� �y	�	�
�y 
Enhl	� o  ���x�x 0 the_template the_Template	� �w	�	�
�w 
Entt	� o  ���v�v 0 mytitle myTitle	� �u	��t
�u 
Ennb	� o  ���s�s 0 
evnotebook 
EVnotebook�t  	� o      �r�r 0 n  	� 	�	�	� Z ��	�	��q�p	� > ��	�	�	� o  ���o�o 0 evtag EVTag	� J  ���n�n  	� I ���m	�	�
�m .EVRNassnnull���     ****	� o  ���l�l 0 evtag EVTag	� �k	��j
�k 
EV13	� o  ���i�i 0 n  �j  �q  �p  	� 	�	�	� O ��	�	�	� I ���h�g	�
�h .EVRNadtnnull���     EVnn�g  	� �f	��e
�f 
EV18	� o  ���d�d 0 	mycontent 	myContent�e  	� o  ���c�c 0 n  	� 	�	�	� r  ��	�	�	� o  ���b�b 0 	emaildate 	EmailDate	� n      	�	�	� 1  ���a
�a 
EVdd	� o  ���`�` 0 n  	� 	�	�	� r  ��	�	�	� o  ���_�_ 0 msglink MsgLink	� n      	�	�	� 1  ���^
�^ 
EVsu	� o  ���]�] 0 n  	� 	��\	� l ���[�Z�Y�[  �Z  �Y  �\  ��  �  � 	�	�	� l �X�W�V�X  �W  �V  	� 	�	�	� l �U	�	��U  	�   Multipart mixed   	� �	�	�     M u l t i p a r t   m i x e d	� 	�	�	� l �T�S�R�T  �S  �R  	� 	��Q	� l �P	�	��P  	� #  Other types of HTML-encoding   	� �	�	� :   O t h e r   t y p e s   o f   H T M L - e n c o d i n g�Q  �  � k  �	�	� 	�	�	� l �O�N�M�O  �N  �M  	� 	�	�	� l �L	�	��L  	�   Check for Base64   	� �	�	� "   C h e c k   f o r   B a s e 6 4	� 	�	�	� r  	�	�	� n 	�	�	� I  �K	��J�K 0 base64_check base64_Check	� 	��I	� o  	�H�H 0 mysource mySource�I  �J  	�  f  	� o      �G�G 0 base64detect base64Detect	� 	�	�	� l �F�E�D�F  �E  �D  	� 	�	�	� l �C
 
�C  
  #  If message is Base64 encoded   
 �

 :   I f   m e s s a g e   i s   B a s e 6 4   e n c o d e d	� 


 Z  N

�B

 = 

	
 o  �A�A 0 base64detect base64Detect
	 m  �@
�@ boovtrue
 r  "




 n 


 I  �?
�>�? 0 base64_decode base64_Decode
 
�=
 o  �<�< 0 mysource mySource�=  �>  
  f  
 o      �;�; 0 	finalhtml 	finalHTML�B  
 k  %N

 


 r  %7


 n %1


 I  &1�:
�9�:  0 extractbetween extractBetween
 


 o  &'�8�8 0 evhtml evHTML
 


 m  '*

 �

  < / h e a d >
 
�7
 m  *-

 �
 
   < / h t m l >�7  �9  
  f  %&
 o      �6�6 0 	multihtml 	multiHTML
 
!�5
! r  8N
"
#
" c  8H
$
%
$ n 8D
&
'
& I  9D�4
(�3�4 0 htmlfix htmlFix
( 
)
*
) o  9>�2�2 0 	multihtml 	multiHTML
* 
+
,
+ o  >?�1�1 0 theboundary theBoundary
, 
-�0
- o  ?@�/�/ 0 	mycontent 	myContent�0  �3  
'  f  89
% m  DG�.
�. 
ctxt
# o      �-�- 0 	finalhtml 	finalHTML�5  
 
.
/
. l OO�,�+�*�,  �+  �*  
/ 
0
1
0 l OO�)
2
3�)  
2   Make note in Evernote   
3 �
4
4 ,   M a k e   n o t e   i n   E v e r n o t e
1 
5
6
5 r  O\
7
8
7 I OZ�(�'
9
�( .EVRNcrntnull��� ��� null�'  
9 �&
:
;
�& 
Enhl
: o  QR�%�% 0 the_template the_Template
; �$
<
=
�$ 
Entt
< o  ST�#�# 0 mytitle myTitle
= �"
>�!
�" 
Ennb
> o  UV� �  0 
evnotebook 
EVnotebook�!  
8 o      �� 0 n  
6 
?
@
? Z ]o
A
B��
A > ]a
C
D
C o  ]^�� 0 evtag EVTag
D J  ^`��  
B I dk�
E
F
� .EVRNassnnull���     ****
E o  de�� 0 evtag EVTag
F �
G�
� 
EV13
G o  fg�� 0 n  �  �  �  
@ 
H
I
H O p�
J
K
J I t���
L
� .EVRNadtnnull���     EVnn�  
L �
M�
� 
EV19
M o  x}�� 0 	finalhtml 	finalHTML�  
K o  pq�� 0 n  
I 
N
O
N r  ��
P
Q
P o  ���� 0 	emaildate 	EmailDate
Q n      
R
S
R 1  ���
� 
EVdd
S o  ���� 0 n  
O 
T
U
T r  ��
V
W
V o  ���� 0 msglink MsgLink
W n      
X
Y
X 1  ���
� 
EVsu
Y o  ���
�
 0 n  
U 
Z
[
Z l ���	���	  �  �  
[ 
\�
\ l ���
]
^�  
]    End of message processing   
^ �
_
_ 4   E n d   o f   m e s s a g e   p r o c e s s i n g�  | 
`
a
` l ������  �  �  
a 
b
c
b l ���
d
e�  
d %  Start of attachment processing   
e �
f
f >   S t a r t   o f   a t t a c h m e n t   p r o c e s s i n g
c 
g
h
g O  ��
i
j
i k  ��
k
k 
l
m
l l ��� �����   ��  ��  
m 
n
o
n l ����
p
q��  
p 7 1 If attachment present, run attachment subroutine   
q �
r
r b   I f   a t t a c h m e n t   p r e s e n t ,   r u n   a t t a c h m e n t   s u b r o u t i n e
o 
s��
s Z ��
t
u����
t > ��
v
w
v n ��
x
y
x 2 ����
�� 
attc
y o  ������ 0 thismessage thisMessage
w J  ������  
u n ��
z
{
z I  ����
|���� 0 attachment_process  
| 
}
~
} o  ������ 0 thismessage thisMessage
~ 
��
 o  ������ 0 n  ��  ��  
{  f  ����  ��  ��  
j m  ��
�
��                                                                                  emal  alis    F  Macintosh HD               ̦�H+     MMail.app                                                        Ro̐y        ����  	                Applications    ̦ƒ      ̏�Y       M  #Macintosh HD:Applications: Mail.app     M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��  
h 
�
�
� l ����������  ��  ��  
� 
�
�
� l ����
�
���  
� * $ Item has finished. Count as success   
� �
�
� H   I t e m   h a s   f i n i s h e d .   C o u n t   a s   s u c c e s s
� 
���
� r  ��
�
�
� [  ��
�
�
� o  ������ 0 successcount successCount
� m  ������ 
� o      ���� 0 successcount successCount��  t R      ������
�� .ascrerr ****      � ****��  ��  ��  r m     
�
��                                                                                  EVRN  alis    V  Macintosh HD               ̦�H+     MEvernote.app                                                    ���'L        ����  	                Applications    ̦ƒ      �'=�       M  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  p 
���
� I ����
���
�� .ascrcmnt****      � ****
� b  ��
�
�
� m  ��
�
� �
�
�  s u c c e s s C o u n t :  
� o  ������ 0 successcount successCount��  ��  M 
�
�
� l     ��������  ��  ��  
� 
�
�
� l     ��������  ��  ��  
� 
�
�
� l     ��������  ��  ��  
� 
�
�
� l      ��
�
���  
� r l 
======================================
// ATTACHMENT SUBROUTINES 
=======================================
   
� �
�
� �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   A T T A C H M E N T   S U B R O U T I N E S   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 

� 
�
�
� l     ��������  ��  ��  
� 
�
�
� l     ��
�
���  
�   Folder exists?   
� �
�
�    F o l d e r   e x i s t s ?
� 
�
�
� i   � �
�
�
� I      ��
����� 0 f_exists  
� 
���
� o      ���� 0 exportfolder ExportFolder��  ��  
� Q     +
�
�
�
� k    
�
� 
�
�
� r    

�
�
� l   
�����
� I   ��
���
�� .earsffdralis        afdr
� m    ��
�� afdrcusr��  ��  ��  
� o      ���� 0 mypath myPath
� 
�
�
� e    
�
� c    
�
�
� o    ���� 0 exportfolder ExportFolder
� m    ��
�� 
alis
� 
���
� r    
�
�
� o    ���� 0 exportfolder ExportFolder
� o      ���� 0 saveloc SaveLoc��  
� R      ������
�� .ascrerr ****      � ****��  ��  
� O   +
�
�
� I   *����
�
�� .corecrel****      � null��  
� ��
�
�
�� 
kocl
� m     !��
�� 
cfol
� ��
���
�� 
prdt
� K   " &
�
� ��
���
�� 
pnam
� m   # $
�
� �
�
� * T e m p   E x p o r t   F r o m   M a i l��  ��  
� m    
�
��                                                                                  MACS  alis    t  Macintosh HD               ̦�H+     0
Finder.app                                                      �
�\��        ����  	                CoreServices    ̦ƒ      �\��       0   *   )  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  
� 
�
�
� l     ��������  ��  ��  
� 
�
�
� l     ��
�
���  
�   Attachment processing   
� �
�
� ,   A t t a c h m e n t   p r o c e s s i n g
� 
�
�
� i   � �
�
�
� I      ��
����� 0 attachment_process  
� 
�
�
� o      ���� 0 thismessage thisMessage
� 
���
� o      ���� 0 n  ��  ��  
� O     �
�
�
� k    �
�
� 
�
�
� l   ��������  ��  ��  
� 
�
�
� l   ��
�
���  
� 1 + Make sure text item delimiters are default   
� �
�
� V   M a k e   s u r e   t e x t   i t e m   d e l i m i t e r s   a r e   d e f a u l t
� 
�
�
� r    	
�
�
� m    
�
� �
�
�  
� n     
�
�
� 1    ��
�� 
txdl
� 1    ��
�� 
ascr
� 
�
�
� l  
 
��������  ��  ��  
� 
�
�
� l  
 
��
�
���  
� * $ Temp files processed on the Desktop   
� �
�
� H   T e m p   f i l e s   p r o c e s s e d   o n   t h e   D e s k t o p
� 
�
�
� r   
 
�
�
� c   
 
�
�
� l  
 
�����
� b   
 
�
�
� l  
 
�����
� I  
 ��
���
�� .earsffdralis        afdr
� m   
 ��
�� afdmdesk��  ��  ��  
� m    
�
� �
�
� , T e m p   E x p o r t   F r o m   M a i l :��  ��  
� m    ��
�� 
TEXT
� o      ���� 0 exportfolder ExportFolder
� 
�
�
� r       n    I    ������ 0 f_exists   �� o    ���� 0 exportfolder ExportFolder��  ��    f     o      ���� 0 saveloc SaveLoc
�  l   ��������  ��  ��   	 l   ��
��  
   Process attachments    � (   P r o c e s s   a t t a c h m e n t s	  r    $ n   " 2    "��
�� 
attc o     ���� 0 thismessage thisMessage o      ����  0 theattachments theAttachments  r   % ( m   % &����   o      ���� 0 attcount attCount  X   ) ��� k   9 �  r   9 @ b   9 > !  o   9 :���� 0 exportfolder ExportFolder! n  : ="#" 1   ; =��
�� 
pnam# o   : ;���� 0 theattachment theAttachment o      ���� 0 thefilename theFileName $%$ Q   A W&'��& I  D N��()
�� .coresavenull���     obj ( o   D E���� 0 theattachment theAttachment) ��*��
�� 
kfil* 4   F J��+
�� 
file+ o   H I���� 0 thefilename theFileName��  ' R      ������
�� .ascrerr ****      � ****��  ��  ��  % ,-, O   X p./. O  ^ o010 I  b n����2
�� .EVRNadtnnull���     EVnn��  2 �3�~
� 
EV213 4   f j�}4
�} 
file4 o   h i�|�| 0 thefilename theFileName�~  1 o   ^ _�{�{ 0 n  / m   X [55�                                                                                  EVRN  alis    V  Macintosh HD               ̦�H+     MEvernote.app                                                    ���'L        ����  	                Applications    ̦ƒ      �'=�       M  'Macintosh HD:Applications: Evernote.app     E v e r n o t e . a p p    M a c i n t o s h   H D  Applications/Evernote.app   / ��  - 676 l  q q�z�y�x�z  �y  �x  7 898 l  q q�w:;�w  : !  Silent delete of temp file   ; �<< 6   S i l e n t   d e l e t e   o f   t e m p   f i l e9 =>= r   q �?@? I  q ~�vAB
�v .earsffdralis        afdrA m   q t�u
�u afdmtrshB �tC�s
�t 
fromC m   w z�r
�r fldmfldu�s  @ o      �q�q 0 trash_folder trash_Folder> DED I  � ��pF�o
�p .sysoexecTEXT���     TEXTF b   � �GHG b   � �IJI b   � �KLK m   � �MM �NN  m v  L n   � �OPO 1   � ��n
�n 
strqP n   � �QRQ 1   � ��m
�m 
psxpR o   � ��l�l 0 thefilename theFileNameJ 1   � ��k
�k 
spacH n   � �STS 1   � ��j
�j 
strqT n   � �UVU 1   � ��i
�i 
psxpV o   � ��h�h 0 trash_folder trash_Folder�o  E W�gW l  � ��f�e�d�f  �e  �d  �g  �� 0 theattachment theAttachment o   , -�c�c  0 theattachments theAttachments XYX l  � ��b�a�`�b  �a  �`  Y Z[Z l  � ��_\]�_  \ #  Silent delete of temp folder   ] �^^ :   S i l e n t   d e l e t e   o f   t e m p   f o l d e r[ _`_ r   � �aba n  � �cdc I   � ��^e�]�^ 0 trashfolder  e f�\f o   � ��[�[ 0 saveloc SaveLoc�\  �]  d  f   � �b o      �Z�Z 0 success  ` g�Yg l  � ��X�W�V�X  �W  �V  �Y  
� m     hh�                                                                                  emal  alis    F  Macintosh HD               ̦�H+     MMail.app                                                        Ro̐y        ����  	                Applications    ̦ƒ      ̏�Y       M  #Macintosh HD:Applications: Mail.app     M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��  
� iji l     �U�T�S�U  �T  �S  j klk l     �Rmn�R  m #  Silent delete of temp folder   n �oo :   S i l e n t   d e l e t e   o f   t e m p   f o l d e rl pqp i   � �rsr I      �Qt�P�Q 0 trashfolder  t u�Ou o      �N�N 0 saveloc SaveLoc�O  �P  s Q     �vwxv k    �yy z{z r    |}| l   
~�M�L~ c    
� l   ��K�J� I   �I��H
�I .earsffdralis        afdr� m    �G
�G afdrtrsh�H  �K  �J  � m    	�F
�F 
utxt�M  �L  } o      �E�E 0 trashfolderpath  { ��� r    ��� I   �D��C
�D .sysonfo4asfe        file� l   ��B�A� c    ��� o    �@�@ 0 saveloc SaveLoc� m    �?
�? 
alis�B  �A  �C  � o      �>�> 0 srcfolderinfo  � ��� r    ��� n    ��� 1    �=
�= 
pnam� o    �<�< 0 srcfolderinfo  � o      �;�; 0 srcfoldername  � ��� r    $��� n    "��� 1     "�:
�: 
strq� n     ��� 1     �9
�9 
psxp� o    �8�8 0 saveloc SaveLoc� o      �7�7 0 saveloc SaveLoc� ��� r   % (��� m   % &�6�6  � o      �5�5 0 counter  � ��� T   ) f�� k   . a�� ��� Z   . I���4�� =  . 1��� o   . /�3�3 0 counter  � m   / 0�2�2  � r   4 ;��� b   4 9��� b   4 7��� o   4 5�1�1 0 trashfolderpath  � o   5 6�0�0 0 srcfoldername  � m   7 8�� ���  :� o      �/�/ 0 destfolderpath  �4  � r   > I��� b   > G��� b   > E��� b   > C��� b   > A��� o   > ?�.�. 0 trashfolderpath  � o   ? @�-�- 0 srcfoldername  � m   A B�� ���   � o   C D�,�, 0 counter  � m   E F�� ���  :� o      �+�+ 0 destfolderpath  � ��� Q   J [���� r   M R��� c   M P��� o   M N�*�* 0 destfolderpath  � m   N O�)
�) 
alis� o      �(�( 0 destfolderalias  � R      �'�&�%
�' .ascrerr ****      � ****�&  �%  �  S   Z [� ��$� r   \ a��� [   \ _��� o   \ ]�#�# 0 counter  � m   ] ^�"�" � o      �!�! 0 counter  �$  � ��� r   g n��� n   g l��� 1   j l� 
�  
strq� n   g j��� 1   h j�
� 
psxp� o   g h�� 0 destfolderpath  � o      �� 0 destfolderpath  � ��� r   o x��� b   o v��� b   o t��� b   o r��� m   o p�� ���  d i t t o  � o   p q�� 0 saveloc SaveLoc� 1   r s�
� 
spac� o   t u�� 0 destfolderpath  � o      �� 0 command  � ��� I  y ~���
� .sysoexecTEXT���     TEXT� o   y z�� 0 command  �  � ��� l   ����  � 9 3 this won't be executed if the ditto command errors   � ��� f   t h i s   w o n ' t   b e   e x e c u t e d   i f   t h e   d i t t o   c o m m a n d   e r r o r s� ��� r    ���� b    ���� m    ��� ���  r m   - r  � o   � ��� 0 saveloc SaveLoc� o      �� 0 command  � ��� I  � ����
� .sysoexecTEXT���     TEXT� o   � ��� 0 command  �  � ��� L   � ��� m   � ��
� boovtrue�  w R      ���
� .ascrerr ****      � ****�  �  x L   � ��� m   � ��

�
 boovfalsq ��� l     �	���	  �  �  � ��� l      ����  � t n 
======================================
// HTML CLEANUP SUBROUTINES 
=======================================
   � ��� �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   H T M L   C L E A N U P   S U B R O U T I N E S   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
� ��� l     ����  �  �  � � � l     ��     Header strip    �    H e a d e r   s t r i p   i   � � I      �� � 0 stripheader stripHeader 	
	 o      ���� 0 
parasource 
paraSource
 �� o      ���� 0 myheaderlines myHeaderlines��  �    k     x  l     ��������  ��  ��    l     ����   * $ Find the last non-empty header line    � H   F i n d   t h e   l a s t   n o n - e m p t y   h e a d e r   l i n e  r      m      �   o      ���� 0 lastheaderline    r     I   	����
�� .corecnte****       **** l   ���� o    ���� 0 myheaderlines myHeaderlines��  ��  ��   o      ���� 0 n    !  V    %"#" k     $$ %&% r    '(' n    )*) 4    ��+
�� 
cobj+ o    ���� 0 n  * o    ���� 0 myheaderlines myHeaderlines( o      ���� 0 lastheaderline  & ,��, r     -.- \    /0/ o    ���� 0 n  0 m    ���� . o      ���� 0 n  ��  # l   1����1 =    232 o    ���� 0 lastheaderline  3 m    44 �55  ��  ��  ! 676 l  & &��������  ��  ��  7 898 l  & &��:;��  :   Compare header to source   ; �<< 2   C o m p a r e   h e a d e r   t o   s o u r c e9 =>= r   & -?@? l  & +A����A I  & +��B��
�� .corecnte****       ****B o   & '���� 0 
parasource 
paraSource��  ��  ��  @ o      ���� 0 sourcelength  > CDC Y   . KE��FG��E Z  8 FHI����H l  8 >J����J =  8 >KLK n   8 <MNM 4   9 <��O
�� 
cobjO o   : ;���� 0 n  N o   8 9���� 0 
parasource 
paraSourceL m   < =PP �QQ  ��  ��  I  S   A B��  ��  �� 0 n  F m   1 2���� G o   2 3���� 0 sourcelength  ��  D RSR l  L L��������  ��  ��  S TUT l  L L��VW��  V   Strip out headers   W �XX $   S t r i p   o u t   h e a d e r sU YZY r   L [[\[ l  L Y]����] n   L Y^_^ 7  M Y��`a
�� 
cobj` l  Q Ub����b [   Q Ucdc o   R S���� 0 n  d m   S T���� ��  ��  a o   V X���� 0 sourcelength  _ o   L M���� 0 
parasource 
paraSource��  ��  \ o      ����  0 cutsourceitems cutSourceItemsZ efe r   \ aghg n  \ _iji 1   ] _��
�� 
txdlj 1   \ ]��
�� 
ascrh o      ���� 0 	olddelims 	oldDelimsf klk r   b gmnm o   b c��
�� 
ret n n     opo 1   d f��
�� 
txdlp 1   c d��
�� 
ascrl qrq r   h msts l  h ku����u c   h kvwv o   h i����  0 cutsourceitems cutSourceItemsw m   i j��
�� 
ctxt��  ��  t o      ���� 0 	cutsource 	cutSourcer xyx r   n sz{z o   n o���� 0 	olddelims 	oldDelims{ n     |}| 1   p r��
�� 
txdl} 1   o p��
�� 
ascry ~~ l  t t��������  ��  ��   ��� L   t v�� o   t u���� 0 	cutsource 	cutSource� ���� l  w w��������  ��  ��  ��   ��� l     ��������  ��  ��  � ��� l     ������  �   Base64 check   � ���    B a s e 6 4   c h e c k� ��� i   � ���� I      ������� 0 base64_check base64_Check� ���� o      ���� 0 mysource mySource��  ��  � k     L�� ��� r     ��� m     ��
�� boovfals� o      ���� 0 base64detect base64Detect� ��� r    ��� m    �� ��� B C o n t e n t - T r a n s f e r - E n c o d i n g :   b a s e 6 4� o      ���� 0 base64msgstr base64MsgStr� ��� r    ��� m    	�� ��� $ C o n t e n t - T y p e :   t e x t� o      ���� &0 base64contenttype base64ContentType� ��� r    ��� I   �����
�� .sysooffslong    ��� null��  � ����
�� 
psof� o    ���� 0 base64msgstr base64MsgStr� �����
�� 
psin� o    ���� 0 mysource mySource��  � o      ���� "0 base64msgoffset base64MsgOffset� ��� r    #��� I   !�����
�� .sysooffslong    ��� null��  � ����
�� 
psof� o    ���� &0 base64contenttype base64ContentType� �����
�� 
psin� o    ���� 0 mysource mySource��  � o      ���� *0 base64contentoffset base64ContentOffset� ��� r   $ +��� c   $ )��� \   $ '��� o   $ %���� "0 base64msgoffset base64MsgOffset� o   % &���� *0 base64contentoffset base64ContentOffset� m   ' (��
�� 
doub� o      ���� 0 base64offset base64Offset� ��� r   , 1��� c   , /��� o   , -���� 0 base64offset base64Offset� m   - .��
�� 
nmbr� o      ���� 0 	theoffset 	theOffset� ��� Z   2 I������� A  2 5��� o   2 3���� 0 	theoffset 	theOffset� m   3 4���� 2� Z  8 E������� ?  8 ;��� o   8 9���� 0 	theoffset 	theOffset� m   9 :������� r   > A��� m   > ?��
�� boovtrue� o      ���� 0 base64detect base64Detect��  ��  ��  ��  � ���� L   J L�� o   J K�� 0 base64detect base64Detect��  � ��� l     �~�}�|�~  �}  �|  � ��� l     �{���{  �   Base64 decode   � ���    B a s e 6 4   d e c o d e� ��� i   � ���� I      �z��y�z 0 base64_decode base64_Decode� ��x� o      �w�w 0 mysource mySource�x  �y  � k     ]�� ��� l     �v�u�t�v  �u  �t  � ��� l     �s���s  � - ' Use TID to quickly isolate Base64 data   � ��� N   U s e   T I D   t o   q u i c k l y   i s o l a t e   B a s e 6 4   d a t a� ��� r     ��� n    ��� 1    �r
�r 
txdl� 1     �q
�q 
ascr� o      �p�p 0 olddelim oldDelim� ��� r    ��� m    �� ��� . C o n t e n t - T y p e :   t e x t / h t m l� n     ��� 1    
�o
�o 
txdl� 1    �n
�n 
ascr� ��� r    ��� n    ��� 4   �m�
�m 
citm� m    �l�l � o    �k�k 0 mysource mySource� o      �j�j 0 
base64_raw 
base64_Raw� ��� r    ��� b    ��� 1    �i
�i 
lnfd� 1    �h
�h 
lnfd� n     ��� 1    �g
�g 
txdl� 1    �f
�f 
ascr�    r    - n    ' 4  $ '�e
�e 
citm m   % &�d�d  o    $�c�c 0 
base64_raw 
base64_Raw o      �b�b 0 
base64_raw 
base64_Raw  r   . 3	
	 m   . / � 
 - - - - -
 n      1   0 2�a
�a 
txdl 1   / 0�`
�` 
ascr  r   4 B n   4 < 4  9 <�_
�_ 
citm m   : ;�^�^  o   4 9�]�] 0 
base64_raw 
base64_Raw o      �\�\ 0 	multihtml 	multiHTML  r   C H o   C D�[�[ 0 olddelim oldDelim n      1   E G�Z
�Z 
txdl 1   D E�Y
�Y 
ascr  l  I I�X�W�V�X  �W  �V    l  I I�U !�U      Decode Base64   ! �""    D e c o d e   B a s e 6 4 #$# r   I Z%&% I  I X�T'�S
�T .sysoexecTEXT���     TEXT' b   I T()( b   I R*+* m   I J,, �-- 
 e c h o  + l  J Q.�R�Q. n   J Q/0/ 1   O Q�P
�P 
strq0 o   J O�O�O 0 	multihtml 	multiHTML�R  �Q  ) m   R S11 �22 & |   o p e n s s l   b a s e 6 4   - d�S  & o      �N�N 0 basehtml baseHTML$ 343 l  [ [�M�L�K�M  �L  �K  4 5�J5 L   [ ]66 o   [ \�I�I 0 basehtml baseHTML�J  � 787 l     �H�G�F�H  �G  �F  8 9:9 l     �E�D�C�E  �D  �C  : ;<; l     �B=>�B  =  	 HTML fix   > �??    H T M L   f i x< @A@ i   � �BCB I      �AD�@�A 0 htmlfix htmlFixD EFE o      �?�? 0 evhtml evHTMLF GHG o      �>�> 0 theboundary theBoundaryH I�=I o      �<�< 0 	mycontent 	myContent�=  �@  C k    
JJ KLK l     �;�:�9�;  �:  �9  L MNM r     OPO n    QRQ 1    �8
�8 
txdlR 1     �7
�7 
ascrP o      �6�6 0 	olddelims 	oldDelimsN STS r    UVU c    	WXW o    �5�5 0 evhtml evHTMLX m    �4
�4 
TEXTV o      �3�3 0 	multihtml 	multiHTMLT YZY l   �2�1�0�2  �1  �0  Z [\[ l   �/]^�/  ] "  Test for / strip out header   ^ �__ 8   T e s t   f o r   /   s t r i p   o u t   h e a d e r\ `a` r    bcb n    ded 2   �.
�. 
cpare o    �-�- 0 	multihtml 	multiHTMLc o      �,�, 0 
parasource 
paraSourcea fgf Z    ;hi�+�*h E     jkj n    lml 4    �)n
�) 
cobjn m    �(�( m o    �'�' 0 
parasource 
paraSourcek m    oo �pp  R e c e i v e d :i k   # 7qq rsr r   # )tut l  # 'v�&�%v n   # 'wxw 4   $ '�$y
�$ 
cobjy m   % &�#�# x o   # $�"�" 0 
parasource 
paraSource�&  �%  u o      �!�! 0 myheaderlines myHeaderliness z� z r   * 7{|{ n  * 1}~} I   + 1��� 0 stripheader stripHeader ��� o   + ,�� 0 
parasource 
paraSource� ��� o   , -�� 0 myheaderlines myHeaderlines�  �  ~  f   * +| o      �� 0 	multihtml 	multiHTML�   �+  �*  g ��� l  < <����  �  �  � ��� l  < <����  �   Trim ending   � ���    T r i m   e n d i n g� ��� Z   < m����� E   < C��� o   < A�� 0 	multihtml 	multiHTML� m   A B�� ���  < / h t m l >� r   F X��� n  F R��� I   G R����  0 extractbetween extractBetween� ��� o   G L�� 0 	multihtml 	multiHTML� ��� m   L M�� ��� . C o n t e n t - T y p e :   t e x t / h t m l� ��� m   M N�� ���  < / h t m l >�  �  �  f   F G� o      �� 0 	multihtml 	multiHTML�  � r   [ m��� n  [ g��� I   \ g����  0 extractbetween extractBetween� ��� o   \ a�� 0 	multihtml 	multiHTML� ��� m   a b�� ��� . C o n t e n t - T y p e :   t e x t / h t m l� ��� o   b c�
�
 0 theboundary theBoundary�  �  �  f   [ \� o      �	�	 0 	multihtml 	multiHTML� ��� r   n w��� n   n u��� 2  s u�
� 
cpar� o   n s�� 0 	multihtml 	multiHTML� o      �� 0 
parasource 
paraSource� ��� l  x x����  �  �  � ��� l  x x����  � . ( Test for / strip out leading semi-colon   � ��� P   T e s t   f o r   /   s t r i p   o u t   l e a d i n g   s e m i - c o l o n� ��� Z   x ����� � E   x ~��� n   x |��� 4   y |���
�� 
cobj� m   z {���� � o   x y���� 0 
parasource 
paraSource� m   | }�� ���  ;� k   � ��� ��� r   � ���� l  � ������� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� 0 
parasource 
paraSource��  ��  � o      ���� 0 myheaderlines myHeaderlines� ��� r   � ���� n  � ���� I   � �������� 0 stripheader stripHeader� ��� o   � ����� 0 
parasource 
paraSource� ���� o   � ����� 0 myheaderlines myHeaderlines��  ��  �  f   � �� o      ���� 0 	multihtml 	multiHTML� ���� r   � ���� n   � ���� 2  � ���
�� 
cpar� o   � ����� 0 	multihtml 	multiHTML� o      ���� 0 
parasource 
paraSource��  �  �   � ��� l  � ���������  ��  ��  � ��� l  � �������  � I C Test for empty line / clean subsequent encoding info, if necessary   � ��� �   T e s t   f o r   e m p t y   l i n e   /   c l e a n   s u b s e q u e n t   e n c o d i n g   i n f o ,   i f   n e c e s s a r y� ��� Z   �������� =  � ���� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� 0 
parasource 
paraSource� m   � ��� ���  � k   ��� ��� l  � ���������  ��  ��  � ��� l  � �������  � 5 / Test for / strip out content-transfer-encoding   � ��� ^   T e s t   f o r   /   s t r i p   o u t   c o n t e n t - t r a n s f e r - e n c o d i n g� ��� Z   � �������� E   � ���� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� 0 
parasource 
paraSource� m   � �   � 2 C o n t e n t - T r a n s f e r - E n c o d i n g� k   � �  r   � � l  � ����� n   � �	 4   � ���

�� 
cobj
 m   � ����� 	 o   � ����� 0 
parasource 
paraSource��  ��   o      ���� 0 myheaderlines myHeaderlines  r   � � n  � � I   � ������� 0 stripheader stripHeader  o   � ����� 0 
parasource 
paraSource �� o   � ����� 0 myheaderlines myHeaderlines��  ��    f   � � o      ���� 0 	multihtml 	multiHTML �� r   � � n   � � 2  � ���
�� 
cpar o   � ����� 0 	multihtml 	multiHTML o      ���� 0 
parasource 
paraSource��  ��  ��  �  l  � �����   #  Test for / strip out charset    � :   T e s t   f o r   /   s t r i p   o u t   c h a r s e t �� Z   � !����  E   � �"#" n   � �$%$ 4   � ���&
�� 
cobj& m   � ����� % o   � ����� 0 
parasource 
paraSource# m   � �'' �((  c h a r s e t! k   � )) *+* r   � �,-, l  � �.����. n   � �/0/ 4   � ���1
�� 
cobj1 m   � ����� 0 o   � ����� 0 
parasource 
paraSource��  ��  - o      ���� 0 myheaderlines myHeaderlines+ 232 r   � �454 n  � �676 I   � ���8���� 0 stripheader stripHeader8 9:9 o   � ����� 0 
parasource 
paraSource: ;��; o   � ����� 0 myheaderlines myHeaderlines��  ��  7  f   � �5 o      ���� 0 	multihtml 	multiHTML3 <��< r   � =>= n   � �?@? 2  � ���
�� 
cpar@ o   � ����� 0 	multihtml 	multiHTML> o      ���� 0 
parasource 
paraSource��  ��  ��  ��  ��  ��  � ABA l 		��������  ��  ��  B CDC l 		��EF��  E 5 / Test for / strip out content-transfer-encoding   F �GG ^   T e s t   f o r   /   s t r i p   o u t   c o n t e n t - t r a n s f e r - e n c o d i n gD HIH Z  	6JK����J E  	LML n  	NON 4  
��P
�� 
cobjP m  ���� O o  	
���� 0 
parasource 
paraSourceM m  QQ �RR 2 C o n t e n t - T r a n s f e r - E n c o d i n gK k  2SS TUT r  VWV l X����X n  YZY 4  ��[
�� 
cobj[ m  ���� Z o  ���� 0 
parasource 
paraSource��  ��  W o      ���� 0 myheaderlines myHeaderlinesU \]\ r  (^_^ n "`a` I  "��b���� 0 stripheader stripHeaderb cdc o  ���� 0 
parasource 
paraSourced e��e o  ���� 0 myheaderlines myHeaderlines��  ��  a  f  _ o      ���� 0 	multihtml 	multiHTML] f��f r  )2ghg n  )0iji 2 .0��
�� 
cparj o  ).���� 0 	multihtml 	multiHTMLh o      ���� 0 
parasource 
paraSource��  ��  ��  I klk l 77��������  ��  ��  l mnm l 77��op��  o #  Test for / strip out charset   p �qq :   T e s t   f o r   /   s t r i p   o u t   c h a r s e tn rsr Z  7dtu����t E  7?vwv n  7;xyx 4  8;��z
�� 
cobjz m  9:���� y o  78���� 0 
parasource 
paraSourcew m  ;>{{ �||  c h a r s e tu k  B`}} ~~ r  BH��� l BF������ n  BF��� 4  CF���
�� 
cobj� m  DE���� � o  BC���� 0 
parasource 
paraSource��  ��  � o      ���� 0 myheaderlines myHeaderlines ��� r  IV��� n IP��� I  JP������� 0 stripheader stripHeader� ��� o  JK���� 0 
parasource 
paraSource� ���� o  KL���� 0 myheaderlines myHeaderlines��  ��  �  f  IJ� o      ���� 0 	multihtml 	multiHTML� ���� r  W`��� n  W^��� 2 \^��
�� 
cpar� o  W\���� 0 	multihtml 	multiHTML� o      ���� 0 
parasource 
paraSource��  ��  ��  s ��� l ee�������  ��  �  � ��� l ee�~���~  �   Clean content   � ���    C l e a n   c o n t e n t� ��� r  ej��� o  ef�}�} 0 theboundary theBoundary� n     ��� 1  gi�|
�| 
txdl� 1  fg�{
�{ 
ascr� ��� r  kz��� n  kt��� 2 pt�z
�z 
citm� o  kp�y�y 0 	multihtml 	multiHTML� o      �x�x  0 thesourceitems theSourceItems� ��� r  {���� m  {~�� ���  � n     ��� 1  ��w
�w 
txdl� 1  ~�v
�v 
ascr� ��� r  ����� c  ����� o  ���u�u  0 thesourceitems theSourceItems� m  ���t
�t 
ctxt� o      �s�s 0 
theencoded 
theEncoded� ��� l ���r�q�p�r  �q  �p  � ��� r  ����� m  ���� ���  %� n     ��� 1  ���o
�o 
txdl� 1  ���n
�n 
ascr� ��� r  ����� n  ����� 2 ���m
�m 
citm� o  ���l�l 0 
theencoded 
theEncoded� o      �k�k  0 thesourceitems theSourceItems� ��� r  ����� c  ����� b  ����� m  ���� ���  & #� m  ���� ���  3 7 ;� m  ���j
�j 
TEXT� n     ��� 1  ���i
�i 
txdl� 1  ���h
�h 
ascr� ��� r  ����� c  ����� o  ���g�g  0 thesourceitems theSourceItems� m  ���f
�f 
ctxt� o      �e�e 0 
theencoded 
theEncoded� ��� l ���d�c�b�d  �c  �b  � ��� r  ����� m  ���� ���  =� n     ��� 1  ���a
�a 
txdl� 1  ���`
�` 
ascr� ��� r  ����� n  ����� 2 ���_
�_ 
citm� o  ���^�^ 0 
theencoded 
theEncoded� o      �]�]  0 thesourceitems theSourceItems� ��� r  ����� m  ���� ���  %� n     ��� 1  ���\
�\ 
txdl� 1  ���[
�[ 
ascr� ��� r  ����� c  ����� o  ���Z�Z  0 thesourceitems theSourceItems� m  ���Y
�Y 
ctxt� o      �X�X 0 
theencoded 
theEncoded� ��� l ���W�V�U�W  �V  �U  � ��� r  ����� m  ���� ���  % "� n        1  ���T
�T 
txdl 1  ���S
�S 
ascr�  r  �� n  �� 2 ���R
�R 
citm o  ���Q�Q 0 
theencoded 
theEncoded o      �P�P  0 thesourceitems theSourceItems 	 r  � 

 m  �� �  = " n      1  ���O
�O 
txdl 1  ���N
�N 
ascr	  r   c  
 o  �M�M  0 thesourceitems theSourceItems m  	�L
�L 
ctxt o      �K�K 0 
theencoded 
theEncoded  l �J�I�H�J  �I  �H    r   b   m   �  % l  �G�F  I �E!�D
�E .sysontocTEXT       shor! m  �C�C �D  �G  �F   n     "#" 1  �B
�B 
txdl# 1  �A
�A 
ascr $%$ r  (&'& n  "()( 2 "�@
�@ 
citm) o  �?�? 0 
theencoded 
theEncoded' o      �>�>  0 thesourceitems theSourceItems% *+* r  )0,-, m  ),.. �//  - n     010 1  -/�=
�= 
txdl1 1  ,-�<
�< 
ascr+ 232 r  1<454 c  1:676 o  16�;�;  0 thesourceitems theSourceItems7 m  69�:
�: 
ctxt5 o      �9�9 0 
theencoded 
theEncoded3 898 l ==�8�7�6�8  �7  �6  9 :;: r  =D<=< m  =@>> �??  % %= n     @A@ 1  AC�5
�5 
txdlA 1  @A�4
�4 
ascr; BCB r  EPDED n  EJFGF 2 FJ�3
�3 
citmG o  EF�2�2 0 
theencoded 
theEncodedE o      �1�1  0 thesourceitems theSourceItemsC HIH r  QXJKJ m  QTLL �MM  %K n     NON 1  UW�0
�0 
txdlO 1  TU�/
�/ 
ascrI PQP r  YdRSR c  YbTUT o  Y^�.�.  0 thesourceitems theSourceItemsU m  ^a�-
�- 
ctxtS o      �,�, 0 
theencoded 
theEncodedQ VWV l ee�+�*�)�+  �*  �)  W XYX r  etZ[Z b  ep\]\ m  eh^^ �__  %] l ho`�(�'` I ho�&a�%
�& .sysontocTEXT       shora m  hk�$�$ 
�%  �(  �'  [ n     bcb 1  qs�#
�# 
txdlc 1  pq�"
�" 
ascrY ded r  u�fgf n  uzhih 2 vz�!
�! 
citmi o  uv� �  0 
theencoded 
theEncodedg o      ��  0 thesourceitems theSourceItemse jkj r  ��lml m  ��nn �oo  m n     pqp 1  ���
� 
txdlq 1  ���
� 
ascrk rsr r  ��tut c  ��vwv o  ����  0 thesourceitems theSourceItemsw m  ���
� 
ctxtu o      �� 0 
theencoded 
theEncodeds xyx l ������  �  �  y z{z r  ��|}| m  ��~~ �  % 0 A} n     ��� 1  ���
� 
txdl� 1  ���
� 
ascr{ ��� r  ����� n  ����� 2 ���
� 
citm� o  ���� 0 
theencoded 
theEncoded� o      ��  0 thesourceitems theSourceItems� ��� r  ����� m  ���� ���  � n     ��� 1  ���
� 
txdl� 1  ���
� 
ascr� ��� r  ����� c  ����� o  ����  0 thesourceitems theSourceItems� m  ���
� 
ctxt� o      �� 0 
theencoded 
theEncoded� ��� l �����
�  �  �
  � ��� r  ����� m  ���� ���  % 0 9� n     ��� 1  ���	
�	 
txdl� 1  ���
� 
ascr� ��� r  ����� n  ����� 2 ���
� 
citm� o  ���� 0 
theencoded 
theEncoded� o      ��  0 thesourceitems theSourceItems� ��� r  ����� m  ���� ���  � n     ��� 1  ���
� 
txdl� 1  ���
� 
ascr� ��� r  ����� c  ����� o  ����  0 thesourceitems theSourceItems� m  ���
� 
ctxt� o      � �  0 
theencoded 
theEncoded� ��� l ����������  ��  ��  � ��� r  ����� m  ���� ���  % C 2 % A 0� n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ����� n  ����� 2 ����
�� 
citm� o  ������ 0 
theencoded 
theEncoded� o      ����  0 thesourceitems theSourceItems� ��� r  � ��� m  ���� ���  & n b s p ;� n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ��� c  
��� o  ����  0 thesourceitems theSourceItems� m  	��
�� 
ctxt� o      ���� 0 
theencoded 
theEncoded� ��� l ��������  ��  ��  � ��� r  ��� m  �� ���  % 2 0� n     ��� 1  ��
�� 
txdl� 1  ��
�� 
ascr� ��� r   ��� n  ��� 2 ��
�� 
citm� o  ���� 0 
theencoded 
theEncoded� o      ����  0 thesourceitems theSourceItems� ��� r  !(��� m  !$�� ���   � n     ��� 1  %'��
�� 
txdl� 1  $%��
�� 
ascr� ��� r  )4��� c  )2��� o  ).����  0 thesourceitems theSourceItems� m  .1��
�� 
ctxt� o      ���� 0 
theencoded 
theEncoded� ��� l 55��������  ��  ��  � ��� r  5@��� l 5<������ I 5<�����
�� .sysontocTEXT       shor� m  58���� 
��  ��  ��  � n     ��� 1  =?��
�� 
txdl� 1  <=��
�� 
ascr� ��� r  AL��� n  AF��� 2 BF��
�� 
citm� o  AB���� 0 
theencoded 
theEncoded� o      ����  0 thesourceitems theSourceItems�    r  MT m  MP �   n      1  QS��
�� 
txdl 1  PQ��
�� 
ascr 	 r  U`

 c  U^ o  UZ����  0 thesourceitems theSourceItems m  Z]��
�� 
ctxt o      ���� 0 
theencoded 
theEncoded	  l aa��������  ��  ��    r  ah m  ad �  = n      1  eg��
�� 
txdl 1  de��
�� 
ascr  r  it n  in 2 jn��
�� 
citm o  ij���� 0 
theencoded 
theEncoded o      ����  0 thesourceitems theSourceItems  r  u� !  c  u~"#" b  u|$%$ m  ux&& �''  & #% m  x{(( �))  6 1 ;# m  |}��
�� 
TEXT! n     *+* 1  ���
�� 
txdl+ 1  ~��
�� 
ascr ,-, r  ��./. c  ��010 o  ������  0 thesourceitems theSourceItems1 m  ����
�� 
ctxt/ o      ���� 0 
theencoded 
theEncoded- 232 l ����������  ��  ��  3 454 r  ��676 m  ��88 �99  $7 n     :;: 1  ����
�� 
txdl; 1  ����
�� 
ascr5 <=< r  ��>?> n  ��@A@ 2 ����
�� 
citmA o  ������ 0 
theencoded 
theEncoded? o      ����  0 thesourceitems theSourceItems= BCB r  ��DED c  ��FGF b  ��HIH m  ��JJ �KK  & #I m  ��LL �MM  3 6 ;G m  ����
�� 
TEXTE n     NON 1  ����
�� 
txdlO 1  ����
�� 
ascrC PQP r  ��RSR c  ��TUT o  ������  0 thesourceitems theSourceItemsU m  ����
�� 
ctxtS o      ���� 0 
theencoded 
theEncodedQ VWV l ����������  ��  ��  W XYX r  ��Z[Z m  ��\\ �]]  '[ n     ^_^ 1  ����
�� 
txdl_ 1  ����
�� 
ascrY `a` r  ��bcb n  ��ded 2 ����
�� 
citme o  ������ 0 
theencoded 
theEncodedc o      ����  0 thesourceitems theSourceItemsa fgf r  ��hih m  ��jj �kk  & a p o s ;i n     lml 1  ����
�� 
txdlm 1  ����
�� 
ascrg non r  ��pqp c  ��rsr o  ������  0 thesourceitems theSourceItemss m  ����
�� 
ctxtq o      ���� 0 
theencoded 
theEncodedo tut l ����������  ��  ��  u vwv r  ��xyx m  ��zz �{{  "y n     |}| 1  ����
�� 
txdl} 1  ����
�� 
ascrw ~~ r  ����� n  ����� 2 ����
�� 
citm� o  ������ 0 
theencoded 
theEncoded� o      ����  0 thesourceitems theSourceItems ��� r  � ��� m  ���� ���  \ "� n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr� ��� r  ��� c  
��� o  ����  0 thesourceitems theSourceItems� m  	��
�� 
ctxt� o      ���� 0 
theencoded 
theEncoded� ��� l ��������  ��  ��  � ��� r  ��� o  ���� 0 	olddelims 	oldDelims� n     ��� 1  ��
�� 
txdl� 1  ��
�� 
ascr� ��� l ��������  ��  ��  � ��� r  !��� n ��� I  �������  0 extractbetween extractBetween� ��� o  ���� 0 
theencoded 
theEncoded� ��� m  �� ���  < / h e a d >� ���� m  �� ���  < / h t m l >��  ��  �  f  � o      ���� 0 trimhtml trimHTML� ��� l ""��������  ��  ��  � ��� r  "%��� o  "#���� 0 	mycontent 	myContent� o      ���� 0 thehtml theHTML� ��� l &&��������  ��  ��  � ��� Q  &����� k  )��� ��� r  )0��� m  )*��
�� boovfals� o      ����  0 decode_success decode_Success� ��� l 11��������  ��  ��  � ��� l 11������  �   UTF-8 conversion   � ��� "   U T F - 8   c o n v e r s i o n� ��� r  1D��� I 1B����
�� .sysoexecTEXT���     TEXT� b  1>��� b  1:��� m  14�� ��� 
 e c h o  � n  49��� 1  59�~
�~ 
strq� o  45�}�} 0 trimhtml trimHTML� m  :=�� ��� $   |   i c o n v   - t   U T F - 8  �  � o      �|�|  0 newencodedtext NewEncodedText� ��� r  EL��� n  EJ��� 1  FJ�{
�{ 
strq� o  EF�z�z  0 newencodedtext NewEncodedText� o      �y�y 0 the_utf8text the_UTF8Text� ��� l MM�x�w�v�x  �w  �v  � ��� l MM�u���u  �   URL decode conversion   � ��� ,   U R L   d e c o d e   c o n v e r s i o n� ��� r  M\��� c  MZ��� b  MV��� b  MR��� m  MP�� ��� . p h p   - r   " e c h o   u r l d e c o d e (� o  PQ�t�t 0 the_utf8text the_UTF8Text� m  RU�� ���  ) ; "� m  VY�s
�s 
ctxt� o      �r�r "0 thedecodescript theDecodeScript� ��� r  ]d��� I ]b�q��p
�q .sysoexecTEXT���     TEXT� o  ]^�o�o "0 thedecodescript theDecodeScript�p  � o      �n�n 0 
thedecoded 
theDecoded� ��� l ee�m�l�k�m  �l  �k  � ��� l ee�j���j  � 2 , Fix for apostrophe / percent / equal issues   � ��� X   F i x   f o r   a p o s t r o p h e   /   p e r c e n t   /   e q u a l   i s s u e s� ��� r  el��� m  eh�� ���  & a p o s ;� n        1  ik�i
�i 
txdl 1  hi�h
�h 
ascr�  r  mx n  mr 2 nr�g
�g 
citm o  mn�f�f 0 
thedecoded 
theDecoded o      �e�e  0 thesourceitems theSourceItems 	 r  y�

 m  y| �  ' n      1  }�d
�d 
txdl 1  |}�c
�c 
ascr	  r  �� c  �� o  ���b�b  0 thesourceitems theSourceItems m  ���a
�a 
ctxt o      �`�` 0 
thedecoded 
theDecoded  l ���_�^�]�_  �^  �]    r  �� c  �� b  �� m  ��   �!!  & # m  ��"" �##  3 7 ; m  ���\
�\ 
TEXT n     $%$ 1  ���[
�[ 
txdl% 1  ���Z
�Z 
ascr &'& r  ��()( n  ��*+* 2 ���Y
�Y 
citm+ o  ���X�X 0 
thedecoded 
theDecoded) o      �W�W  0 thesourceitems theSourceItems' ,-, r  ��./. m  ��00 �11  %/ n     232 1  ���V
�V 
txdl3 1  ���U
�U 
ascr- 454 r  ��676 c  ��898 o  ���T�T  0 thesourceitems theSourceItems9 m  ���S
�S 
ctxt7 o      �R�R 0 
thedecoded 
theDecoded5 :;: l ���Q�P�O�Q  �P  �O  ; <=< r  ��>?> c  ��@A@ b  ��BCB m  ��DD �EE  & #C m  ��FF �GG  6 1 ;A m  ���N
�N 
TEXT? n     HIH 1  ���M
�M 
txdlI 1  ���L
�L 
ascr= JKJ r  ��LML n  ��NON 2 ���K
�K 
citmO o  ���J�J 0 
thedecoded 
theDecodedM o      �I�I  0 thesourceitems theSourceItemsK PQP r  ��RSR m  ��TT �UU  =S n     VWV 1  ���H
�H 
txdlW 1  ���G
�G 
ascrQ XYX r  ��Z[Z c  ��\]\ o  ���F�F  0 thesourceitems theSourceItems] m  ���E
�E 
ctxt[ o      �D�D 0 
thedecoded 
theDecodedY ^_^ l ���C�B�A�C  �B  �A  _ `a` l ���@bc�@  b  RETURN THE VALUE   c �dd   R E T U R N   T H E   V A L U Ea efe r  ��ghg o  ���?�? 0 
thedecoded 
theDecodedh o      �>�> 0 	finalhtml 	finalHTMLf iji r  ��klk m  ���=
�= boovtruel o      �<�<  0 decode_success decode_Successj m�;m L  ��nn o  ���:�: 0 	finalhtml 	finalHTML�;  � R      �9�8�7
�9 .ascrerr ****      � ****�8  �7  ��  � o�6o l 		�5�4�3�5  �4  �3  �6  A pqp l     �2�1�0�2  �1  �0  q rsr l      �/tu�/  t t n 
======================================
// NOTIFICATIONS SUBROUTINES
=======================================
   u �vv �   
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 / /   N O T I F I C A T I O N S   S U B R O U T I N E S 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
s wxw l     �.�-�,�.  �-  �,  x yzy l     �+{|�+  { &   Check for Growl and initialize    | �}} @   C h e c k   f o r   G r o w l   a n d   i n i t i a l i z e  z ~~ i   � ���� I      �*�)�(�* 0 growl_check Growl_Check�)  �(  � Z     ?���'�&� I     �%��$�% 0 appisrunning appIsRunning� ��#� m    �� ��� 
 G r o w l�#  �$  � k   	 ;�� ��� r   	 ��� m   	 
�"
�" boovtrue� o      �!�! 0 growl_running growl_Running� �� � O    ;��� k    :�� ��� r    ��� J    �� ��� m    �� ��� & I m p o r t   N o t i f i c a t i o n� ��� m    �� ��� ( S u c c e s s   N o t i f i c a t i o n� ��� m    �� ��� ( F a i l u r e   N o t i f i c a t i o n�  � o      �� .0 allnotificationsfiles allNotificationsFiles� ��� r    $��� J    "�� ��� m    �� ��� & I m p o r t   N o t i f i c a t i o n� ��� m    �� ��� ( S u c c e s s   N o t i f i c a t i o n� ��� m     �� ��� ( F a i l u r e   N o t i f i c a t i o n�  � o      �� 60 enablednotificationsfiles enabledNotificationsFiles� ��� I  % :���
� .registernull��� ��� null�  � ���
� 
appl� l 	 ' ,���� o   ' ,�� *0 notificationappname notificationAppName�  �  � ���
� 
anot� l 
 - .���� o   - .�� .0 allnotificationsfiles allNotificationsFiles�  �  � ���
� 
dnot� l 
 / 0���� o   / 0�� 60 enablednotificationsfiles enabledNotificationsFiles�  �  � ���
� 
iapp� o   1 6�
�
 $0 notificationicon notificationIcon�  �  � m    ���                                                                                  GRRR  alis    H  Macintosh HD               ̦�H+     M	Growl.app                                                        ���E�        ����  	                Applications    ̦ƒ      ��7�       M  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��  �   �'  �&   ��� l     �	���	  �  �  � ��� l     ����  � 2 , Check for presence of terminal-notifier.app   � ��� X   C h e c k   f o r   p r e s e n c e   o f   t e r m i n a l - n o t i f i e r . a p p� ��� i   � ���� I      ���� 00 osxnotifications_check osxNotifications_Check�  �  � O     +��� Z    *����� I   ��� 
� .coredoexnull���     ****� 4    ���
�� 
file� o    ���� 0 terminal_notifier_path  �   � k    �� ��� r    ��� m    ��
�� boovtrue� o      ���� 80 osxnotifications_available osxNotifications_Available� ���� L    �� m    ��
�� boovtrue��  �  � k     *�� ��� r     '��� m     !��
�� boovfals� o      ���� 80 osxnotifications_available osxNotifications_Available� ���� L   ( *�� m   ( )��
�� boovfals��  � m     ���                                                                                  sevs  alis    �  Macintosh HD               ̦�H+     0System Events.app                                               3m�c90        ����  	                CoreServices    ̦ƒ      �c       0   *   )  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� l     ��������  ��  ��  � ��� l     ������  � 1 + Annouce the count of total items to export   � ��� V   A n n o u c e   t h e   c o u n t   o f   t o t a l   i t e m s   t o   e x p o r t� ��� i   � ���� I      ������� ,0 process_notification process_Notification� ��� o      ���� 0 itemnum itemNum� ���� o      ���� 0 attnum attNum��  ��  � k     }�� ��� r     ��� m     �� ���  � o      ���� 0 	attplural 	attPlural� ��� Z    ������ =    ��� o    ���� 0 attnum attNum� m    ����  � r   
 ��� m   
 �� ���  N o� o      ���� 0 attnum attNum�    ?     o    ���� 0 attnum attNum m    ����  �� r     m     �  s o      ���� 0 	attplural 	attPlural��  ��  � 	
	 l   ��������  ��  ��  
  r    # c    ! l   ���� o    ���� 0 itemnum itemNum��  ��   m     ��
�� 
nmbr o      ���� 0 plural_test Plural_Test  Z   $ {�� ?  $ ' o   $ %���� 0 plural_test Plural_Test m   % &����  k   * O  I   * M������ 0 notification    m   + , �   & I m p o r t   N o t i f i c a t i o n !"! m   , -## �$$ 4 I m p o r t   T o   E v e r n o t e   S t a r t e d" %&% b   - :'(' b   - 8)*) b   - 6+,+ b   - 4-.- b   - 2/0/ b   - 0121 m   - .33 �44  N o w   P r o c e s s i n g  2 o   . /���� 0 itemnum itemNum0 m   0 155 �66    I t e m s   w i t h  . o   2 3���� 0 attnum attNum, m   4 577 �88    a t t a c h m e n t* o   6 7���� 0 	attplural 	attPlural( m   8 999 �::  .& ;<; o   : ?���� *0 notificationappname notificationAppName< =>= o   ? D���� (0 notificationaction notificationAction> ?��? o   D I���� $0 notificationicon notificationIcon��  ��   @��@ l  N N��������  ��  ��  ��  ��   k   R {AA BCB I   R y��D���� 0 notification  D EFE m   S TGG �HH & I m p o r t   N o t i f i c a t i o nF IJI m   T UKK �LL 4 I m p o r t   T o   E v e r n o t e   S t a r t e dJ MNM b   U fOPO b   U bQRQ b   U `STS b   U \UVU b   U ZWXW b   U XYZY m   U V[[ �\\  N o w   P r o c e s s i n g  Z o   V W���� 0 itemnum itemNumX m   X Y]] �^^    I t e m   W i t h  V o   Z [���� 0 attnum attNumT m   \ ___ �``    A t t a c h m e n tR o   ` a���� 0 	attplural 	attPluralP m   b eaa �bb  .N cdc o   f k���� *0 notificationappname notificationAppNamed efe o   k p���� (0 notificationaction notificationActionf g��g o   p u���� $0 notificationicon notificationIcon��  ��  C h��h l  z z��������  ��  ��  ��   i��i l  | |��������  ��  ��  ��  � jkj l     ��������  ��  ��  k lml l     ��no��  n   Results notification   o �pp *   R e s u l t s   n o t i f i c a t i o nm qrq i   � sts I      ��u���� 00 processed_notification processed_Notificationu vwv o      ���� 0 successcount successCountw x��x o      ���� 0 errnum errNum��  ��  t k     �yy z{z l     ��������  ��  ��  { |}| l     ��~��  ~ , & Notification failure : user canceled	    ��� L   N o t i f i c a t i o n   f a i l u r e   :   u s e r   c a n c e l e d 	} ��� Z     !������� =    ��� o     ���� 0 errnum errNum� m    ������� I    ������� 0 notification  � ��� m    �� ��� ( F a i l u r e   N o t i f i c a t i o n� ��� m    	�� ���  U s e r   C a n c e l l e d� ��� m   	 
�� ��� " F a i l e d   t o   e x p o r t !� ��� o   
 ���� *0 notificationappname notificationAppName� ��� o    ���� (0 notificationaction notificationAction� ���� o    ���� $0 notificationicon notificationIcon��  ��  ��  ��  � ��� l  " "��������  ��  ��  � ��� r   " '��� c   " %��� l  " #������ o   " #���� 0 successcount successCount��  ��  � m   # $��
�� 
nmbr� o      ���� 0 plural_test Plural_Test� ��� l  ( (��������  ��  ��  � ��� l  ( (������  � 8 2 Notification failure : no items selected in Mail	   � ��� d   N o t i f i c a t i o n   f a i l u r e   :   n o   i t e m s   s e l e c t e d   i n   M a i l 	� ��� Z   ( ������� =  ( +��� o   ( )���� 0 plural_test Plural_Test� m   ) *������� k   . G�� ��� I   . E������� 0 notification  � ��� m   / 0�� ��� ( F a i l u r e   N o t i f i c a t i o n� ��� m   0 1�� ���  I m p o r t   F a i l u r e� ��� m   1 2�� ��� @ N o   I t e m s   S e l e c t e d   I n   A p p l e   M a i l !� ��� o   2 7���� *0 notificationappname notificationAppName� ��� o   7 <���� (0 notificationaction notificationAction� ���� o   < A���� $0 notificationicon notificationIcon��  ��  � ��� l  F F��������  ��  ��  � ���� l  F F������  � : 4 Notification failure : no items exported from Mail	   � ��� h   N o t i f i c a t i o n   f a i l u r e   :   n o   i t e m s   e x p o r t e d   f r o m   M a i l 	��  � ��� =  J M��� o   J K���� 0 plural_test Plural_Test� m   K L����  � ��� k   P i�� ��� I   P g������� 0 notification  � ��� m   Q R�� ��� ( F a i l u r e   N o t i f i c a t i o n� ��� m   R S�� ���  I m p o r t   F a i l u r e� ��� m   S T�� ��� 8 N o   I t e m s   E x p o r t e d   F r o m   M a i l !� ��� o   T Y���� *0 notificationappname notificationAppName� ��� o   Y ^���� (0 notificationaction notificationAction� ���� o   ^ c���� $0 notificationicon notificationIcon��  ��  � ��� l  h h�������  ��  �  � ��~� l  h h�}���}  �   Notification success   � ��� *   N o t i f i c a t i o n   s u c c e s s�~  � ��� =  l o��� o   l m�|�| 0 plural_test Plural_Test� m   m n�{�{ � ��� k   r ��� ��� I   r ��z��y�z 0 notification  � ��� m   s t�� ��� ( S u c c e s s   N o t i f i c a t i o n� ��� m   t u�� ���  I m p o r t   S u c c e s s� ��� b   u �   b   u � b   u � b   u | m   u v �		 , S u c c e s s f u l l y   E x p o r t e d   o   v {�x�x 0 itemnum itemNum m   | 

 �    I t e m   t o   t h e   o   � ��w�w 0 
evnotebook 
EVnotebook m   � � � *   N o t e b o o k   i n   E v e r n o t e�  o   � ��v�v *0 notificationappname notificationAppName  o   � ��u�u (0 notificationaction notificationAction �t o   � ��s�s $0 notificationicon notificationIcon�t  �y  �  l  � ��r�q�p�r  �q  �p   �o l  � ��n�n     Notification success    � *   N o t i f i c a t i o n   s u c c e s s�o  �  ?  � � o   � ��m�m 0 plural_test Plural_Test m   � ��l�l  �k I   � ��j�i�j 0 notification     m   � �!! �"" ( S u c c e s s   N o t i f i c a t i o n  #$# m   � �%% �&&  I m p o r t   S u c c e s s$ '(' b   � �)*) b   � �+,+ b   � �-.- b   � �/0/ m   � �11 �22 , S u c c e s s f u l l y   E x p o r t e d  0 o   � ��h�h 0 itemnum itemNum. m   � �33 �44    I t e m s   t o   t h e  , o   � ��g�g 0 
evnotebook 
EVnotebook* m   � �55 �66 *   N o t e b o o k   i n   E v e r n o t e( 787 o   � ��f�f *0 notificationappname notificationAppName8 9:9 o   � ��e�e (0 notificationaction notificationAction: ;�d; o   � ��c�c $0 notificationicon notificationIcon�d  �i  �k  ��  � <=< r   � �>?> m   � �@@ �AA  0? o      �b�b 0 itemnum itemNum= B�aB l  � ��`�_�^�`  �_  �^  �a  r CDC l     �]�\�[�]  �\  �[  D EFE l     �Z�Y�X�Z  �Y  �X  F GHG l     �WIJ�W  I   Trigger OSX notification   J �KK 2   T r i g g e r   O S X   n o t i f i c a t i o nH LML i  NON I      �VP�U�V 0 terminal_notification  P QRQ o      �T�T &0 notificationtitle notificationTitleR STS o      �S�S *0 notificationmessage notificationMessageT U�RU o      �Q�Q (0 notoficationaction notoficationAction�R  �U  O Z     7VW�P�OV =    XYX I     �N�M�L�N 00 osxnotifications_check osxNotifications_Check�M  �L  Y m    �K
�K boovtrueW k   
 3ZZ [\[ Z   
 ]^�J_] >  
 `a` o   
 �I�I (0 notoficationaction notoficationActiona m    bb �cc  ^ r    ded b    fgf b    hih m    jj �kk    - a c t i v a t e   'i o    �H�H (0 notoficationaction notoficationActiong m    ll �mm  'e o      �G�G 
0 action  �J  _ r    non m    pp �qq  o o      �F�F 
0 action  \ r�Er I   3�Ds�C
�D .sysoexecTEXT���     TEXTs b    /tut b    -vwv b    +xyx b    )z{z b    '|}| b    %~~ o    #�B�B 0 terminal_notifier_path   m   # $�� ���    - t i t l e   '} o   % &�A�A &0 notificationtitle notificationTitle{ m   ' (�� ���  '   - m e s s a g e   'y o   ) *�@�@ *0 notificationmessage notificationMessagew m   + ,�� ���  'u o   - .�?�? 
0 action  �C  �E  �P  �O  M ��� l     �>�=�<�>  �=  �<  � ��� l     �;�:�9�;  �:  �9  � ��� l     �8���8  � #  Global notification function   � ��� :   G l o b a l   n o t i f i c a t i o n   f u n c t i o n� ��7� i  ��� I      �6��5�6 0 notification  � ��� o      �4�4 0 nname nName� ��� o      �3�3 0 ntitle nTitle� ��� o      �2�2 0 nmessage nMessage� ��� o      �1�1 0 nappname nAppName� ��� o      �0�0 0 naction nAction� ��/� o      �.�. 0 nicon nIcon�/  �5  � k     I�� ��� l     �-�,�+�-  �,  �+  � ��� Z     G����*� =    ��� o     �)�) 0 notifications  � m    �� ��� 
 G R O W L� k   
 .�� ��� Z   
 ,���(�'� =  
 ��� o   
 �&�& 0 growl_running growl_Running� m    �%
�% boovtrue� O    (��� I   '�$�#�
�$ .notifygrnull��� ��� null�#  � �"��
�" 
name� o    �!�! 0 nname nName� � ��
�  
titl� o    �� 0 ntitle nTitle� ���
� 
desc� o    �� 0 nmessage nMessage� ���
� 
appl� o     !�� 0 nappname nAppName� ���
� 
iapp� o   " #�� 0 nicon nIcon�  � m    ���                                                                                  GRRR  alis    H  Macintosh HD               ̦�H+     M	Growl.app                                                        ���E�        ����  	                Applications    ̦ƒ      ��7�       M  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��  �(  �'  � ��� l  - -����  �  �  �  � ��� =  1 8��� o   1 6�� 0 notifications  � m   6 7�� ���  O S X� ��� I   ; C���� 0 terminal_notification  � ��� o   < =�� 0 ntitle nTitle� ��� o   = >�� 0 nmessage nMessage� ��� o   > ?�� 0 naction nAction�  �  �  �*  � ��� l  H H�
�	��
  �	  �  �  �7       <��  � L X d p� ���� �@� ��������� � �� � � � �����������������������������  � :�� �����������������������������������������������������������������������������������������������������������������  0 tagging_switch tagging_Switch�  0 
evnotebook 
EVnotebook�� 0 
defaulttag 
defaultTag�� 0 	archiving  �� 0 flagging  �� 0 notifications  �� 0 successcount successCount�� 0 growl_running growl_Running�� 80 osxnotifications_available osxNotifications_Available�� 0 mytitle myTitle�� 0 themessages theMessages�� 0 thismessage thisMessage�� 0 itemnum itemNum�� 0 attnum attNum�� 0 errnum errNum�� 0 usertag userTag�� 0 evtag EVTag�� 0 	multihtml 	multiHTML��  0 thesourceitems theSourceItems�� 0 mysource mySource��  0 decode_success decode_Success�� 0 	finalhtml 	finalHTML�� 0 	myheaders 	myHeaders�� *0 mysource_paragraphs mysource_Paragraphs�� 0 
base64_raw 
base64_Raw�� 0 archive_mailbox_label  �� 0 archive_flag  �� 0 terminal_notifier_path  �� *0 notificationappname notificationAppName�� (0 notificationaction notificationAction�� $0 notificationicon notificationIcon�� 0 appisrunning appIsRunning�� 0 
item_check 
item_Check�� 0 
item_count 
item_Count��  0 tagging_dialog tagging_Dialog�� $0 default_notebook default_Notebook�� 0 tag_list Tag_List�� 0 	tag_check 	Tag_Check�� 0 notebook_list Notebook_List��  0 extractbetween extractBetween�� 0 simple_sort  �� 0 mail_process mail_Process�� &0 mail_post_process mail_post_Process�� 0 make_evernote make_Evernote�� 0 f_exists  �� 0 attachment_process  �� 0 trashfolder  �� 0 stripheader stripHeader�� 0 base64_check base64_Check�� 0 base64_decode base64_Decode�� 0 htmlfix htmlFix�� 0 growl_check Growl_Check�� 00 osxnotifications_check osxNotifications_Check�� ,0 process_notification process_Notification�� 00 processed_notification processed_Notification�� 0 terminal_notification  �� 0 notification  
�� .aevtoappnull  �   � ****� ���  @ A c t i o n   P e n d i n g� 
� boovtrue� ���  T e s t� ����� �  �� �� �������� ����� N���
�� 
mact� ���  A g e n c e   B B P
�� 
mbxp� ��� 
 I N B O X
�� 
mssg��"
�� kfrmID  �  � ������  ��  � ���` < h t m l > < h e a d > < m e t a   h t t p - e q u i v = 3 D " C o n t e n t - T y p e "   c o n t e n t = 3 D " t e x t / h t m l   =  c h a r s e t = 3 D i s o - 8 8 5 9 - 1 " > < / h e a d > < b o d y   s t y l e = 3 D " w o r d - w r a p :   b r e a k - w o r d ;   =  - w e b k i t - n b s p - m o d e :   s p a c e ;   - w e b k i t - l i n e - b r e a k :   a f t e r - w h i t e - s p a c e ;   =  " > T e s t < b r > < d i v   a p p l e - c o n t e n t - e d i t e d = 3 D " t r u e " >  < b r >  < b r >  < b r >  < t a b l e   w i d t h = 3 D " 6 0 0 p x " >  	 < t b o d y > < t r >  	 	 < t d   w i d t h = 3 D " 6 0 0 p x "   h e i g h t = 3 D " 2 5 p x "   c o l s p a n = 3 D " 2 " >  	 	 	 < a   h r e f = 3 D " h t t p : / / w w w . b b p b o x . c o m " > < i m g   =  s r c = 3 D " h t t p : / / w w w . b b p b o x . c o m / M A I L S / l o g o _ 2 . g i f "   b o r d e r = 3 D " 0 " > < / a >  	 	 < / t d >  	 < / t r >  	 < t r >  	 	 < t d   w i d t h = 3 D " 2 0 0 p x "   h e i g h t = 3 D " 8 0 p x " >  	 	 	 < s p a n   s t y l e = 3 D " f o n t - f a m i l y : a r i a l ;   c o l o r : # 5 0 5 0 5 0 ;   =  f o n t - s i z e : 1 5 p x ; " > < s t r o n g > S = E 9 b a s t i e n   C O U T U R E < / s t r o n g > < / s p a n > < b r >  	 	 	 < s p a n   s t y l e = 3 D " f o n t - f a m i l y : a r i a l ;   c o l o r : # F F A 8 0 0 ;   =  f o n t - s i z e : 1 2 p x ; " > U X   D e s i g n e r < / s p a n > < b r > < b r >  	 	 < / t d >  	 	 < t d   w i d t h = 3 D " 4 0 0 p x "   h e i g h t = 3 D " 8 0 p x " >  	 	 	 < s p a n   s t y l e = 3 D " f o n t - f a m i l y : a r i a l ;   c o l o r : # B 4 B 4 B 4 ;   =  f o n t - s i z e : 1 2 p x ; " > 1 9   r u e   d u   C u r o i r   5 9 1 0 0   R O U B A I X < / s p a n > < b r >  	 	 	 < s p a n   s t y l e = 3 D " f o n t - f a m i l y : a r i a l ;   c o l o r : # B 4 B 4 B 4 ;   =  f o n t - s i z e : 1 2 p x ; " > T = E 9 l .   :   0 0   3 3   ( < s p a n   =  s t y l e = 3 D " c o l o r : # F F A 8 0 0 ; " > 0 < / s p a n > < s p a n   =  s t y l e = 3 D " c o l o r : # B 4 B 4 B 4 ; " > ) < / s p a n > < s p a n   s t y l e = 3 D " c o l o r : # F F A 8 0 0 ; " > 3   2 0   7 0   =  3 5   6 7 < / s p a n > < b r >  	 	 	 < s p a n   s t y l e = 3 D " f o n t - f a m i l y : a r i a l ;   c o l o r : # B 4 B 4 B 4 ;   =  f o n t - s i z e : 1 2 p x ; " > F a x   :   0 0   3 3   ( < s p a n   s t y l e = 3 D " c o l o r : # F F A 8 0 0 ; " > 0 < / s p a n > < s p a n =    s t y l e = 3 D " c o l o r : # B 4 B 4 B 4 ; " > ) < / s p a n > < s p a n   s t y l e = 3 D " c o l o r : # F F A 8 0 0 ; " > 3   2 0   6 5   =  6 7   6 6 < / s p a n > < b r >  	 	 	 < s p a n   s t y l e = 3 D " f o n t - f a m i l y : a r i a l ;   c o l o r : # B 4 B 4 B 4 ;   =  f o n t - s i z e : 1 2 p x ; " > < a   =  h r e f = 3 D " h t t p : / / w w w . b b p b o x . c o m " > w w w . b b p b o x . c o m < / a > < / s p a n > < b r >  	 	 < / s p a n > < / s p a n > < / t d >  	 < / t r >  	 < t r > = 0 9  	 	 < t d   c o l s p a n = 3 D " 2 " >  	 	 	 < t a b l e   w i d t h = 3 D " 6 0 0 p x " >  	 	 	 	 < t b o d y > < t r >  	 	 	 	 	 < t d   w i d t h = 3 D " 1 0 p x "   =  h e i g h t = 3 D " 2 0 p x " > < i m g   =  s r c = 3 D " h t t p : / / w w w . b b p b o x . c o m / M A I L S / f e u i l l e _ 2 . g i f " > < / t d >  	 	 	 	 	 < t d   w i d t h = 3 D " 5 9 0 p x "   =  h e i g h t = 3 D " 2 0 p x " > < s p a n   s t y l e = 3 D " f o n t - f a m i l y : a r i a l ;   c o l o r : # B 4 B 4 B 4 ;   =  f o n t - s i z e : 1 0 p x ; " > P o u r   l a   p l a n = E 8 t e ,   n ' i m p r i m e z   c e   m a i l   q u e   s i   c ' e s t   =  n = E 9 c e s s a i r e < / s p a n > < b r > < / t d >  	 	 	 	 < / t r >  	 	 	 < / t b o d y > < / t a b l e >  	 	 < / t d >  	 < / t r >  < / t b o d y > < / t a b l e >  < / d i v >  < b r > < / b o d y >� ����� �  �������������������������������� �  � < b o d y   s t y l e = " w o r d - w r a p :   b r e a k - w o r d ;   - w e b k i t - n b s p - m o d e :   s p a c e ;   - w e b k i t - l i n e - b r e a k :   a f t e r - w h i t e - s p a c e ;   " > T e s t < b r > < d i v   a p p l e - c o n t e n t - e d i t e d = " t r u e " >  < b r >  < b r >  < b r >  < t a b l e   w i d t h = " 6 0 0 p x " >  	 < t b o d y > < t r >  	 	 < t d   w i d t h = " 6 0 0 p x "   h e i g h t = " 2 5 p x "   c o l s p a n = " 2 " >  	 	 	 < a   h r e f = " h t t p : / / w w w . b b p b o x . c o m " > < i m g   s r c = " h t t p : / / w w w . b b p b o x . c o m / M A I L S / l o g o _ 2 . g i f "   b o r d e r = " 0 " > < / a >  	 	 < / t d >  	 < / t r >  	 < t r >  	 	 < t d   w i d t h = " 2 0 0 p x "   h e i g h t = " 8 0 p x " >  	 	 	 < s p a n   s t y l e = " f o n t - f a m i l y : a r i a l ;   c o l o r : # 5 0 5 0 5 0 ;   f o n t - s i z e : 1 5 p x ; " > < s t r o n g > S � b a s t i e n   C O U T U R E < / s t r o n g > < / s p a n > < b r >  	 	 	 < s p a n   s t y l e = " f o n t - f a m i l y : a r i a l ;   c o l o r : # F F A 8 0 0 ;   f o n t - s i z e : 1 2 p x ; " > U X   D e s i g n e r < / s p a n > < b r > < b r >  	 	 < / t d >  	 	 < t d   w i d t h = " 4 0 0 p x "   h e i g h t = " 8 0 p x " >  	 	 	 < s p a n   s t y l e = " f o n t - f a m i l y : a r i a l ;   c o l o r : # B 4 B 4 B 4 ;   f o n t - s i z e : 1 2 p x ; " > 1 9   r u e   d u   C u r o i r   5 9 1 0 0   R O U B A I X < / s p a n > < b r >  	 	 	 < s p a n   s t y l e = " f o n t - f a m i l y : a r i a l ;   c o l o r : # B 4 B 4 B 4 ;   f o n t - s i z e : 1 2 p x ; " > T � l .   :   0 0   3 3   ( < s p a n   s t y l e = " c o l o r : # F F A 8 0 0 ; " > 0 < / s p a n > < s p a n   s t y l e = " c o l o r : # B 4 B 4 B 4 ; " > ) < / s p a n > < s p a n   s t y l e = " c o l o r : # F F A 8 0 0 ; " > 3   2 0   7 0   3 5   6 7 < / s p a n > < b r >  	 	 	 < s p a n   s t y l e = " f o n t - f a m i l y : a r i a l ;   c o l o r : # B 4 B 4 B 4 ;   f o n t - s i z e : 1 2 p x ; " > F a x   :   0 0   3 3   ( < s p a n   s t y l e = " c o l o r : # F F A 8 0 0 ; " > 0 < / s p a n > < s p a n   s t y l e = " c o l o r : # B 4 B 4 B 4 ; " > ) < / s p a n > < s p a n   s t y l e = " c o l o r : # F F A 8 0 0 ; " > 3   2 0   6 5   6 7   6 6 < / s p a n > < b r >  	 	 	 < s p a n   s t y l e = " f o n t - f a m i l y : a r i a l ;   c o l o r : # B 4 B 4 B 4 ;   f o n t - s i z e : 1 2 p x ; " > < a   h r e f = " h t t p : / / w w w . b b p b o x . c o m " > w w w . b b p b o x . c o m < / a > < / s p a n > < b r >  	 	 < / s p a n > < / s p a n > < / t d >  	 < / t r >  	 < t r >  	 	 < t d   c o l s p a n = " 2 " >  	 	 	 < t a b l e   w i d t h = " 6 0 0 p x " >  	 	 	 	 < t b o d y > < t r >  	 	 	 	 	 < t d   w i d t h = " 1 0 p x "   h e i g h t = " 2 0 p x " > < i m g   s r c = " h t t p : / / w w w . b b p b o x . c o m / M A I L S / f e u i l l e _ 2 . g i f " > < / t d >  	 	 	 	 	 < t d   w i d t h = " 5 9 0 p x "   h e i g h t = " 2 0 p x " > < s p a n   s t y l e = " f o n t - f a m i l y : a r i a l ;   c o l o r : # B 4 B 4 B 4 ;   f o n t - s i z e : 1 0 p x ; " > P o u r   l a   p l a n � t e ,   n ' i m p r i m e z   c e   m a i l   q u e   s i   c ' e s t   n � c e s s a i r e < / s p a n > < b r > < / t d >  	 	 	 	 < / t r >  	 	 	 < / t b o d y > < / t a b l e >  	 	 < / t d >  	 < / t r >  < / t b o d y > < / t a b l e >  < / d i v >  < b r > < / b o d y >��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  � �& R e t u r n - P a t h :   < s e b a s t i e n @ b i g b a n d p r o j e k t . c o m > 
 D e l i v e r e d - T o :   s e b a s t i e n @ b i g b a n d p r o j e k t . c o m 
 R e c e i v e d :   f r o m   b 0 . o v h . n e t   ( H E L O   q u e u e )   ( 2 1 3 . 1 8 6 . 3 3 . 5 0 ) 
 	 b y   b 0 . o v h . n e t   w i t h   S M T P ;   1 8   F e b   2 0 1 3   1 0 : 5 2 : 3 4   + 0 2 0 0 
 R e c e i v e d :   f r o m   l o c a l h o s t   ( H E L O   m a i l 6 3 4 . h a . o v h . n e t )   ( 1 2 7 . 0 . 0 . 1 ) 
     b y   l o c a l h o s t   w i t h   S M T P ;   1 8   F e b   2 0 1 3   1 0 : 5 2 : 3 4   + 0 2 0 0 
 R e c e i v e d :   f r o m   b 0 . o v h . n e t   ( H E L O   q u e u e o u t )   ( 2 1 3 . 1 8 6 . 3 3 . 5 0 ) 
 	 b y   b 0 . o v h . n e t   w i t h   S M T P ;   1 8   F e b   2 0 1 3   1 0 : 5 2 : 3 4   + 0 2 0 0 
 R e c e i v e d :   f r o m   3 . 1 0 1 . 1 2 . 1 0 9 . r e v . s f r . n e t   ( H E L O   ? 1 9 2 . 1 6 8 . 1 . 4 7 ? )   ( s e b a s t i e n @ b i g b a n d p r o j e k t . c o m @ 1 0 9 . 1 2 . 1 0 1 . 3 ) 
     b y   n s 0 . o v h . n e t   w i t h   S M T P ;   1 8   F e b   2 0 1 3   1 0 : 5 2 : 3 2   + 0 2 0 0 
 F r o m :   S e b a s t i e n   C o u t u r e   < s e b a s t i e n @ b i g b a n d p r o j e k t . c o m > 
 C o n t e n t - T y p e :   m u l t i p a r t / a l t e r n a t i v e ;   b o u n d a r y = " A p p l e - M a i l = _ 8 9 2 C 4 8 4 D - 6 C C E - 4 8 0 8 - 9 B A 6 - 7 3 A 4 E E 1 8 4 7 2 E " 
 S u b j e c t :   T e s t 
 M e s s a g e - I d :   < D 6 3 4 5 E B 1 - 5 1 3 8 - 4 F 3 5 - 8 D E 3 - 6 B 7 B E 5 A 2 8 8 5 8 @ b i g b a n d p r o j e k t . c o m > 
 D a t e :   M o n ,   1 8   F e b   2 0 1 3   0 9 : 5 3 : 2 7   + 0 1 0 0 
 T o :   s e b a s t i e n @ b i g b a n d p r o j e k t . c o m 
 M i m e - V e r s i o n :   1 . 0   ( M a c   O S   X   M a i l   6 . 2   \ ( 1 4 9 9 \ ) ) 
 X - M a i l e r :   A p p l e   M a i l   ( 2 . 1 4 9 9 ) 
 X - O v h - T r a c e r - I d :   1 6 9 9 2 0 8 1 3 9 6 0 0 8 8 3 3 3 6 3 
 X - O v h - R e m o t e :   1 0 9 . 1 2 . 1 0 1 . 3   ( 3 . 1 0 1 . 1 2 . 1 0 9 . r e v . s f r . n e t ) 
 X - O v h - L o c a l :   2 1 3 . 1 8 6 . 3 3 . 2 0   ( n s 0 . o v h . n e t ) 
 X - O V H - S P A M S T A T E :   O K 
 X - O V H - S P A M S C O R E :   1 5 
 X - O V H - S P A M C A U S E :   g g g r u g g v u c f t v g h t r h h o u c d t u d d r f e e i t d d r f e d u u c e t u f d o t e g g o d e t r f c u r f h r o h h f i h h l v g e m u c f q g g f j n e c u u e g r i h h l o h h u t h e m u c e f t d d t n e c u o g e t f e d t u d d q t d d u u c d l u d e h m d 
 X - S p a m - C h e c k :   D O N E | U   0 . 5 / N 
 
 
 - - A p p l e - M a i l = _ 8 9 2 C 4 8 4 D - 6 C C E - 4 8 0 8 - 9 B A 6 - 7 3 A 4 E E 1 8 4 7 2 E 
 C o n t e n t - T r a n s f e r - E n c o d i n g :   q u o t e d - p r i n t a b l e 
 C o n t e n t - T y p e :   t e x t / p l a i n ; 
 	 c h a r s e t = i s o - 8 8 5 9 - 1 
 
 T e s t 
 
 
 
 
 S = E 9 b a s t i e n   C O U T U R E 
 U X   D e s i g n e r 
 
 1 9   r u e   d u   C u r o i r   5 9 1 0 0   R O U B A I X 
 T = E 9 l .   :   0 0   3 3   ( 0 ) 3   2 0   7 0   3 5   6 7 
 F a x   :   0 0   3 3   ( 0 ) 3   2 0   6 5   6 7   6 6 
 w w w . b b p b o x . c o m 
 	 P o u r   l a   p l a n = E 8 t e ,   n ' i m p r i m e z   c e   m a i l   q u e   s i   c ' e s t   n = E 9 c e s s a i r e 
 
 
 - - A p p l e - M a i l = _ 8 9 2 C 4 8 4 D - 6 C C E - 4 8 0 8 - 9 B A 6 - 7 3 A 4 E E 1 8 4 7 2 E 
 C o n t e n t - T r a n s f e r - E n c o d i n g :   q u o t e d - p r i n t a b l e 
 C o n t e n t - T y p e :   t e x t / h t m l ; 
 	 c h a r s e t = i s o - 8 8 5 9 - 1 
 
 < h t m l > < h e a d > < m e t a   h t t p - e q u i v = 3 D " C o n t e n t - T y p e "   c o n t e n t = 3 D " t e x t / h t m l   = 
 c h a r s e t = 3 D i s o - 8 8 5 9 - 1 " > < / h e a d > < b o d y   s t y l e = 3 D " w o r d - w r a p :   b r e a k - w o r d ;   = 
 - w e b k i t - n b s p - m o d e :   s p a c e ;   - w e b k i t - l i n e - b r e a k :   a f t e r - w h i t e - s p a c e ;   = 
 " > T e s t < b r > < d i v   a p p l e - c o n t e n t - e d i t e d = 3 D " t r u e " > 
 < b r > 
 < b r > 
 < b r > 
 < t a b l e   w i d t h = 3 D " 6 0 0 p x " > 
 	 < t b o d y > < t r > 
 	 	 < t d   w i d t h = 3 D " 6 0 0 p x "   h e i g h t = 3 D " 2 5 p x "   c o l s p a n = 3 D " 2 " > 
 	 	 	 < a   h r e f = 3 D " h t t p : / / w w w . b b p b o x . c o m " > < i m g   = 
 s r c = 3 D " h t t p : / / w w w . b b p b o x . c o m / M A I L S / l o g o _ 2 . g i f "   b o r d e r = 3 D " 0 " > < / a > 
 	 	 < / t d > 
 	 < / t r > 
 	 < t r > 
 	 	 < t d   w i d t h = 3 D " 2 0 0 p x "   h e i g h t = 3 D " 8 0 p x " > 
 	 	 	 < s p a n   s t y l e = 3 D " f o n t - f a m i l y : a r i a l ;   c o l o r : # 5 0 5 0 5 0 ;   = 
 f o n t - s i z e : 1 5 p x ; " > < s t r o n g > S = E 9 b a s t i e n   C O U T U R E < / s t r o n g > < / s p a n > < b r > 
 	 	 	 < s p a n   s t y l e = 3 D " f o n t - f a m i l y : a r i a l ;   c o l o r : # F F A 8 0 0 ;   = 
 f o n t - s i z e : 1 2 p x ; " > U X   D e s i g n e r < / s p a n > < b r > < b r > 
 	 	 < / t d > 
 	 	 < t d   w i d t h = 3 D " 4 0 0 p x "   h e i g h t = 3 D " 8 0 p x " > 
 	 	 	 < s p a n   s t y l e = 3 D " f o n t - f a m i l y : a r i a l ;   c o l o r : # B 4 B 4 B 4 ;   = 
 f o n t - s i z e : 1 2 p x ; " > 1 9   r u e   d u   C u r o i r   5 9 1 0 0   R O U B A I X < / s p a n > < b r > 
 	 	 	 < s p a n   s t y l e = 3 D " f o n t - f a m i l y : a r i a l ;   c o l o r : # B 4 B 4 B 4 ;   = 
 f o n t - s i z e : 1 2 p x ; " > T = E 9 l .   :   0 0   3 3   ( < s p a n   = 
 s t y l e = 3 D " c o l o r : # F F A 8 0 0 ; " > 0 < / s p a n > < s p a n   = 
 s t y l e = 3 D " c o l o r : # B 4 B 4 B 4 ; " > ) < / s p a n > < s p a n   s t y l e = 3 D " c o l o r : # F F A 8 0 0 ; " > 3   2 0   7 0   = 
 3 5   6 7 < / s p a n > < b r > 
 	 	 	 < s p a n   s t y l e = 3 D " f o n t - f a m i l y : a r i a l ;   c o l o r : # B 4 B 4 B 4 ;   = 
 f o n t - s i z e : 1 2 p x ; " > F a x   :   0 0   3 3   ( < s p a n   s t y l e = 3 D " c o l o r : # F F A 8 0 0 ; " > 0 < / s p a n > < s p a n = 
   s t y l e = 3 D " c o l o r : # B 4 B 4 B 4 ; " > ) < / s p a n > < s p a n   s t y l e = 3 D " c o l o r : # F F A 8 0 0 ; " > 3   2 0   6 5   = 
 6 7   6 6 < / s p a n > < b r > 
 	 	 	 < s p a n   s t y l e = 3 D " f o n t - f a m i l y : a r i a l ;   c o l o r : # B 4 B 4 B 4 ;   = 
 f o n t - s i z e : 1 2 p x ; " > < a   = 
 h r e f = 3 D " h t t p : / / w w w . b b p b o x . c o m " > w w w . b b p b o x . c o m < / a > < / s p a n > < b r > 
 	 	 < / s p a n > < / s p a n > < / t d > 
 	 < / t r > 
 	 < t r > = 0 9 
 	 	 < t d   c o l s p a n = 3 D " 2 " > 
 	 	 	 < t a b l e   w i d t h = 3 D " 6 0 0 p x " > 
 	 	 	 	 < t b o d y > < t r > 
 	 	 	 	 	 < t d   w i d t h = 3 D " 1 0 p x "   = 
 h e i g h t = 3 D " 2 0 p x " > < i m g   = 
 s r c = 3 D " h t t p : / / w w w . b b p b o x . c o m / M A I L S / f e u i l l e _ 2 . g i f " > < / t d > 
 	 	 	 	 	 < t d   w i d t h = 3 D " 5 9 0 p x "   = 
 h e i g h t = 3 D " 2 0 p x " > < s p a n   s t y l e = 3 D " f o n t - f a m i l y : a r i a l ;   c o l o r : # B 4 B 4 B 4 ;   = 
 f o n t - s i z e : 1 0 p x ; " > P o u r   l a   p l a n = E 8 t e ,   n ' i m p r i m e z   c e   m a i l   q u e   s i   c ' e s t   = 
 n = E 9 c e s s a i r e < / s p a n > < b r > < / t d > 
 	 	 	 	 < / t r > 
 	 	 	 < / t b o d y > < / t a b l e > 
 	 	 < / t d > 
 	 < / t r > 
 < / t b o d y > < / t a b l e > 
 < / d i v > 
 < b r > < / b o d y > < / h t m l > = 
 
 - - A p p l e - M a i l = _ 8 9 2 C 4 8 4 D - 6 C C E - 4 8 0 8 - 9 B A 6 - 7 3 A 4 E E 1 8 4 7 2 E - - 

� boovtrue� � * m u l t i p a r t / a l t e r n a t i v e� ������  ��  � � ��*�������� 0 appisrunning appIsRunning�� ����   ���� 0 appname appName��   ���� 0 appname appName 4����
�� 
prcs
�� 
pnam�� � 	*�-�,�U� ��?�������� 0 
item_check 
item_Check��  ��   ���� 0 mypath myPath ����N������
�� afdrcusr
�� .earsffdralis        afdr
�� 
slct��  ��  �� #�j E�O�  *�,Ec  
W X  hU� ��Y����	���� 0 
item_count 
item_Count�� ��
�� 
  ���� 0 themessages theMessages��   ������ 0 themessages theMessages�� 0 
themessage 
theMessage	 s�������
�� .corecnte****       ****
�� 
kocl
�� 
cobj
� 
attc�� B� >�j Ec  OjEc  O '�[��l kh b  ��,j Ec  [OY��U� ������  0 tagging_dialog tagging_Dialog�  �   ������ 0 dialogresult  � 0 	userinput 	userInput� 0 	buttonsel 	ButtonSel� 0 	thedelims 	theDelims� 0 thetags theTags  ������������������~�}�|�{�z�y�x��w�v�u�t�s
� 
appr
� 
dtxt
� 
btns
� 
dflt
� 
cbtn
� 
disp
� 
in B
�~ .earsffdralis        afdr
�} .sysorpthalis        TEXT�| 
�{ .sysodlogaskr        TEXT
�z 
rslt
�y 
ttxt
�x 
bhit�w   �r�q�p
�r 
errn�q���p  �v���u 0 tag_list Tag_List�t 0 	tag_check 	Tag_Check�s 0 notebook_list Notebook_List� � L��%���b  ����mv�������a j l a  O_ E�O�a ,E�O�a ,E�Oa kvE�W X  a Ec  O)��l+ E�OjvEc  O)�k+ Ec  O�a   )j+ Ec  Y h� �o�n�m�l�o $0 default_notebook default_Notebook�n  �m   �k�k *0 get_defaultnotebook get_defaultNotebook 8�j�i,�h�g�f
�j 
EVnb  
�i 
EVnd
�h 
cobj
�g 
pnam
�f 
ctxt�l 1� -*�-�[�,\Ze81E�Ob  �  ��k/�,�&Ec  Y hU� �eC�d�c�b�e 0 tag_list Tag_List�d �a�a   �`�_�` 0 	userinput 	userInput�_ 0 	thedelims 	theDelims�c   �^�]�\�[�Z�Y�X�^ 0 	userinput 	userInput�] 0 	thedelims 	theDelims�\ 0 	olddelims 	oldDelims�[ 0 thelist theList�Z 0 adelim aDelim�Y 0 newlist newList�X 0 anitem anItem �W�V�U�T�S�R
�W 
ascr
�V 
txdl
�U 
kocl
�T 
cobj
�S .corecnte****       ****
�R 
citm�b V��,E�O�kvE�O ?�[��l kh ���,FOjvE�O �[��l kh ���-%E�[OY��O�E�[OY��O���,FO�� �Q��P�O�N�Q 0 	tag_check 	Tag_Check�P �M�M   �L�L 0 thetags theTags�O   �K�J�I�H�K 0 thetags theTags�J 0 	finaltags 	finalTags�I 0 thetag theTag�H 0 maketag makeTag ��G�F�E�D�C�B�A�@�?�>�=
�G 
kocl
�F 
cobj
�E .corecnte****       ****
�D 
EVtg
�C kfrmname
�B .coredoexnull���     ****
�A 
prdt
�@ 
pnam
�? .corecrel****      � null�>  �=  �N W� PjvE�O H�[��l kh *��0j  " ���ll 	E�O��6FW X 
 hY 	*�/�6F[OY��UO�� �<��;�:�9�< 0 notebook_list Notebook_List�;  �:   �8�7�6�5�4�3�2�8 "0 listofnotebooks listOfNotebooks�7 0 evnotebooks EVNotebooks�6 "0 currentnotebook currentNotebook�5 *0 currentnotebookname currentNotebookName�4  0 folders_sorted Folders_sorted�3 0 selnotebook SelNotebook�2 0 	userinput 	userInput 0�1�0�/�.�-�,�+�*��)�(�'
�&�%"�$%�#�"
�1 .miscactvnull��� ��� null
�0 
EVnb
�/ 
kocl
�. 
cobj
�- .corecnte****       ****
�, 
pnam�+ 0 simple_sort  
�* 
appr
�) 
prmp
�( 
okbt
�' 
cnbt�& 
�% .gtqpchltns    @   @ ns  
�$ 
dtxt
�# .sysodlogaskr        TEXT
�" 
ttxt�9 �� |*j OjvE�O*�-E�O �[��l kh ��,E�O��6G[OY��O)�k+ E�O���������a  E�O�f   a a a l a ,E�O�Ec  Y ��k/Ec  U� �!B� ���!  0 extractbetween extractBetween�  ��   ���� 0 
searchtext 
SearchText� 0 	starttext 	startText� 0 endtext endText�   ������� 0 
searchtext 
SearchText� 0 	starttext 	startText� 0 endtext endText� 0 tid  � 0 enditems endItems�  0 beginningtoend beginningToEnd ����
� 
ascr
� 
txdl
� 
citm
� 
ctxt� -��,E�O���,FO��i/�-E�O���,FO��k/�-E�O���,FO�� ������ 0 simple_sort  � ��   �
�
 0 my_list  �   �	�������	 0 my_list  � 0 
index_list  � 0 sorted_list  � 0 low_item  � 0 i  � 0 	this_item  � 0 low_item_index   ���� �
� 
cobj
� 
nmbr
�  
ctxt� vjvE�OjvE�O g��-�,Ekh�E�O Hk��-�,Ekh �� /��/�&E�O��  �E�O�E�Y �� �E�O�E�Y hY h[OY��O��6FO��6F[OY��O�� ������� ���� 0 mail_process mail_Process�� ��!�� !  ���� 0 themessages theMessages��   ������������������������������������������������ 0 themessages theMessages�� 0 thismessage thisMessage�� 0 	mycontent 	myContent�� 0 	replyaddr 	ReplyAddr�� 0 	emaildate 	EmailDate�� 0 allrecipients allRecipients�� 0 torecipients toRecipients�� 0 allrecipient allRecipient�� 0 toname toName�� 0 toemail toEmail�� 0 
tocombined 
toCombined�� 0 therecipient theRecipient�� 0 ex  �� 0 msglink MsgLink�� 0 theboundary theBoundary�� "0 themessagestart theMessagestart�� 0 themessageend theMessageEnd�� 0 
parasource 
paraSource�� 0 myheaderlines myHeaderlines�� 0 myheaderline myHeaderline�� 0 	cutsource 	cutSource�� 0 evhtml evHTML�� 0 the_template the_Template  7�����������������������a�������������������������������������6AD��rtvxz|�������� $0 default_notebook default_Notebook��  0 tagging_dialog tagging_Dialog
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
subj
�� 
ctnt
�� 
raso
�� 
rpto
�� 
rdrc
�� 
trcp
�� 
pnam
�� 
radd
�� 
spac
�� 
TEXT
�� 
meid��  0 extractbetween extractBetween��  ��  
�� 
ret 
�� 
cpar
�� 
alhe
�� 
ctxt�� 0 stripheader stripHeader�� �� 0 make_evernote make_Evernote�� &0 mail_post_process mail_post_Process��)j+  O�b   �  
)j+ Y hO��[��l kh o��,Ec  	O��,E�O��,Ec  O��,E�O��,E�O��k/�-E�O�E�O ;�[��l kh ��,E�O��,E�O�_ %a %�%a %E�O��%a &E�[OY��Oa E�Oa E�Oa E�O >a E�O��k/�,E�Oa �a ,%a %E�O�a  )�a a m+ E�Y hW X   hO)b  a !a "m+ E�O_ #a $%�%E�Oa %�%_ #%a &%E^ Ob  a '-E^ O�a (,a )&a '-E^ O 8] [��l kh ] a * )] a +a ,m+ Ec  Y h[OY��O)] ] l+ -E^ O] E^ W X   hOa .�%a /%�%a 0%b  	%a 1%�%a 2%�%a 3%E^ O)b  	b  ���b  ��] b  �] b  ] a 4+ 5O)�k+ 6OP[OY�!W X   hU� �������"#���� &0 mail_post_process mail_post_Process�� ��$�� $  ���� 0 themessages theMessages��  " ���������� 0 themessages theMessages�� 0 m  � 0 mb  � 0 acc  � 0 archive_mailbox  � 0 archive  # @���������������(*,���<
� 
kocl
� 
cobj
� .corecnte****       ****
� 
long
� 
fidx
� 
mbxp
� 
mact
� .misccurdldt    ��� null
� 
year
� 
TEXT
� .ascrcmnt****      � ****�  �  
� .sysodisAaleR        TEXT
� 
insh
� .coremovenull���     obj �� �� � ��[��l kh b  �  b  �&��,FY hOb  �  w��,E�O��,E�O*j 
�,�&�%b  %E�O�j O�j O ��/E�W X  a �%a %�%a %j OhO �a �l W X  a j OhY hOP[OY�^U� �O��%&�� 0 make_evernote make_Evernote� �'� '  ��������������� 0 mytitle myTitle� 0 evtag EVTag� 0 	emaildate 	EmailDate� 0 msglink MsgLink� 0 	mycontent 	myContent� 0 mysource mySource� 0 theboundary theBoundary� "0 themessagestart theMessagestart� 0 themessageend theMessageEnd� 0 	myheaders 	myHeaders� 0 thismessage thisMessage� 0 evhtml evHTML� 0 
evnotebook 
EVnotebook� 0 the_template the_Template�  % ������������������ 0 mytitle myTitle� 0 evtag EVTag� 0 	emaildate 	EmailDate� 0 msglink MsgLink� 0 	mycontent 	myContent� 0 mysource mySource� 0 theboundary theBoundary� "0 themessagestart theMessagestart� 0 themessageend theMessageEnd� 0 	myheaders 	myHeaders� 0 thismessage thisMessage� 0 evhtml evHTML� 0 
evnotebook 
EVnotebook� 0 the_template the_Template� 0 n  � 0 base64detect base64Detect� 0 basehtml baseHTML& )
������������~�}��|��{��%�z*�y�x�w���v	�

�u
��t�s�r�q
��p
� 
Enhl
� 
Entt
� 
Ennb� 
� .EVRNcrntnull��� ��� null
� 
EV13
� .EVRNassnnull���     ****
� 
EV18
� .EVRNadtnnull���     EVnn
�~ 
EVdd
�} 
EVsu�| 0 base64_check base64_Check�{  0 extractbetween extractBetween
�z 
strq
�y .sysoexecTEXT���     TEXT
�x 
EV19�w 0 htmlfix htmlFix�v 0 base64_decode base64_Decode
�u 
ctxt
�t 
attc�s 0 attachment_process  �r  �q  
�p .ascrcmnt****      � ****������� @*���� E�O�jv ��l Y hO� 	*�l 
UO���,FO���,FOPYG��])�k+ E�O�e  �)��m+ Ec  Ob  a  )b  a �m+ Ec  Y hOb  a  )b  a �m+ Ec  Y hOa b  a ,%a %j E^ O*���� E�O�jv ��l Y hO� *a ] l 
UO���,FO���,FY �)���m+ Ec  Ob  e  D*���� E�O�jv ��l Y hO� *a b  l 
UO���,FO���,FY ;*���� E�O�jv ��l Y hO� 	*�l 
UO���,FO���,FOPY�a U�a )�k+ E�O�e  O)�k+ E^ O*���� E�O�jv ��l Y hO� *a ] l 
UO���,FO���,FOPY ��f  �)���m+ Ec  Ob  e  D*���� E�O�jv ��l Y hO� *a b  l 
UO���,FO���,FY ;*���� E�O�jv ��l Y hO� 	*�l 
UO���,FO���,FY hOPY I�a  @*���� E�O�jv ��l Y hO� 	*�l 
UO���,FO���,FOPY hOPY �)�k+ E�O�e  )�k+ Ec  Y +)�a a  m+ Ec  O)b  ��m+ a !&Ec  O*���� E�O�jv ��l Y hO� *a b  l 
UO���,FO���,FOPOa " �a #-jv )��l+ $Y hUOb  kEc  W X % &hUOa 'b  %j (� �o
��n�m()�l�o 0 f_exists  �n �k*�k *  �j�j 0 exportfolder ExportFolder�m  ( �i�h�g�i 0 exportfolder ExportFolder�h 0 mypath myPath�g 0 saveloc SaveLoc) �f�e�d�c�b
��a�`�_�^
��]�\
�f afdrcusr
�e .earsffdralis        afdr
�d 
alis�c  �b  
�a 
kocl
�` 
cfol
�_ 
prdt
�^ 
pnam�] 
�\ .corecrel****      � null�l , �j E�O��&O�E�W X  � *�����l� U� �[
��Z�Y+,�X�[ 0 attachment_process  �Z �W-�W -  �V�U�V 0 thismessage thisMessage�U 0 n  �Y  + 
�T�S�R�Q�P�O�N�M�L�K�T 0 thismessage thisMessage�S 0 n  �R 0 exportfolder ExportFolder�Q 0 saveloc SaveLoc�P  0 theattachments theAttachments�O 0 attcount attCount�N 0 theattachment theAttachment�M 0 thefilename theFileName�L 0 trash_folder trash_Folder�K 0 success  , h
��J�I�H�G
��F�E�D�C�B�A�@�?�>�=�<�;5�:�9�8�7�6M�5�4�3�2�1
�J 
ascr
�I 
txdl
�H afdmdesk
�G .earsffdralis        afdr
�F 
TEXT�E 0 f_exists  
�D 
attc
�C 
kocl
�B 
cobj
�A .corecnte****       ****
�@ 
pnam
�? 
kfil
�> 
file
�= .coresavenull���     obj �<  �;  
�: 
EV21
�9 .EVRNadtnnull���     EVnn
�8 afdmtrsh
�7 
from
�6 fldmfldu
�5 
psxp
�4 
strq
�3 
spac
�2 .sysoexecTEXT���     TEXT�1 0 trashfolder  �X �� ����,FO�j �%�&E�O)�k+ E�O��-E�OjE�O }�[��l kh ���,%E�O ��*�/l W X  hOa  � *a *�/l UUOa a a l E�Oa �a ,a ,%_ %�a ,a ,%j OP[OY��O)�k+ E�OPU� �0s�/�../�-�0 0 trashfolder  �/ �,0�, 0  �+�+ 0 saveloc SaveLoc�.  . �*�)�(�'�&�%�$�#�* 0 saveloc SaveLoc�) 0 trashfolderpath  �( 0 srcfolderinfo  �' 0 srcfoldername  �& 0 counter  �% 0 destfolderpath  �$ 0 destfolderalias  �# 0 command  / �"�!� ��������������
�" afdrtrsh
�! .earsffdralis        afdr
�  
utxt
� 
alis
� .sysonfo4asfe        file
� 
pnam
� 
psxp
� 
strq�  �  
� 
spac
� .sysoexecTEXT���     TEXT�- � ��j �&E�O��&j E�O��,E�O��,�,E�OjE�O <hZ�j  ��%�%E�Y ��%�%�%�%E�O 
��&E�W X  O�kE�[OY��O��,�,E�O��%�%�%E�O�j Oa �%E�O�j OeW 	X  f� ���12�� 0 stripheader stripHeader� �3� 3  ��� 0 
parasource 
paraSource� 0 myheaderlines myHeaderlines�  1 ������
�	�� 0 
parasource 
paraSource� 0 myheaderlines myHeaderlines� 0 lastheaderline  � 0 n  � 0 sourcelength  �
  0 cutsourceitems cutSourceItems�	 0 	olddelims 	oldDelims� 0 	cutsource 	cutSource2 	�4�P����
� .corecnte****       ****
� 
cobj
� 
ascr
� 
txdl
� 
ret 
� 
ctxt� y�E�O�j E�O h�� ��/E�O�kE�[OY��O�j E�O k�kh ��/�  Y h[OY��O�[�\[Z�k\Z�2E�O��,E�O���,FO��&E�O���,FO�OP� ��� ��45��� 0 base64_check base64_Check�  ��6�� 6  ���� 0 mysource mySource��  4 ������������������ 0 mysource mySource�� 0 base64detect base64Detect�� 0 base64msgstr base64MsgStr�� &0 base64contenttype base64ContentType�� "0 base64msgoffset base64MsgOffset�� *0 base64contentoffset base64ContentOffset�� 0 base64offset base64Offset�� 0 	theoffset 	theOffset5 
������������������
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null
�� 
doub
�� 
nmbr�� 2������ MfE�O�E�O�E�O*��� E�O*��� E�O���&E�O��&E�O�� �� eE�Y hY hO�� �������78���� 0 base64_decode base64_Decode�� ��9�� 9  ���� 0 mysource mySource��  7 �������� 0 mysource mySource�� 0 olddelim oldDelim�� 0 basehtml baseHTML8 
���������,��1��
�� 
ascr
�� 
txdl
�� 
citm
�� 
lnfd
�� 
strq
�� .sysoexecTEXT���     TEXT�� ^��,E�O���,FO��l/Ec  O��%��,FOb  �l/Ec  O���,FOb  �k/Ec  O���,FO�b  �,%�%j 	E�O�� ��C����:;���� 0 htmlfix htmlFix�� ��<�� <  �������� 0 evhtml evHTML�� 0 theboundary theBoundary�� 0 	mycontent 	myContent��  : ���������������������������� 0 evhtml evHTML�� 0 theboundary theBoundary�� 0 	mycontent 	myContent�� 0 	olddelims 	oldDelims�� 0 
parasource 
paraSource�� 0 myheaderlines myHeaderlines�� 0 
theencoded 
theEncoded�� 0 trimhtml trimHTML�� 0 thehtml theHTML��  0 newencodedtext NewEncodedText�� 0 the_utf8text the_UTF8Text�� "0 thedecodescript theDecodeScript�� 0 
thedecoded 
theDecoded; J����������o���������� 'Q{������������.>L^�n~�������&(8JL\jz���������� "0DFT��
�� 
ascr
�� 
txdl
�� 
TEXT
�� 
cpar
�� 
cobj�� 0 stripheader stripHeader��  0 extractbetween extractBetween
�� 
citm
� 
ctxt� 
� .sysontocTEXT       shor� 

� 
strq
� .sysoexecTEXT���     TEXT�  �  ����,E�O��&Ec  Ob  �-E�O��k/� ��k/E�O)��l+ Ec  Y hOb  � )b  ��m+ 
Ec  Y )b  �m+ 
Ec  Ob  �-E�O��k/� #��k/E�O)��l+ Ec  Ob  �-E�Y hO��k/�  \��l/� #��l/E�O)��l+ Ec  Ob  �-E�Y hO��l/� #��l/E�O)��l+ Ec  Ob  �-E�Y hY hO��k/a  #��k/E�O)��l+ Ec  Ob  �-E�Y hO��k/a  #��k/E�O)��l+ Ec  Ob  �-E�Y hO���,FOb  a -Ec  Oa ��,FOb  a &E�Oa ��,FO�a -Ec  Oa a %�&��,FOb  a &E�Oa ��,FO�a -Ec  Oa ��,FOb  a &E�Oa ��,FO�a -Ec  Oa ��,FOb  a &E�Oa a j %��,FO�a -Ec  Oa ��,FOb  a &E�Oa  ��,FO�a -Ec  Oa !��,FOb  a &E�Oa "a #j %��,FO�a -Ec  Oa $��,FOb  a &E�Oa %��,FO�a -Ec  Oa &��,FOb  a &E�Oa '��,FO�a -Ec  Oa (��,FOb  a &E�Oa )��,FO�a -Ec  Oa *��,FOb  a &E�Oa +��,FO�a -Ec  Oa ,��,FOb  a &E�Oa #j ��,FO�a -Ec  Oa -��,FOb  a &E�Oa .��,FO�a -Ec  Oa /a 0%�&��,FOb  a &E�Oa 1��,FO�a -Ec  Oa 2a 3%�&��,FOb  a &E�Oa 4��,FO�a -Ec  Oa 5��,FOb  a &E�Oa 6��,FO�a -Ec  Oa 7��,FOb  a &E�O���,FO)�a 8a 9m+ 
E�O�E�O �fEc  Oa :�a ;,%a <%j =E�O�a ;,E�Oa >�%a ?%a &E�O�j =E�Oa @��,FO�a -Ec  Oa A��,FOb  a &E�Oa Ba C%�&��,FO�a -Ec  Oa D��,FOb  a &E�Oa Ea F%�&��,FO�a -Ec  Oa G��,FOb  a &E�O�Ec  OeEc  Ob  W X H IhOP� ����=>�� 0 growl_check Growl_Check�  �  = ��� .0 allnotificationsfiles allNotificationsFiles� 60 enablednotificationsfiles enabledNotificationsFiles> ���������������� 0 appisrunning appIsRunning
� 
appl
� 
anot
� 
dnot
� 
iapp� 
� .registernull��� ��� null� @*�k+  7eEc  O� '���mvE�O���mvE�O*�b  ���b  � UY h� ����?@�� 00 osxnotifications_check osxNotifications_Check�  �  ?  @ ���
� 
file
� .coredoexnull���     ****� ,� (*�b  /j  eEc  OeY fEc  OfU� ����AB�� ,0 process_notification process_Notification� �C� C  ��� 0 itemnum itemNum� 0 attnum attNum�  A ����� 0 itemnum itemNum� 0 attnum attNum� 0 	attplural 	attPlural� 0 plural_test Plural_TestB ���#3579��GK[]_a
� 
nmbr� � 0 notification  � ~�E�O�j  �E�Y �k �E�Y hO��&E�O�k **���%�%�%�%�%�%b  b  b  �+ OPY +*���%�%�%a %�%a %b  b  b  �+ OPOP� �t��DE�� 00 processed_notification processed_Notification� �F� F  ��� 0 successcount successCount� 0 errnum errNum�  D ���� 0 successcount successCount� 0 errnum errNum� 0 plural_test Plural_TestE ���������������
!%135@���� � 0 notification  
� 
nmbr� ��  *���b  b  b  �+ Y hO��&E�O�i  *���b  b  b  �+ OPY ��j  *���b  b  b  �+ OPY s�k  2*���b  %a %b  %a %b  b  b  �+ OPY =�k 6*a a a b  %a %b  %a %b  b  b  �+ Y hOa Ec  OP� �O��GH�� 0 terminal_notification  � �I� I  ���� &0 notificationtitle notificationTitle� *0 notificationmessage notificationMessage� (0 notoficationaction notoficationAction�  G ���~�}� &0 notificationtitle notificationTitle� *0 notificationmessage notificationMessage�~ (0 notoficationaction notoficationAction�} 
0 action  H 	�|bjlp����{�| 00 osxnotifications_check osxNotifications_Check
�{ .sysoexecTEXT���     TEXT� 8*j+  e  .�� �%�%E�Y �E�Ob  �%�%�%�%�%�%j Y h� �z��y�xJK�w�z 0 notification  �y �vL�v L  �u�t�s�r�q�p�u 0 nname nName�t 0 ntitle nTitle�s 0 nmessage nMessage�r 0 nappname nAppName�q 0 naction nAction�p 0 nicon nIcon�x  J �o�n�m�l�k�j�o 0 nname nName�n 0 ntitle nTitle�m 0 nmessage nMessage�l 0 nappname nAppName�k 0 naction nAction�j 0 nicon nIconK ���i�h�g�f�e�d�c��b
�i 
name
�h 
titl
�g 
desc
�f 
appl
�e 
iapp�d 

�c .notifygrnull��� ��� null�b 0 terminal_notification  �w Jb  �  )b  e  � *������ UY hOPY b  �  *���m+ 
Y hOP� �aM�`�_NO�^
�a .aevtoappnull  �   � ****M k    "PP QQ RR SS *�]�]  �`  �_  N �\�[�\ 0 errtext errText�[ 0 errnum errNumO $�Z�Y<�X�W�V�U�T�S�RT�Q����P�O����N��M�L�K
�Z 
ascr
�Y 
txdl�X 0 growl_check Growl_Check�W 0 
item_check 
item_Check�V 0 
item_count 
item_Count�U ,0 process_notification process_Notification�T 0 mail_process mail_Process�S 00 processed_notification processed_Notification�R 0 errtext errTextT �J�I�H
�J 
errn�I 0 errnum errNum�H  �Q���P �O 0 notification  
�N 
ret 
�M 
bool
�L 
disp
�K .sysodlogaskr        TEXT�^#�Ec  O�Ec  O���,FO mb  �  
)j+ Y hO)j+ Ob  
jv ,)b  
k+ O)b  b  l+ 	O)b  
k+ 
OPY 	iEc  O)b  b  l+ OPW �X  b  e  b��  $*�a a b  b  b  a + OPY 5*a a a _ %b  	%a %_ %�%b  b  b  a + OPY 1b  f 	 b  f a & a �%_ %�%a jl Y hascr  ��ޭ