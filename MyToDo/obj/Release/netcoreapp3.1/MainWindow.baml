   M S B A M L   `   `   `  ���� A  =MyToDo, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:MyToDoMyToDo      MyToDo.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     &localclr-namespace:MyToDo     -     � Title$  My ToDo List�� � Icon$ /Image/ToDo.ico��$	��300��$	��600�� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=����	#FF050557 � WindowStyle$
 None=�.��]� 
�������.+��� $��Bottom=� �� Orientation$ Vertical=�
�������.+��� $ 
Horizontal=�.+��� -    ��Name$ 	buttonAdd��$	��Add���� -   $ buttonRemove��$��Remove���� -   $ 
buttonSave��$
��Save��$��	60 0 10 0q�$y�Hidden=��� $	��Top=�.+�� -    �Name$ Header��$	��Top=�$��50��   HeaderBackground#��[   � ColumnDefinitions �� $��10 ��� $��34 ��� �� $��40 ��� $��40 �.+��� $��1��$��/Image/ToDo.ico��$��32��$��32���� $��2��$
��10 0q�$��Center=�.+��� -   	 ��Name$	 textblockHeader��$ 
Horizontal=�.+��� $��My��$��26(�$��Arial)�$��	ExtraBold"�
��������� $��T��$��	-6 -5 0 0q�$��Arial)�$��	ExtraBold"�$��38(�$��Italic$�
���  ���� $	��oDo��$��-3 4 0 0q�$��Arial)�$
��Bold"�$��26(�
���  ���� $
��List��$��8 -2 0 0q�$��28(�
��������� $��15��$	��160����!� 
 !� Visual
 ��  �� ElementName$ textblockHeader�� � LayoutTransform V� .~���  �� AngleX$	 -15Q���  �� ScaleY$ -1Q� J� OpacityMask ��  �� EndPoint$	 0 1&�.���  � Color$ Transparent�� � Offset$ 0Q�� $ 	#66FFFFFF��$ 1Q��� -   $ buttonMinimize��$��3��  
exitButton#��[ $��5q�$	��Top=����� $��18��$��5��
��������� -   $ buttonClose��$��4��$��X��#��[ $��5q�$	��Top=��  � RowDefinitions �� $��24 ��� $��* �.+�� 
�������.+��� $��ID��$
��Bold"�$��10 0 0 0q�$
��Left=��� $��Content��$
��Bold"�$��Center=��� $
��Done��$
��Bold"�$��0 0 10 0q�$��Right=��� -	    ��Name$ listboxToDos��$��1��$	��580��
����������� .R��� $ 
Horizontal=�.+��� $
��Left=�����  �� Path$ ID���  ��Name$ textboxList��-
   $��10 0 0 0q�$	��500�� �� TextWrapping$
 Wrap=�$
��Bold"�$��Center=� � ToolTip$ select list item to edit������ $ Content���  ��Name$ checkBox��-   $��10 0 0 0q�$��Right=� d� 	IsChecked �� *IsDone+�� -   $ textboxInput��$��1��$�� ��$��24��$
��10 0q�$y�Hidden=�$��Bottom=�