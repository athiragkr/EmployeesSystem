   M S B A M L   `   `   `  ����   EmployeeManager.App0    *EmployeeManager.Views.EmployeeOverviewView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006       � Title$  Employees Overview��$	��420��$	��706�� � DataContext ��    mainViewModelLocator �� Source# [   �� Path$# LiveEmployeeOverviewViewModel�.���  � ColumnDefinitions �� $��* ��� $��2* �.+��� -   $��EmployeeListView��$��0������ *	Employees+ �� SelectedItem �� *SelectedEmployee+���� .R��� ._��  �� $��* ��� $��2* � � RowDefinitions �� $
��Auto ��� $
��Auto �.+��� $��0��$��2��$
��Bold"����� *Name+�� $��1��$��0�� �� Orientation$ 
Horizontal=�.+��� $��Status: ���� ���� *Status+� $��1��$��10,5,5,5q� �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto � �� $
��Auto ��� $��* �.+��� $��0��$�� Name ��$
��Bold"��� $��1��$
�� Id ��$
��Bold"��� $��2��$�� Email ��$
��Bold"��� $��3��$�� Gender ��$
��Bold"��� $��4��$�� Status ��$
��Bold"��� $��0��$��1������ *SelectedEmployee.Id+ �� Mode$ OneWay=��� $��1��$��1������ *SelectedEmployee.Name+$ OneWay=��� $��2��$��1������ *SelectedEmployee.Email+$ OneWay=��� $��3��$��1������ *SelectedEmployee.Gender+$ OneWay=��� $��4��$��1������ *SelectedEmployee.Status+$ OneWay=��� $��5��.+��� $�� Search by Name ��	 J� RenderTransformOrigin$	 
0.49,2.638&�$��
0,0,-0.5,0q����� *RelaySearchCommand+�� $��6��.+��� $�� Export Overview Results ��$	 
0.49,2.638&����� *ExportCommand+�� $��7��.+��� $�� Edit Detail ��$	 
0.49,2.638&����� *EditCommand+