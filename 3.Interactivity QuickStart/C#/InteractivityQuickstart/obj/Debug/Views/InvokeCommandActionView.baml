   M S B A M L   `   `   `  ����R  NInteractivityQuickstart, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullW0clr-namespace:InteractivityQuickstart.ViewModels"InteractivityQuickstart.ViewModels  5      ;    5InteractivityQuickstart.Views.InvokeCommandActionView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      P LPrism.Wpf, Version=6.3.0.0, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59$prismhttp://prismlibrary.com/  5      A
viewModels0clr-namespace:InteractivityQuickstart.ViewModels  5        � DataContext  5      E   ?InteractivityQuickstart.ViewModels.InvokeCommandActionViewModel  5   
   .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6   .+�5   
   �� $��0��6   .+�5      �� $��5q�6   $��24(�6#   
���  ��$
��Wrap=�6F   InvokeCommandAction6o   �� 5      $��5q�6   $
��Wrap=�6#   The �� 6<   .�6A   InvokeCommandAction6V   ge is useful when you need to invoke a command in response to an event raised by a control in the view.6�   �� 5      $��5q�6   $
��Wrap=�6#   ��In the following example there is a list of items and we want to execute a command in the view model when an item is selected. The view model will then change the "Selected Item" shown below.5      5      �� 5   
   $��1��6   $��5q�6    �� SelectionMode$ Single=�6H   ��6*   �� *Items+.  (System.Windows.Interactivity.Interaction   Triggers 5       /  )System.Windows.Interactivity.EventTrigger  5!         	EventName$ SelectionChanged��6!   .  (System.Windows.Interactivity.TriggerBase   Actions. 5#      -  'Prism.Interactivity.InvokeCommandAction     TriggerParameterPath$ 
AddedItems��6T      Command 60   �� *SelectedCommand+6T   5$      5'      �� 5)   
   $��2��6   $��5q�6"    �� Orientation$ 
Horizontal=�6-   .+�5*      �� 
���  ��$
��Bold"�6-   Selected Item:6P   �� 5+      4  .System.Windows.Automation.AutomationProperties	   AutomationId$	 SelectedItemTextBlock��6   
���  ��$
��Bold"�6g   $	��5,0q�6y   ��6�   �� *SelectedItemText+5,      5.      5/      