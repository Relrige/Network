   M S B A M L   `   `   `  ????C  ?ToDoList, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:ToDoList.Views.PagesToDoList.Views.Pages  5          ToDoList.Views.Pages.Done   5      Z VDevExpress.Mvvm.UI, Version=21.1.0.0, Culture=neutral, PublicKeyToken=382ad28f6ae31f30W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      4local"clr-namespace:ToDoList.Views.Pages     5      -   5          N?Name$  _window??5
       N? Title$
 Done??5	       ? 	Resources 5       ?? 
TargetType ?? Triggers P? Property P? Value ?? Property ?? Value	 ?? 
TargetType
 ?? CornerRadius ??Name=  7System.Windows.Controls.Primitives.DataGridColumnHeader*  $System.Windows.Controls.DataGridCell)  #System.Windows.Controls.DataGridRow??%T  '??       '?? ?    '  ?    '  ?    '  ?    ?? 5   
   " ??6    5      P? 5       ?@d?	IsChecked$ FalseY?6/   . ?5      ??  ? ??
 ? d ?64   ?? 5       ? ??
 ?????63   5      P? 5       ?@d?	IsChecked$
 TrueY?6/   . ?5      ??  ? ??
 ?iii?64   ?? 5       ? ??
 ?????63   5      P? 5       ?@J?IsMouseOver$
 True??69   . ?5      ??  ? ??
 ?iii?64   ?? 5       ? ??
 ?????63   5      5      ?? 5!   
   " ??6   .?5"      ??  ? ??
 ?   ?6,   ?? 5#       ? ??
 ?\\??6+   ?? 5$       ? ?? 5%      ?? 5&      "	 ??6&   .R?5'      ?? $	
 100??6"   #??z??65   #??z??6_   $??1q?6?   ._?5(      (? .??5)   "   ?? $ Canvas??5,   )   $??Center=?5)   )   $??Center=?5*   )   $??24??5+   )   $??24??64   .+?5-   &   F? |??????!?a ??f@KL ? ? 0?? ??a @KL ?@KL ?a ?0??  ? ?@KL ?f??a ??!? ? О? ??f??!???!?f?О?  ? ???!?a 	#??z??5.   +   $??Center=?5/   +   $??Center=?50   +   51   #   52      53      54      56       57      P? 58       ?@J?IsMouseOver$
 True??61   . ?59      ??  ? ??
 ??p??63   5:      5<      ?? 5=   
   "  6   .?5>      ??  ? ??$ 6,6,6,6q?6'   ?? 5?       ? ??$ Center=?6;   ?? 5A       ? ?? ?#5d54a46+   ?? 5B       ? ??
 ?????6+   ?? 5C       ? ??$ 40??6'   5E      ?? 5F   
   "  6.   .?5G      ??  ? ?? 6+   Z? ?? 5H       ? ?? 6,   Z?  5I      P? 5J       ?@ 
IsSelected$
 True??60   . ?5K      ??  ? ?? 63   Z? ?? 5L       ? ?? 64   Z? ?? 5M       ? ??
 ?   ?63   5N      5P      ?? 5Q   
   "  6   .?5R      ??  ? ?? 6+   Z? ?? 5S       ? ?? 6,   Z? ?? 5T       ? ??$ 30??6'   ?? 5U       ? ??$ Center=?69    5Y      P? 5Z       ?@ 
IsSelected$
 True??60   . ?5[      ??  ? ?? 63   Z? ?? 5\       ? ?? 64   Z? ?? 5]       ? ??
 ?   ?63   5^      5`      5a      .??5b      ? 
???????.+?5c   
   &   System.Windows.Controls.DataGrid  -   5          Name$ AllTaskList??5c      
???????   RowHeaderWidth$ 0Q?5e      $??16(?5f         AutoGenerateColumns$ False??5g         CanUserAddRows$ False??5h         CanUserDeleteRows$ False??5i         CanUserResizeColumns$ False??5j         CanUserReorderColumns$ False??5k         CanUserResizeRows$ False??5l         CanUserSortColumns$ False??5m      
??????    GridLinesVisibility$
 None=?5q         RowDetailsVisibilityMode$ 	Collapsed=?5r      ??5p      ?? *
AllTasks+   Columns 5s      4  .System.Windows.Controls.DataGridTemplateColumn  5t      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$ 70 6)      CellTemplate 5u      ?? 5v      .R?5w      ?? $??Center=?5x   !   $??Center=?5y   !    d? 	IsChecked 5{   !   ??  ?? Path$ IsDone???5|   !   ?? *DataContext.IsDone_Click+ ?? ElementName$ _window????5}   !   ?? 5~      5?        5?         Header$
 Done??6)      
IsReadOnly$
 True??67   $ * 6I    5?      ?? 5?      .R?5?      ?? $??Strikethrough{?5?   !   
?????????5?   !   ?? $
 ToDo?5?   !   5?      5?        5?      $  ??6)   $ 70 63    5?      ?? 5?      .R?5?      ?? $??20??5?   !   $??20??5?   !   $??Center=?5?   !   $??Center=?5?   !   ??5?   !   ?? *DataContext.DeleteTask_Click+$ _window????5?   !   ?? 5?      5?      5?      5?      5?      