   M S B A M L   `   `   `  ����N  JMicroDo.ShopManager, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:MicroDo.ShopManager.ViewMicroDo.ShopManager.View  5   	   (    "MicroDo.ShopManager.View.LoginView   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   8local&clr-namespace:MicroDo.ShopManager.View     5   	   -   5        $��window��5        � Title$  系统登录��5   	   $	��600��6   $	��360��6#   $��Microsoft YaHei)�5	   	   $��
ExtraLight"�6&    � 
ResizeMode$ NoResize=�5
   	    � WindowStartupLocation$ CenterScreen=�6    � WindowStyle$
 None=�5   	    � AllowsTransparency . ��66   Z�  � 	Resources 5       �� Source �� MergedDictionaries �� 
TargetType   Key	 �� CornerRadius
 �� Triggers P� Property P� Value �� 
TargetName �� Property �� Value�� 5   
   $( "../Assets/Styles/DefaultStyle.xaml?�6    5      �� 5      �� 5      " ��6&   LoginButtonTemplate  .R�5      �� ���#CE0000$	 5��66   ._�5      � .+�5   "   �� $
��back��6O   $	 4��6)   ���#CE0000$y�Hidden=�6[   �� 5   "   #��z��61   $��Center=�6U   $��Center=�6p   #��z��6�   5      5      
 5      P� 5       �@J�IsMouseOver . . �5   "   �� $
 back��6)    � y�$ Visible=�6Q   5       5"      5&      %    5(      .��5+      �� $��5q�6   
�������$	 10��6+    J� Effect 5-   
   3  -System.Windows.Media.Effects.DropShadowEffect  5.         Color$
 Gray��6      ShadowDepth$ 0Q�6,      
BlurRadius$ 5Q�6<      Opacity$	 0.3Q�6K      	Direction$ 0Q�6Y   ._�50   
   �  � RowDefinitions 51      �� 53      $
��1.8* �6    �� 54      $��3* �6    �� 55      $	��100 �6    .+�58      �� -   5        ���#CE0000$	 	10,10,0,0��58   *   6C   �� 5;      $	��Top=�6   $��Right=�6-   $��40��6I   $��30��6T     WindowControlButtonStyle#��[ 6a   $	����6�   ��6�   �� *CloseWindowCommand+��5<      ��  �� ElementName$ window���� 5>      $��Bottom=�6   $��0,0,0,30q�64   .+�5?      �� $��80��6   $��80��6%   $	 50��60   $��0,0,0,20q�6B   ��5@      �� 5A       �� ImageSource$ ../Assets/Images/logo.jpg��6%   5C      �� 5D      $$��微笃技术喜铺管理系统��6   $��Center=�6.   
�������$
��Bold"�6^   $��20(�6p   5E      � 5G      $��1��6   $
��20,0q�6     5H      �� 5I      �� 5J      �� 5K      �� 5L      �� 5M      $��23��6$   $
��auto �63   .+�5P      �� $��42��6   $	��123��6&     UserNameTextBoxStyle#���  61   G� 5Q      $��1��6   $��42��6+    G� Password$	 123��67     PasswordBoxStyle#���  6F   �� 5R      $��2��6   $��42��6'   $	��123��63     ValidateBoxStyle#���  6>   �� 5S      $��
登    录��6   $��3��6*   $��40��67   
�������  LoginButtonTemplate#��[ 6V   ��6�   �� *LoginCommand+��5T      �� $ window���� 5U      $��登录失败��6   $
��Wrap=�6(    �� 
LineHeight$ 23��6<   
��� � �$��4��6_   5V      � 5X      $��2��6   $
��20,0q�6     5Z      �� 5[      $��20 �6$   62   �� 5\      6&   .+�5_      �  � ColumnDefinitions 5`      �� 5a      �� 5b      �� 5c      .+�5e      �� ���#DDD$��0,0,0,1q�60   $��Center=�6J   �� 5f      ���#DDD$��0,0,0,1q�60   $��Center=�6J   $��2��6e   �� 5g      $��OR��6    $��1��6*   ���#CCC$��Center=�6L   $��Center=�6g   5h      A� 5j       A� Columns$ 5��6   $��1��6*    5k       �� 
TargetType �� Triggers��%p  '��       �� 5l      " ��6    .�5m      ��  � �� �#DDD6;   �� 5n       � ��$ 40(�69   �� 5o       � ��$ ../Assets/Fonts/#iconfont)�6;   �� 5p       � ��$ Center=�6D   �� 5q       � ��$ Center=�6B    5r      P� 5s   "    �@J�IsMouseOver . . �5t   &   ��  � �� �#007DFA6C   5u   #   5w      5x      .+�5y      �� $	����6    �� 5z      �� 5{      $	����6    �� 5|      �� 5}      $	����6    5~      5�      5�      5�      5�      