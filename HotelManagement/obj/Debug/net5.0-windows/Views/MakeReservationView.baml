   M S B A M L   `   `   `  ����J  FHotelManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:HotelManagement.ViewsHotelManagement.Views  5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5      /    )HotelManagement.Views.MakeReservationView   5      W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      5local#clr-namespace:HotelManagement.Views     5      9System&clr-namespace:System;assembly=mscorlib     5      .��5
      �   � IsSharedSizeScope$
  True��6    � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   .+�5   
   �� $��0��5      $��Reserve a rooom��5       
  Header#��[  5      � 5   
   $��1��6   $��0 25 0 0q�6    5      �� 5      $
��auto �6    �� 5      $
��auto �6    .+�5      �� $��0��6   $��0��6%   $
��Name��65   �� 5       $��1��5!      $��0 5 0 0q�5"      ��5#      �� *
Username+ �� UpdateSourceTrigger$ PropertyChanged=�5%      � 5'   
   $��2��6   $��0 10 0 0q�6    5(      �� 5)      $
��auto �6    �� 5*      $
��auto �6     � ColumnDefinitions 5,      �� 5-      $
��auto �6#    z� SharedSizeGroup$ FirstColumn��60   �� 5.      $
��auto �6#   $ SecondColumn��60   .+�51      �� $��0��52      $��0��53      $��FLoor Number��54      �� 55      $��1��56      $��0��57      $��0 5 0 0q�58      ��59      �� *FloorNumber+$ PropertyChanged=��� 5;      $��0��5<      $��1��5=      $��10 0 0 0q�5>      $��Room Number��5?      �� 5@      $��1��5A      $��1��5B      $��10 5 0 0q�5C      ��5D      �� *
RoomNumber+$ PropertyChanged=�5E      � 5G   
   $��3��6   $��0 10 0 0q�6    5H      �� 5I      $
��auto �6    �� 5J      $
��auto �6     5L      �� 5M      $
��auto �6#   $ FirstColumn��60   �� 5N      $
��auto �6#   $ SecondColumn��60   .+�5Q      �� $��0��5R      $��0��5S      $��
Start Date��5T      (  "System.Windows.Controls.DatePicker  5U      $��1��5V      $��0��5W      $��0 5 0 0q�5X         SelectedDate 5Y      �� *	StartDate+$ PropertyChanged=��� 5[      $��0��5\      $��1��5]      $��10 0 0 0q�5^      $��End Date��5_        5`      $��1��5a      $��1��5b      $��10 5 0 0q�5c       5d      �� *	EndDate+$ PropertyChanged=�5e      �� 5g   
   $��4��6   $��0 25 0 0q�6"    �� Orientation$ 
Horizontal=�64   .+�5h      �� $��Submit��67   ��6   �� *SubmitCommand+67   �� 5i      $��10 0 0 0q�6   $��Cancel��6I   ��6'   �� *CancelCommand+6I   5j      5k      5l      