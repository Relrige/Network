   M S B A M L   `   `   `  ????C  ?ToDoList, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:ToDoList.Views.PagesToDoList.Views.Pages  5      "    ToDoList.Views.Pages.AllTask   5      Z VDevExpress.Mvvm.UI, Version=21.1.0.0, Culture=neutral, PublicKeyToken=382ad28f6ae31f30W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      4local"clr-namespace:ToDoList.Views.Pages     5      -   5          N?Name$  _window??5
       N? Title$ AllTask??5	       ? 	Resources 5       ?? 
TargetType ?? Triggers P? Property P? Value ?? Property ?? Value	 ?? 
TargetType
 ?? CornerRadius ??Name=  7System.Windows.Controls.Primitives.DataGridColumnHeader*  $System.Windows.Controls.DataGridCell)  #System.Windows.Controls.DataGridRow??%&  '??       '?? ?    '  u    '  ^    '  ?    ?? 5   
   " ??6    5      P? 5       ?@d?	IsChecked$ FalseY?6/   . ?5      ??  ? ??
 ? d ?64   ?? 5       ? ??
 ?????63   5      P? 5       ?@d?	IsChecked$
 TrueY?6/   . ?5      ??  ? ??
 ?iii?64   ?? 5       ? ??
 ?????63   5      P? 5       ?@J?IsMouseOver$
 True??69   . ?5      ??  ? ??
 ?iii?64   ?? 5       ? ??
 ?????63   5      5      ?? 5   
   " ??6   .?5      ??  ? ??
 ?   ?6,   ?? 5       ? ??
 ?\\??6+   ?? 5        ? ?? 5!      ?? 5"      "	 ??6&   .R?5#      ?? $	
 100??6"   #??z??65   #??z??6_   $??1q?6?   ._?5$      (? .??5%   "   ?? $ Canvas??5(   )   $??Center=?5%   )   $??Center=?5&   )   $??24??5'   )   $??24??64   .+?5)   &   F? |??????!?a ??f@KL ? ? 0?? ??a @KL ?@KL ?a ?0??  ? ?@KL ?f??a ??!? ? О? ??f??!???!?f?О?  ? ???!?a 	#??z??6?   5*   #   5+      5,      5-      5/       50      P? 51       ?@J?IsMouseOver$
 True??61   . ?52      ??  ? ??
 ??p??63   53      55      ?? 56   
   "  6   .?57      ??  ? ??$ 6,6,6,6q?6'   ?? 58       ? ??$ Center=?6;   ?? 5:       ? ?? ?#5d54a46+   ?? 5;       ? ??
 ?????6+   ?? 5<       ? ??$ 40??6'   5>      ?? 5?   
   "  6.   .?5@      ??  ? ?? 6+   Z? ?? 5A       ? ?? 6,   Z?  5B      P? 5C       ?@ 
IsSelected$
 True??60   . ?5D      ??  ? ?? 63   Z? ?? 5E       ? ?? 64   Z? ?? 5F       ? ??
 ?   ?63   5G      5I      ?? 5J   
   "  6   .?5K      ??  ? ??
 ?????6+   ?? 5L       ? ?? 6,   Z? ?? 5M       ? ??$ 30??6'   ?? 5N       ? ??$ Center=?69    5O      P? 5P       ?@ 
IsSelected$
 True??60   . ?5Q      ??  ? ?? 63   Z? ?? 5R       ? ?? 64   Z? ?? 5S       ? ??
 ?   ?63   5T      5V      5W      .??5X      ? .+?5Y   
   &   System.Windows.Controls.DataGrid  -   5          Name$ AllTaskList??5Y      
???????   RowHeaderWidth$ 0Q?5[      $??16(?5\         AutoGenerateColumns$ False??5]         CanUserAddRows$ False??5^         CanUserDeleteRows$ False??5_         CanUserResizeColumns$ False??5`         CanUserReorderColumns$ False??5a         CanUserResizeRows$ False??5b         CanUserSortColumns$ False??5c      
??????    GridLinesVisibility$
 None=?5f         RowDetailsVisibilityMode$ 	Collapsed=?5g      ??5e      ?? *
AllTasks+   Columns 5h      4  .System.Windows.Controls.DataGridTemplateColumn  5i      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$ 70 6*      CellTemplate 5j      ?? 5k      .R?5l      ?? $??Center=?5m   !   $??Center=?5n   !    d? 	IsChecked 5o   !   ??  ?? Path$ IsDone???5p   !   ?? *DataContext.IsDone_Click+ ?? ElementName$ _window????5q   !   ?? 5r      5t        5u         Header$
 ToDo??6)      
IsReadOnly$
 True??67   $ * 6I    5v      ?? 5w      .R?5x      ?? ??5y   !   ?? $
 ToDo?5{      5}        5~      $  ??6)   $ 70 63    5      ?? 5?      .R?5?      ?? $??20??5?   !   $??20??5?   !   $??Center=?5?   !   $??Center=?5?   !   ??5?   !   ?? *DataContext.DeleteTask_Click+$ _window????5?   !   ?? 5?      5?      5?      5?      5?      