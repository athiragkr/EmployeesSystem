   M S B A M L   `   `   `  ����  EmployeeManager.App0    *EmployeeManager.Views.EmployeeOverviewView   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	     � Title$  Employees Overview��5   	   $	��420��6$   $	��706��61    � DataContext 5   	   ��    mainViewModelLocator �� Source# [   �� Path$# LiveEmployeeOverviewViewModel�.��5
      �  � ColumnDefinitions 5   
   �� 5      $��* �6   6+   �� 5      $��2* �6   6,   .+�5   
   �� -   5        $��EmployeeListView��5      $��0��5      ��5      �� *	Employees+ �� SelectedItem 5      �� *SelectedEmployee+��5      �� 5      .R�5      �� ._�5      �  5      �� 5   "   $��* �63   6?   �� 5   "   $��2* �63   6@    � RowDefinitions 5      �� 5   "   $
��Auto �60   6@   �� 5   "   $
��Auto �60   6@   .+�5      �� $��0��6=   $��2��6N   $
��Bold"�6b   ��6$   �� *Name+6v   �� 5       $��1��6*   $��0��67    �� Orientation$ 
Horizontal=�6G   .+�5!   "   �� $��Status: ��6(   6=   �� 5"   "   ��6(   �� *Status+6E   5#      5$      5%      5&      5(      � 5*   
   $��1��6   $��10,5,5,5q�6    5+      �� 5,      $
��Auto �6    60   �� 5-      $
��Auto �6    60   �� 5.      $
��Auto �6    60   �� 5/      $
��Auto �6    60   �� 50      $
��Auto �6    60   �� 51      $
��Auto �6    60   �� 52      $
��Auto �6    60   �� 53      $
��Auto �6    60    55      �� 56      $
��Auto �6#   62   �� 57      $��* �6#   6/   .+�59      �� $��0��6   $�� Name ��6!   $
��Bold"�62   6F   �� 5:      $��1��6   $
�� Id ��6!   $
��Bold"�60   6D   �� 5;      $��2��6   $�� Email ��6!   $
��Bold"�63   6G   �� 5<      $��3��6   $�� Gender ��6!   $
��Bold"�64   6H   �� 5=      $��4��6   $�� Status ��6!   $
��Bold"�64   6H   �� 5?      $��0��6   $��1��6!   ��61   �� *SelectedEmployee.Id+ �� Mode$ OneWay=�6h   �� 5@      $��1��6   $��1��6!   ��61   �� *SelectedEmployee.Name+$ OneWay=�6j   �� 5A      $��2��6   $��1��6!   ��61   �� *SelectedEmployee.Email+$ OneWay=�6k   �� 5B      $��3��6   $��1��6!   ��61   �� *SelectedEmployee.Gender+$ OneWay=�6l   �� 5C      $��4��6   $��1��6!   ��61   �� *SelectedEmployee.Status+$ OneWay=�6l   �� 5E      $��5��6   .+�5F      �� $�� Search by Name ��6@   	 J� RenderTransformOrigin$	 
0.49,2.638&�6[   $��
0,0,-0.5,0q�6~   ��6   �� *RelaySearchCommand+6~   5G      �� 5I      $��6��6   .+�5J      �� $�� Export Overview Results ��6;   $	 
0.49,2.638&�6_   ��6   �� *ExportCommand+6_   5K      �� 5M      $��7��6   .+�5N      �� $�� Edit Detail ��69   $	 
0.49,2.638&�6Q   ��6   �� *EditCommand+6Q   5O      5Q      5R      5S      