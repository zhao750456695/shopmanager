   M S B A M L   `   `   `  ����N  JMicroDo.ShopManager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:MicroDo.ShopManager.ViewMicroDo.ShopManager.View  5   	   '    !MicroDo.ShopManager.View.MainView   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   8local&clr-namespace:MicroDo.ShopManager.View     5   	     � WindowState$  	Maximized=�5   	    � Topmost .  � 
ResizeMode$ NoResize=�5
       � WindowStartupLocation$ CenterScreen=�6'    � WindowStyle$
 None=�5   	    � Title$ MainView��5   	   $	��450��6   $	��800��6'    � 	Resources 5       �� MergedDictionaries �� Source	 �� 
TargetType   Key
 �� Property �� Value �� 
TargetType �� CornerRadius �� Triggers P� Property P� Value �� 
TargetName �� Color  Button.Static.Background  Button.Static.Border ��Name J� SnapsToDevicePixels ��Name�� 5   
    5      �� 5      $( "../Assets/Styles/DefaultStyle.xaml?�6%   �� 5      �� 5      "	 	�6   NavButtonStyle  .�5      �� 
 � ��
 �����67   �� 5      
 � �� 5      �� 5   "   " 	�62   .R�5   &   �� $
��back��6W   
������ $ 8��6F   ._�5   *   �� #��z��69   $��Center=�6]   $��Center=�6x   $��20, 4q�6�   $��13(�6�   5   '    5   &   P� 5   *    �@d�	IsChecked$
 TrueY�6G   . �5   .   �� $
 back��65   
 � �� �	#44ffffff6]   5   +   5   #   5!      5"      �� 5%      Button.Static.Background  $ Transparent��6G   �� 5&      Button.Static.Border  $ Transparent��6C   �� 5)      TopButtonStyle  "	 ��63   .�5+      �� 
 � ��# [ 67   �� 5,      
 � ��# [ 68   �� 5-      
 � ��
 �����67   �� 5/      
 � ��$ Center=�6G   �� 50      
 � ��$ Center=�6E   �� 51      
 � ��$
 10,8q�63   �� 52      
 � �� 53      �� 54   "   " ��62   .R�55   &   �� $ border��6-   #��z��6=   #��z��6i   #��z��6�    . ._�56   *   �� $ contentPresenter��6;   |�.  #��z��6g   #��z��6�   ��. # z 6�   #��z��6$  57   '    58   &   P� 59   *    �@��IsDefaulted . . �5:   .   �� $ border��6L   # � ��6`   
 � ��5;   +   P� 5<   *    �@J�IsMouseOver . 5?   +   P� 5@   *    � �� . 5C   +   P� 5D   *    � {� .  5H   +   5J   #   5L      5M      5N      %
   '	�       5P      .��5R      �� $��5q�6   
�������$ 10��6+    J� Effect 5S   
   3  -System.Windows.Media.Effects.DropShadowEffect  5T         Color$
 Gray��6      ShadowDepth$ 0Q�6,      
BlurRadius$ 5Q�6<      Opacity$	 0.3Q�6K      	Direction$ 0Q�6Y   ._�5V   
   � .+�5W      �� ���#CE0000$��88��6*   $	��Top=�66   $ 5,5,0,0��6N   �� 5Y       �� Orientation$ 
Horizontal=�6   $	��Top=�62   $��Right=�6J   .+�5Z      ��   WindowControlButtonStyle#��[ 6   $	����6K   6a   �� 5[      #��[ 6   $	����6K   6`   �� 5\      -   5        #��[ 5\      $	����6K   6u   5]      � 5a       � RowDefinitions 5b      �� 5c      $��88 �6$   64   �� 5d      6&   .+�5g      �� $ 
Horizontal=�6   $��Bottom=�66   $��Right=�6Q   .+�5h      �� $��锁屏��6     TopButtonStyle#���  6*   5j      �� 5k      $��	交接班��6   #���  6+   6V   �� 5l      $��后台��6   #���  6*   6U   �� 5m      $��消息��6   #���  6*   6U   �� 5n      $��返回桌面��6   #���  6,   6W   5p      �� 5r      $��
18,48,18,8q�6   $ 
Horizontal=�62   $
��Left=�6K   $��Center=�6f   .+�5u      	� $��	欢迎页��6"     NavButtonStyle#��[ 60    d� 	IsChecked$
 TrueY�6Y   $��FirstPageView��6�   ��6k   �� *NavChangeCommand+6�   	� 5v      $��	收银台��6"   #��[ 60   6[   	� 5w      $��交易明细��6"   #��[ 61   6[   	� 5x      $��	进销存��6"   #��[ 60   6Z   	� 5y      $��网上订单��6"   #��[ 61   6[   	� 5z      $��设置��6"   #��[ 6/   6Y   5{      �� 5~      -   5        $��contentControl��5~   !   $��1��67   ��6D   �� *MainContent+5�      5�      5�      5�      