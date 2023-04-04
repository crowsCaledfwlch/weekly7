Class MainWindow
    Dim _costSong As Decimal = 2.99D
    Dim _costRoom As Decimal = 8.99D
    Private Sub customize_SelectionChanged(sender As Object, e As SelectionChangedEventArgs) Handles cmbxCustomize.SelectionChanged
        If cmbxCustomize.SelectedIndex > -1 Then
            cnvCalculations.Visibility = Visibility.Visible
            If cmbxCustomize.SelectedIndex = 0 Then
                lblType.Content = "Number of Karaoke Songs"
            Else
                lblType.Content = "Hourly Rental of Karaoke Room"
            End If
        Else
            cnvCalculations.Visibility = Visibility.Collapsed
        End If
    End Sub
    Private Function ValidateInput() As Boolean
        Dim intNumber As Integer
        Dim blnValid As Boolean = False
        Try
            intNumber = Convert.ToInt32(txtValue.Text)
            If intNumber > 0D Then
                blnValid = True
                Return blnValid
            Else
                MsgBox("Please Enter a number greater than 0", , "Error")
            End If
        Catch ex As FormatException
            MsgBox("Please Enter a valid number", , "Error")
        Catch ex As OverflowException
            MsgBox("Please Enter a reasonable number", , "Error")
        Catch ex As SystemException
            MsgBox("Please Try again with a number representative of what you are looking to purchase", , "Error")
        End Try
        txtValue.Focus()
        txtValue.Clear()
        Return blnValid
    End Function
    Private Function ClearForm()
        cnvCalculations.Visibility = Visibility.Collapsed
        cmbxCustomize.SelectedIndex = -1
        cmbxCustomize.Text = "Customize Your Night"
        txtValue.Clear()
        lblCost.Content = ""
    End Function

    Private Sub btnClear_Click(sender As Object, e As RoutedEventArgs) Handles btnClear.Click
        ClearForm()
    End Sub

    Private Sub btnValue_Click(sender As Object, e As RoutedEventArgs) Handles btnValue.Click
        Dim blnIsValidInput As Boolean = False
        Dim intValue As Integer
        Dim decTotal As Decimal
        blnIsValidInput = ValidateInput()
        If blnIsValidInput Then
            intValue = Convert.ToInt32(txtValue.Text)
            If cmbxCustomize.SelectedIndex = 0 Then
                decTotal = CalcSongCost(intValue)
            Else
                decTotal = CalcRoomCost(intValue)
            End If
            lblCost.Content = "Total Cost of Karaoke Night - " & decTotal.ToString("c")
        End If
    End Sub

    Private Function CalcRoomCost(intValue As Integer) As Decimal
        Return intValue * _costRoom
    End Function

    Private Function CalcSongCost(intValue As Integer) As Decimal
        Return intValue * _costSong
    End Function
End Class
