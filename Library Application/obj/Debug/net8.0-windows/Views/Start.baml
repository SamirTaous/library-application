   M S B A M L   `   `   `  ����N  JLibrary Application, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:Library_Application.ViewsLibrary_Application.Views  5      %    Library_Application.Views.Start   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9local'clr-namespace:Library_Application.Views     5        � 	Resources  5
         StartButton �� 
TargetType �� Property �� Value �� 
StartPoint �� EndPoint � Color � Offset �� 
TargetType	 �� CornerRadius
 J� Opacity �� Triggers P� Property P� Value �� 
TargetName��%�  &	        �� 5   
   " ��6$   .�5      ��  � ��$ Center=�64   �� 5       � ��$ Center=�62   �� 5       � ��$ 18(�6)   �� 5       � ��$ Medium"�6+   �� 5       � �� �#1A202C6+   �� 5       � �� 5      �� 5      $	 0,0&�6*   $	 0,1&�6;   .��5      � $ #FFFFFF��6'   $ 0Q�67   � 5      $ #F7FAFC��6'   $ 1Q�67   5      5      �� 5       � ��$ 12q�6'   �� 5       � ��$ 40,24q�6(   �� 5       � ��$	 200��6)   �� 5       � ��$ 70��6*   �� 5       � �� 5      �� 5      " ��6&   .R�5       � .+�5!      �� $��shadowBorder��6%   ���#E2E8F0$	 16��5#   %   $��0,4,4,8q�5$   %   $	
 0.3Q�5%   %   �� 5&      $��
mainBorder��6%   #��z��5'   %   $	 16��5(   %   ���#E2E8F0$��1q�5*   %   $��0,0,4,4q�5+   %   ._�5,   "   �� $��innerBorder��6)   
������ $	 15��5.   )   
������ $��1q�50   )   ._�51   &   � .+�52   *   �� $��shimmer��64   
������ $	��Top=�54   3   $��2��55   3   $
��20,0q�56   3   �� 57   *   $��Center=�6;   $��Center=�58   9   #��z��59   9   5:   '   5;   #   5<      5=       5>      P� 5?       �@J�IsMouseOver$
 True��6=   . �5@   "   �� $ 
mainBorder��6)    � �� �#3182CE6X   �� 5A   "   $ innerBorder��6)    � �� �#63B3ED6Y   �� 5B   "   $ shimmer��6)    � �� �#3182CE6N   �� 5C   "   $ 
mainBorder��6)    � �� 5D   &   �� 5E   *   $	 0,0&�6>   $	 0,1&�6O   .��5F   .   � $ #F7FAFC��6;   $ 0Q�6K   � 5G   .   $ #EDF2F7��6;   $ 1Q�6K   5H   +   5J   #   �� 5K   "   $ shadowBorder��6)    � �� �#3182CE6Y   �� 5L   "   $ shadowBorder��6)    �@J�Opacity$
 0.15Q�6V   �� 5M   "    �@�Cursor$
 Hand��6;   5N      P� 5O       � ��$
 True��6;   . �5P   "   �� $ 
mainBorder��6)    � ��$ 2,2,2,2q�6S   �� 5Q   "   $ shadowBorder��6)    � ��$ 2,2,2,2q�6U   �� 5R   "   $ 
mainBorder��6)    � �� 5S   &   �� 5T   *   $	 0,0&�6>   $	 0,1&�6O   .��5U   .   � $ #EDF2F7��6;   $ 0Q�6K   � 5V   .   $ #E2E8F0��6;   $ 1Q�6K   5W   +   5Y   #   5Z      5\      5^      5_      5`      .��5b      � .+�5c   
   �� ��5d      �� 5e      $	 0,0&�6&   $	 0,1&�67   .��5f      � $ #FAFBFC��6#   $ 0Q�63   � 5g      $ #F4F6F8��6#   $ 1Q�63   5h      5j      � 5l   
   $��Center=�6   $��Center=�6,    � RowDefinitions 5m      �� 5n      $
��Auto �6    �� 5o      $
��Auto �6    �� 5p      $
��Auto �6    .+�5t      �� $��0��6   $��Library Application��5u      $��36(�5v      $��Light"�5w      ���#1A202C$��Center=�5y      $��0,0,0,40q�5z       J� Effect 5{      3  -System.Windows.Media.Effects.DropShadowEffect  5|         Color$ #CBD5E0��6'      Opacity$	 0.3Q�5}   %      ShadowDepth$ 1Q�5~   %      
BlurRadius$ 2Q�5   %   5�      �� 5�      -   5         ��Name$ btn_start_login��5�      $��1��5�      $��Login��5�      #��[  5�      ��5�      �� *LoginCommand+�� 5�      -   5        $ btn_start_register��5�      $��2��5�      $��Register��5�      #��[  5�      ��5�      �� *RegisterCommand+5�      5�      5�      