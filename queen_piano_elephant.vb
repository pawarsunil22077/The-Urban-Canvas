Imports System.Drawing

Public Class Form1
    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        ' Create the control to draw on.
        Dim c As New Canvas
        ' Set its size.
        c.Size = New Size(Me.ClientSize.Width, Me.ClientSize.Height)
        ' Set the background color.
        c.BackColor = Color.LightGray
        ' Add the control to the form.
        Me.Controls.Add(c)
    End Sub
End Class

Public Class Canvas
    Inherits Panel
    Overrides Property BackColor As Color
        Set(value As Color)
            MyBase.BackColor = value
            Me.Refresh()
        End Set
        Get
            Return MyBase.BackColor
        End Get
    End Property
    Private pen As New Pen(Color.Black)
    Private brush As New SolidBrush(Color.Black)

    Private Sub Canvas_Paint(sender As Object, e As PaintEventArgs) Handles Me.Paint
        Dim g As Graphics = e.Graphics
        ' Use the pen to draw the outline of the canvas.
        g.DrawRectangle(pen, 0, 0, Me.ClientSize.Width - 1, Me.ClientSize.Height - 1)
        ' Use the brush to fill it in.
        g.FillRectangle(brush, 0, 0, Me.ClientSize.Width - 1, Me.ClientSize.Height - 1)
    End Sub
End Class

Public Class Form2
    Private Sub Form2_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        ' Create the control to draw on.
        Dim c As New Canvas
        ' Set its size.
        c.Size = New Size(Me.ClientSize.Width, Me.ClientSize.Height)
        ' Set the background color.
        c.BackColor = Color.LightGray
        ' Add the control to the form.
        Me.Controls.Add(c)
    End Sub
End Class

Public Class Form3
    Private Sub Form3_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        ' Create the control to draw on.
        Dim c As New Canvas
        ' Set its size.
        c.Size = New Size(Me.ClientSize.Width, Me.ClientSize.Height)
        ' Set the background color.
        c.BackColor = Color.LightGray
        ' Add the control to the form.
        Me.Controls.Add(c)
    End Sub
End Class

Public Class Form4
    Private Sub Form4_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        ' Create the control to draw on.
        Dim c As New Canvas
        ' Set its size.
        c.Size = New Size(Me.ClientSize.Width, Me.ClientSize.Height)
        ' Set the background color.
        c.BackColor = Color.LightGray
        ' Add the control to the form.
        Me.Controls.Add(c)
    End Sub
End Class

Public Class Form5
    Private Sub Form5_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        ' Create the control to draw on.
        Dim c As New Canvas
        ' Set its size.
        c.Size = New Size(Me.ClientSize.Width, Me.ClientSize.Height)
        ' Set the background color.
        c.BackColor = Color.LightGray
        ' Add the control to the form.
        Me.Controls.Add(c)
    End Sub
End Class

Public Class Form6
    Private Sub Form6_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        ' Create the control to draw on.
        Dim c As New Canvas
        ' Set its size.
        c.Size = New Size(Me.ClientSize.Width, Me.ClientSize.Height)
        ' Set the background color.
        c.BackColor = Color.LightGray
        ' Add the control to the form.
        Me.Controls.Add(c)
    End Sub
End Class

Public Class Form7
    Private Sub Form7_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        ' Create the control to draw on.
        Dim c As New Canvas
        ' Set its size.
        c.Size = New Size(Me.ClientSize.Width, Me.ClientSize.Height)
        ' Set the background color.
        c.BackColor = Color.LightGray
        ' Add the control to the form.
        Me.Controls.Add(c)
    End Sub
End Class

Public Class Form8
    Private Sub Form8_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        ' Create the control to draw on.
        Dim c As New Canvas
        ' Set its size.
        c.Size = New Size(Me.ClientSize.Width, Me.ClientSize.Height)
        ' Set the background color.
        c.BackColor = Color.LightGray
        ' Add the control to the form.
        Me.Controls.Add(c)
    End Sub
End Class

Public Class Form9
    Private Sub Form9_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        ' Create the control to draw on.
        Dim c As New Canvas
        ' Set its size.
        c.Size = New Size(Me.ClientSize.Width, Me.ClientSize.Height)
        ' Set the background color.
        c.BackColor = Color.LightGray
        ' Add the control to the form.
        Me.Controls.Add(c)
    End Sub
End Class

Public Class Form10
    Private Sub Form10_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        ' Create the control to draw on.
        Dim c As New Canvas
        ' Set its size.
        c.Size = New Size(Me.ClientSize.Width, Me.ClientSize.Height)
        ' Set the background color.
        c.BackColor = Color.LightGray
        ' Add the control to the form.
        Me.Controls.Add(c)
    End Sub
End Class

Public Class Form11
    Private Sub Form11_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        ' Create the control to draw on.
        Dim c As New Canvas
        ' Set its size.
        c.Size = New Size(Me.ClientSize.Width, Me.ClientSize.Height)
        ' Set the background color.
        c.BackColor = Color.LightGray
        ' Add the control to the form.
        Me.Controls.Add(c)
    End Sub
End Class

Public Class Form12
    Private Sub Form12_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        ' Create the control to draw on.
        Dim c As New Canvas
        ' Set its size.
        c.Size = New Size(Me.ClientSize.Width, Me.ClientSize.Height)
        ' Set the background color.
        c.BackColor = Color.LightGray
        ' Add the control to the form.
        Me.Controls.Add(c)
    End Sub
End Class

Public Class Form13
    Private Sub Form13_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        ' Create the control to draw on.
        Dim c As New Canvas
        ' Set its size.
        c.Size = New Size(Me.ClientSize.Width, Me.ClientSize.Height)
        ' Set the background color.
        c.BackColor = Color.LightGray
        ' Add the control to the form.
        Me.Controls.Add(c)
    End Sub
End Class

Public Class Form14
    Private Sub Form14_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        ' Create the control to draw on.
        Dim c As New Canvas
        ' Set its size.
        c.Size = New Size(Me.ClientSize.Width, Me.ClientSize.Height)
        ' Set the background color.
        c.BackColor = Color.LightGray
        ' Add the control to the form.
        Me.Controls.Add(c)
    End Sub
End Class

Public Class Form15
    Private Sub Form15_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        ' Create the control to draw on.
        Dim c As New Canvas
        ' Set its size.
        c.Size = New Size(Me.ClientSize.Width, Me.ClientSize.Height)
        ' Set the background color.
        c.BackColor = Color.LightGray
        ' Add the control to the form.
        Me.Controls.Add(c)
    End Sub
End Class