   M S B A M L   `   `   `  ����E  AWebScraper, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:WebScraper
WebScraper  5   	       WebScraper.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:WebScraper     5   	     � Title$  Deku Web Scraper��5   	   $	��600��6"   $	��900��6/   .��5	      �  � RowDefinitions 5
   
   �� 5      $��50 �6   �� 5      $��* �6   .+�5   
   � $��0��6   .+�5      ]� .+�5      o� �� 5      -   5         ��Name$ ClearResults��5      $��Right=�5      $��82��5      $��25��5      $��Clear Results��5      $��
0,12,10,12q�5      5      �� 5      -   5        $ 
BtnScraper��5      $��Right=�5      $��50��5      $��25��5      $��Scrape��5      $��0, 0, 10, 0q�5       5!      �� 5#      -   5         ��Name$ TbPage��5$      $��Bottom=�5#      $��20��5%      $3��-https://www.dekudeals.com/recent-drops?page=1��5&       �� TextWrapping$ NoWrap=�5'      $��	31,0,10,0q�5(      5)      5*      � 5,   
   $��1��6   .+�5-      &   System.Windows.Controls.DataGrid  -   5          Name$ dataGrid��5.         AlternatingRowBackground
 ��ح�   AutoGenerateColumns .     CanUserAddRows . 	   ClipboardCopyMode$	 ExcludeHeader=�52      ��5-      �� *	Entries+
   Columns
 53      4  .System.Windows.Controls.DataGridTemplateColumn  55         CellTemplate 56      �� 57      .R�58   "   ��  �� TextAlignment$ Center=�59   ,   ��58   ,   ��  �� Path$ ID�59   ,   5:      5<        5>      ,  &System.Windows.Controls.DataGridColumn   Header$ 
Game Title��6-    5?      �� 5@      .R�5A   "   �� $
��Bold"�5B   ,   ��5A   ,   �� $ 
Game_Title�5B   ,   5C      5E        5G      $ 
Sale Price��6-      HeaderStyle 5H      �� 5I       �� 
TargetType=  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6$   .�5J   "   ��  �� Property � �� �� Value$ Center=�5K   )   5L       5N      �� 5O      .R�5P   "   �� $ Center=�5Q   ,   $
��Bold"�5R   ,   ��5P   ,   �� $ 	SalePrice�5R   ,   5S      5U        5W      $ Original Price��6-    5X      �� 5Y      "  6$   .�5Z   "   ��  � ��$ Center=�5[   )   5\       5^      �� 5_      .R�5`   "   �� $��StrikeThrough{�5a   ,   $ Center=�5b   ,   ��5`   ,   �� $ OriginalPrice�5b   ,   5c      5e        5g      $ Store��6-    5h      �� 5i      "  6$   .�5j   "   ��  � ��$ Center=�5k   )   5l       5n      �� 5o      .R�5p   "   �� $ Center=�5q   ,   ��5p   ,   �� $ Store�5q   ,   5r      5t        5v      $
 Link��6-      ClipboardContentBinding 6;   �� $
 Link� 5w      �� 5x      .R�5y   "   �� ��6,   �� $
 Link�5z      5|      5      5�      5�      5�      