   M S B A M L   `   `   `  ����B  >weekly7, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:weekly7weekly7  5   	       weekly7.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:weekly7     5   	     � Title$  Karaoke Music Night��5   	   $	��450��6%   $	��800��62   .��5	      � .+�5
   
   �� -   5         ��Name$ image��5
      $
��Left=�6   $	��413��6:   $��0,10,0,-0.2q�6G   $	��Top=�6\   $	��795��6t   $��karaoke.jpg��6�   �� 5   
   -   5         ��Name$ cnvMenu��5      $
��Left=�6"   $	��423��6=   $��278,0,0,-0.2q�6J   $	��Top=�6`   $	��517��6x   
���   �.+�5      �� -   5         ��Name$ lblTitle��5      $��Karaoke Music Night��6&    �� Left$ 82��6D   
 �� Top$ 26��6U   
�������$��36(�6x   �� 5      -   5         ��Name$ cmbxCustomize��5       �� Text$ Customize Your Night��6.   $ 82��6J   $ 84��6[   $	��340��6k   $��23��6w    �� 
IsReadOnly . 	 �� 
IsEditable	 . .@�5      �� $&�� Number of Songs ($2.99 per song)��6   $
��Left=�6J   $��338.4��6e   �� 5      $5��/Hours in Private Karaoke Booth ($8.99 per song)��6   $
��Left=�6Y   $��338.4��6t   5      �� 5      -   5        $ cnvCalculations��5      $	��301��6.   $ 10��6;   $	 112��6L   $	��497��6]   $y�	Collapsed=�6i   .+�5      �� -   5        $ lblType��5      $��Label��6)   $ 77��69   $ 34��6J   
�������$��24(�6m   �� 5      -   5        
 ��Name$
 btnValue��5      $��
Total Cost��6+   $	 101��6@   $	 143��6R   $��75��6c   �� 5      -   5        $
 btnClear��5      $��Clear��6+   $	 296��6;   $	 143��6M   $��75��6^   �� 5      -	   5         ��Name$ txtValue��5      $��31��6,   $	 199��68    �� TextWrapping$
 Wrap=�6J   $ 80��6^   $��72��6n   �� 5      -
   5        $ lblCost��5      $�� ��6)   $	 113��64   $	 216��6F   
�������$��20(�6j   5      5      5      5      