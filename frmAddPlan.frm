VERSION 5.00
Object = "{FE0065C0-1B7B-11CF-9D53-00AA003C9CB6}#1.1#0"; "COMCT232.OCX"
Begin VB.Form frmAddPlan 
   BorderStyle     =   3  'ũ�� ���� ��ȭ ����
   Caption         =   "���� �߰�"
   ClientHeight    =   4410
   ClientLeft      =   2760
   ClientTop       =   3750
   ClientWidth     =   7095
   Icon            =   "frmAddPlan.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4410
   ScaleWidth      =   7095
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  '������ ���
   Begin VB.TextBox txtParticipants 
      Height          =   270
      Left            =   5400
      TabIndex        =   6
      Top             =   80
      Width           =   1575
   End
   Begin ComCtl2.UpDown UpDown1 
      Height          =   270
      Left            =   4440
      TabIndex        =   27
      Top             =   75
      Width           =   255
      _ExtentX        =   450
      _ExtentY        =   476
      _Version        =   327681
      BuddyControl    =   "txtImprt"
      BuddyDispid     =   196610
      OrigLeft        =   5280
      OrigTop         =   80
      OrigRight       =   5535
      OrigBottom      =   335
      SyncBuddy       =   -1  'True
      BuddyProperty   =   65547
      Enabled         =   -1  'True
   End
   Begin VB.TextBox txtImprt 
      Alignment       =   1  '������ ����
      Height          =   270
      Left            =   4080
      TabIndex        =   5
      Text            =   "1"
      Top             =   80
      Width           =   360
   End
   Begin VB.Frame Frame1 
      Caption         =   "�� ������ �ִ� ��¥"
      Height          =   2895
      Left            =   120
      TabIndex        =   25
      Top             =   1440
      Width           =   3255
      Begin VB.CommandButton cmdRPT 
         Caption         =   "�ݺ�..."
         Height          =   375
         Left            =   2280
         TabIndex        =   15
         ToolTipText     =   "���� ���� ��Ǯ��"
         Top             =   2400
         Width           =   870
      End
      Begin VB.CommandButton cmdDelAll 
         Caption         =   "A"
         Height          =   375
         Left            =   2040
         TabIndex        =   30
         ToolTipText     =   "��� ��¥�� �����մϴ�."
         Top             =   2400
         Width           =   255
      End
      Begin VB.CommandButton cmdDP 
         Caption         =   "-"
         Height          =   375
         Left            =   1800
         TabIndex        =   14
         Top             =   2400
         Width           =   255
      End
      Begin VB.ListBox lvPlanCP 
         Height          =   2040
         Left            =   120
         TabIndex        =   9
         Top             =   240
         Width           =   3015
      End
      Begin VB.CommandButton cmdCP 
         Caption         =   "+"
         Height          =   375
         Left            =   1560
         TabIndex        =   12
         Top             =   2400
         Width           =   255
      End
      Begin VB.TextBox txtCD 
         Height          =   270
         Left            =   1200
         TabIndex        =   13
         Top             =   2460
         Width           =   375
      End
      Begin VB.TextBox txtCM 
         Height          =   270
         Left            =   720
         TabIndex        =   11
         Top             =   2460
         Width           =   375
      End
      Begin VB.TextBox txtCY 
         Height          =   270
         Left            =   120
         MaxLength       =   4
         TabIndex        =   10
         Top             =   2460
         Width           =   495
      End
      Begin VB.Label Label7 
         Caption         =   "  -       -"
         Height          =   255
         Left            =   480
         TabIndex        =   29
         Top             =   2520
         Width           =   855
      End
   End
   Begin VB.CheckBox chkRepeat 
      Caption         =   "�̹����� ���������� ���� ���� ��Ǯ��"
      Height          =   255
      Left            =   8520
      TabIndex        =   24
      Top             =   5040
      Visible         =   0   'False
      Width           =   3975
   End
   Begin VB.FileListBox lvCateFiles 
      Height          =   270
      Left            =   7920
      TabIndex        =   23
      Top             =   5040
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.TextBox txtContent 
      Height          =   2415
      Left            =   3480
      MultiLine       =   -1  'True
      ScrollBars      =   2  '����
      TabIndex        =   8
      Top             =   1440
      Width           =   3495
   End
   Begin VB.ComboBox txtCategory 
      Height          =   300
      ItemData        =   "frmAddPlan.frx":0442
      Left            =   3480
      List            =   "frmAddPlan.frx":044F
      TabIndex        =   7
      Top             =   720
      Width           =   3495
   End
   Begin VB.TextBox txtLocation 
      Height          =   270
      Left            =   1080
      TabIndex        =   4
      Top             =   960
      Width           =   2295
   End
   Begin VB.TextBox txtTimeMin 
      Height          =   270
      Left            =   630
      MaxLength       =   2
      TabIndex        =   3
      Top             =   960
      Width           =   375
   End
   Begin VB.TextBox txtTimeHrs 
      Height          =   270
      Left            =   120
      MaxLength       =   2
      TabIndex        =   2
      ToolTipText     =   "24�� �������� �Է��մϴ�."
      Top             =   960
      Width           =   375
   End
   Begin VB.TextBox txtTitle 
      Height          =   270
      Left            =   120
      TabIndex        =   1
      Top             =   360
      Width           =   3255
   End
   Begin VB.CommandButton CancelButton 
      Cancel          =   -1  'True
      Caption         =   "���"
      Height          =   375
      Left            =   5280
      TabIndex        =   16
      Top             =   3960
      Width           =   1695
   End
   Begin VB.CommandButton OKButton 
      Caption         =   "�߰�(&A)"
      Height          =   375
      Left            =   3480
      TabIndex        =   0
      Top             =   3960
      Width           =   1695
   End
   Begin VB.Label Label10 
      Caption         =   "������:"
      Height          =   255
      Left            =   4800
      TabIndex        =   28
      Top             =   120
      Width           =   735
   End
   Begin VB.Label Label9 
      Caption         =   "�߿䵵:"
      Height          =   255
      Left            =   3480
      TabIndex        =   26
      Top             =   120
      Width           =   735
   End
   Begin VB.Label Label6 
      Caption         =   "����:"
      Height          =   255
      Left            =   3480
      TabIndex        =   22
      Top             =   1200
      Width           =   855
   End
   Begin VB.Label Label5 
      Caption         =   "�з�:"
      Height          =   255
      Left            =   3480
      TabIndex        =   21
      Top             =   480
      Width           =   495
   End
   Begin VB.Label Label4 
      Caption         =   "��ġ:"
      Height          =   255
      Left            =   1080
      TabIndex        =   20
      Top             =   720
      Width           =   975
   End
   Begin VB.Label Label3 
      Caption         =   " :"
      Height          =   255
      Left            =   480
      TabIndex        =   19
      Top             =   960
      Width           =   255
   End
   Begin VB.Label Label2 
      Caption         =   "�ð�:"
      Height          =   255
      Left            =   120
      TabIndex        =   18
      ToolTipText     =   "24�� �������� �Է��մϴ�."
      Top             =   720
      Width           =   855
   End
   Begin VB.Label Label1 
      Caption         =   "����:"
      Height          =   255
      Left            =   120
      TabIndex        =   17
      Top             =   120
      Width           =   1095
   End
   Begin VB.Menu mnuRepeatTypeSelect 
      Caption         =   "��Ǯ�� ��� ����"
      Visible         =   0   'False
      Begin VB.Menu mnuDescEW 
         Caption         =   "�� �� �ݺ�"
         Enabled         =   0   'False
      End
      Begin VB.Menu mnuRTSMonth 
         Caption         =   "�̹� ���� ���� ������(&M)"
      End
      Begin VB.Menu mnuRTSYear 
         Caption         =   "���ذ� ���� ������(&Y)"
      End
      Begin VB.Menu mnuRTSCustom 
         Caption         =   "����� ����(&C)..."
      End
      Begin VB.Menu mnuSep29482 
         Caption         =   "-"
      End
      Begin VB.Menu mnuDescED 
         Caption         =   "���� �ݺ�"
         Enabled         =   0   'False
      End
      Begin VB.Menu mnuEDTM 
         Caption         =   "�̹� ���� ���� ������(&O)"
      End
      Begin VB.Menu mnuEDTY 
         Caption         =   "���ذ� ���� ������(&E)"
      End
      Begin VB.Menu mnuEDCU 
         Caption         =   "����� ����(&U)..."
      End
      Begin VB.Menu mnuSep12948 
         Caption         =   "-"
      End
      Begin VB.Menu mnuDescEM 
         Caption         =   "�� �� �ݺ�"
         Enabled         =   0   'False
      End
      Begin VB.Menu mnuEMTY 
         Caption         =   "���ذ� ���� ������(&A)"
      End
      Begin VB.Menu mnuEMCU 
         Caption         =   "����� ����(&S)..."
      End
   End
End
Attribute VB_Name = "frmAddPlan"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit

Public CurrentDate As Date
Dim Year As Integer
Dim Month As Integer
Dim Day As Integer
Dim txtTime As String
Dim Category As Integer

Private Sub CancelButton_Click()
    If Confirm("���� �߰��� ����Ͻðڽ��ϱ�? �ӽ� ������� �ʽ��ϴ�.", "���� �߰�", Me) Then
        Unload Me
    End If
End Sub

Private Sub cmdCP_Click()
    On Error Resume Next
    If IsNumeric(txtCY.Text) = False Or IsNumeric(txtCM.Text) = False Or IsNumeric(txtCD.Text) = False Then
        MessageBox "��, ��, ���� ���� Ʋ���ϴ�. ���ڷ� �ٽ� �Է��Ͻʽÿ�.", "����", Me, 16
        Exit Sub
    End If
    
    Dim cy As Integer
    Dim CM As Integer
    Dim CD As Integer
    
    cy = CStr(CInt(txtCY.Text))
    CM = CStr(CInt(txtCM.Text))
    CD = CStr(CInt(txtCD.Text))
    
    Dim i As Integer
    For i = 0 To lvPlanCP.ListCount - 1
        If lvPlanCP.List(i) = cy & "-" & CM & "-" & CD Then
            MessageBox "�̹� �߰��� ��¥�Դϴ�.", "����", Me, 16
            Exit Sub
        End If
    Next i
    
    MkDir "C:\CALPLANS\" & cy & "\" & CM & "\" & CD
    
    lvPlanCP.AddItem cy & "-" & CM & "-" & CD
End Sub

Private Sub cmdDelAll_Click()
    On Error Resume Next
    If Confirm("�߰��� *���* ��¥�� �����Ͻðڽ��ϱ�?", "���", Me, 48) Then
        lvPlanCP.Clear
    End If
End Sub

Private Sub cmdDP_Click()
    On Error Resume Next
    If Confirm("�߰��� ������ ������ ��¥�� �߰����� �����ðڽ��ϱ�?", "���", Me) Then
        lvPlanCP.RemoveItem lvPlanCP.ListIndex
    End If
End Sub

Private Sub cmdRPT_Click()
    On Error Resume Next
    PopupMenu mnuRepeatTypeSelect, , , , mnuRTSMonth
End Sub

'Private Sub cmdTody_Click()
'    CurrentDate = Format(Now, "YYYY-M-D")
'    Form_Load
'End Sub
'
'Private Sub cmdTomr_Click()
'    CurrentDate = DateAdd("d", 1, CurrentDate)
'    Form_Load
'End Sub
'
'Private Sub cmdYest_Click()
'    CurrentDate = DateAdd("d", -1, CurrentDate)
'    Form_Load
'End Sub

Private Sub Form_Load()
    Year = Split(CurrentDate, "-")(0)
    Month = Split(CurrentDate, "-")(1)
    Day = Split(CurrentDate, "-")(2)
    'Me.Caption = "���� �߰� - " & Year & "�� " & Month & "�� " & Day & "��"
    
    txtCY.Text = Year
    txtCM.Text = Month
    txtCD.Text = Day
    
    On Error Resume Next
    MkDir "C:\CALPLANS\CTGORIES"
    
    lvCateFiles.Path = "C:\CALPLANS\CTGORIES"
    
    txtCategory.Clear
    txtCategory.AddItem "����"
    txtCategory.AddItem "������Ȱ"
    txtCategory.AddItem "���"
    txtCategory.AddItem "���"
    
    For Category = 0 To lvCateFiles.ListCount - 1
        txtCategory.AddItem lvCateFiles.List(Category)
    Next Category
    
    lvPlanCP.AddItem CStr(CInt(Year)) & "-" & CStr(CInt(Month)) & "-" & CStr(CInt(Day))
End Sub

Private Sub lvPlanCP_KeyDown(KeyCode As Integer, Shift As Integer)
    On Error Resume Next
    If (KeyCode = 46) Then
        cmdDP_Click
    End If
End Sub

Private Sub mnuEDCU_Click()
    On Error Resume Next
    Dim i As Integer
    Dim DT As String
    DT = txtCY.Text & "-" & txtCM.Text & "-" & txtCD.Text
    
    Dim CM As String
    CM = InputBox("�� ��ȣ�� �Է��Ͻʽÿ�.", "�˸�")
    
    If CM = "" Then
        Exit Sub
    End If
    
    If IsNumeric(CM) = False Or CM > 12 Or CM < txtCM.Text Then
        MessageBox "���� ���ڰ� �ƴϰų� 12�� �ʰ��ϰų� ���� �޺��� �۽��ϴ�.", "����", Me, 16
        Exit Sub
    End If
    
    For i = 1 To 48
        DT = DateAdd("d", 1, DT)
        If Split(DT, "-")(1) > CInt(CM) Then
            Exit Sub
        End If
        
        Dim j As Integer
        For j = 0 To lvPlanCP.ListCount - 1
            If lvPlanCP.List(j) = CStr(CInt(Split(DT, "-")(0))) & "-" & CStr(CInt(Split(DT, "-")(1))) & "-" & CStr(CInt(Split(DT, "-")(2))) Then GoTo forend
        Next j
        
        MkDir "C:\CALPLANS\" & CStr(CInt(Split(DT, "-")(0))) & "\" & CStr(CInt(Split(DT, "-")(1))) & "\" & CStr(CInt(Split(DT, "-")(2)))
        lvPlanCP.AddItem CStr(CInt(Split(DT, "-")(0))) & "-" & CStr(CInt(Split(DT, "-")(1))) & "-" & CStr(CInt(Split(DT, "-")(2)))
forend:
    Next i
End Sub

Private Sub mnuEDTM_Click()
    On Error Resume Next
    Dim i As Integer
    Dim DT As String
    DT = txtCY.Text & "-" & txtCM.Text & "-" & txtCD.Text
    
    For i = 1 To 33
        DT = DateAdd("d", 1, DT)
        If Split(DT, "-")(1) <> Split(CurrentDate, "-")(1) Then
            Exit Sub
        End If
        
        Dim j As Integer
        For j = 0 To lvPlanCP.ListCount - 1
            If lvPlanCP.List(j) = CStr(CInt(Split(DT, "-")(0))) & "-" & CStr(CInt(Split(DT, "-")(1))) & "-" & CStr(CInt(Split(DT, "-")(2))) Then GoTo forend
        Next j
        
        MkDir "C:\CALPLANS\" & CStr(CInt(Split(DT, "-")(0))) & "\" & CStr(CInt(Split(DT, "-")(1))) & "\" & CStr(CInt(Split(DT, "-")(2)))
        lvPlanCP.AddItem CStr(CInt(Split(DT, "-")(0))) & "-" & CStr(CInt(Split(DT, "-")(1))) & "-" & CStr(CInt(Split(DT, "-")(2)))
forend:
    Next i
End Sub

Private Sub mnuEDTY_Click()
    On Error Resume Next
    Dim i As Integer
    Dim DT As String
    DT = txtCY.Text & "-" & txtCM.Text & "-" & txtCD.Text
    
    For i = 1 To 377
        DT = DateAdd("d", 1, DT)
        If Split(DT, "-")(0) <> Split(CurrentDate, "-")(0) Then
            Exit Sub
        End If
        
        Dim j As Integer
        For j = 0 To lvPlanCP.ListCount - 1
            If lvPlanCP.List(j) = CStr(CInt(Split(DT, "-")(0))) & "-" & CStr(CInt(Split(DT, "-")(1))) & "-" & CStr(CInt(Split(DT, "-")(2))) Then GoTo forend
        Next j
        
        MkDir "C:\CALPLANS\" & CStr(CInt(Split(DT, "-")(0))) & "\" & CStr(CInt(Split(DT, "-")(1))) & "\" & CStr(CInt(Split(DT, "-")(2)))
        lvPlanCP.AddItem CStr(CInt(Split(DT, "-")(0))) & "-" & CStr(CInt(Split(DT, "-")(1))) & "-" & CStr(CInt(Split(DT, "-")(2)))
forend:
    Next i
End Sub

Private Sub mnuEMCU_Click()
    On Error Resume Next
    Dim i As Integer
    Dim DT As String
    DT = txtCY.Text & "-" & txtCM.Text & "-" & txtCD.Text
    
    Dim CM As String
    CM = InputBox("�� ��ȣ�� �Է��Ͻʽÿ�.", "�˸�")
    
    If CM = "" Then
        Exit Sub
    End If
    
    If IsNumeric(CM) = False Or CM > 12 Or CM < txtCM.Text Then
        MessageBox "���� ���ڰ� �ƴϰų� 12�� �ʰ��ϰų� ���� �޺��� �۽��ϴ�.", "����", Me, 16
        Exit Sub
    End If
    
    For i = 1 To 15
        Dim j As Integer
        For j = 1 To 35
            DT = DateAdd("d", 1, DT)
            If Split(DT, "-")(2) = txtCD.Text Then Exit For
        Next j
        
        If CInt(Split(DT, "-")(1)) > CInt(CM) Then Exit Sub
        
        If Split(DT, "-")(0) <> CInt(txtCY.Text) Then
            Exit Sub
        End If
        
        For j = 0 To lvPlanCP.ListCount - 1
            If lvPlanCP.List(j) = CStr(CInt(Split(DT, "-")(0))) & "-" & CStr(CInt(Split(DT, "-")(1))) & "-" & CStr(CInt(Split(DT, "-")(2))) Then GoTo forend
        Next j
        
        MkDir "C:\CALPLANS\" & CStr(CInt(Split(DT, "-")(0))) & "\" & CStr(CInt(Split(DT, "-")(1))) & "\" & CStr(CInt(Split(DT, "-")(2)))
        lvPlanCP.AddItem CStr(CInt(Split(DT, "-")(0))) & "-" & CStr(CInt(Split(DT, "-")(1))) & "-" & CStr(CInt(Split(DT, "-")(2)))
forend:
    Next i
End Sub

Private Sub mnuEMTY_Click()
    On Error Resume Next
    Dim i As Integer
    Dim DT As String
    DT = txtCY.Text & "-" & txtCM.Text & "-" & txtCD.Text
    
    For i = 1 To 15
        Dim j As Integer
        For j = 1 To 35
            DT = DateAdd("d", 1, DT)
            If Split(DT, "-")(2) = txtCD.Text Then Exit For
        Next j
        
        If Split(DT, "-")(0) <> CInt(txtCY.Text) Then
            Exit Sub
        End If
        
        For j = 0 To lvPlanCP.ListCount - 1
            If lvPlanCP.List(j) = CStr(CInt(Split(DT, "-")(0))) & "-" & CStr(CInt(Split(DT, "-")(1))) & "-" & CStr(CInt(Split(DT, "-")(2))) Then GoTo forend
        Next j
        
        MkDir "C:\CALPLANS\" & CStr(CInt(Split(DT, "-")(0))) & "\" & CStr(CInt(Split(DT, "-")(1))) & "\" & CStr(CInt(Split(DT, "-")(2)))
        lvPlanCP.AddItem CStr(CInt(Split(DT, "-")(0))) & "-" & CStr(CInt(Split(DT, "-")(1))) & "-" & CStr(CInt(Split(DT, "-")(2)))
forend:
    Next i
End Sub

Private Sub mnuRTSCustom_Click()
    On Error Resume Next
    Dim i As Integer
    Dim DT As String
    DT = txtCY.Text & "-" & txtCM.Text & "-" & txtCD.Text
    
    Dim CM As String
    CM = InputBox("�� ��ȣ�� �Է��Ͻʽÿ�.", "�˸�")
    
    If CM = "" Then
        Exit Sub
    End If
    
    If IsNumeric(CM) = False Or CM > 12 Or CM < txtCM.Text Then
        MessageBox "���� ���ڰ� �ƴϰų� 12�� �ʰ��ϰų� ����(����) �޺��� �۽��ϴ�.", "����", Me, 16
        Exit Sub
    End If
    
    For i = 1 To 48
        DT = DateAdd("d", 7, DT)
        If Split(DT, "-")(1) > CInt(CM) Then
            Exit Sub
        End If
        
        Dim j As Integer
        For j = 0 To lvPlanCP.ListCount - 1
            If lvPlanCP.List(j) = CStr(CInt(Split(DT, "-")(0))) & "-" & CStr(CInt(Split(DT, "-")(1))) & "-" & CStr(CInt(Split(DT, "-")(2))) Then GoTo forend
        Next j
        
        MkDir "C:\CALPLANS\" & CStr(CInt(Split(DT, "-")(0))) & "\" & CStr(CInt(Split(DT, "-")(1))) & "\" & CStr(CInt(Split(DT, "-")(2)))
        lvPlanCP.AddItem CStr(CInt(Split(DT, "-")(0))) & "-" & CStr(CInt(Split(DT, "-")(1))) & "-" & CStr(CInt(Split(DT, "-")(2)))
forend:
    Next i
End Sub

Private Sub mnuRTSMonth_Click()
    On Error Resume Next
    Dim i As Integer
    Dim DT As String
    DT = txtCY.Text & "-" & txtCM.Text & "-" & txtCD.Text
    
    For i = 1 To 5
        DT = DateAdd("d", 7, DT)
        If Split(DT, "-")(1) <> Split(CurrentDate, "-")(1) Then
            Exit Sub
        End If
        
        Dim j As Integer
        For j = 0 To lvPlanCP.ListCount - 1
            If lvPlanCP.List(j) = CStr(CInt(Split(DT, "-")(0))) & "-" & CStr(CInt(Split(DT, "-")(1))) & "-" & CStr(CInt(Split(DT, "-")(2))) Then GoTo forend
        Next j
        
        MkDir "C:\CALPLANS\" & CStr(CInt(Split(DT, "-")(0))) & "\" & CStr(CInt(Split(DT, "-")(1))) & "\" & CStr(CInt(Split(DT, "-")(2)))
        lvPlanCP.AddItem CStr(CInt(Split(DT, "-")(0))) & "-" & CStr(CInt(Split(DT, "-")(1))) & "-" & CStr(CInt(Split(DT, "-")(2)))
forend:
    Next i
End Sub

Private Sub mnuRTSYear_Click()
    On Error Resume Next
    Dim i As Integer
    Dim DT As String
    DT = txtCY.Text & "-" & txtCM.Text & "-" & txtCD.Text
    
    For i = 1 To 50
        DT = DateAdd("d", 7, DT)
        If Split(DT, "-")(0) <> Split(CurrentDate, "-")(0) Then
            Exit Sub
        End If
        
        Dim j As Integer
        For j = 0 To lvPlanCP.ListCount - 1
            If lvPlanCP.List(j) = CStr(CInt(Split(DT, "-")(0))) & "-" & CStr(CInt(Split(DT, "-")(1))) & "-" & CStr(CInt(Split(DT, "-")(2))) Then GoTo forend
        Next j
        
        MkDir "C:\CALPLANS\" & CStr(CInt(Split(DT, "-")(0))) & "\" & CStr(CInt(Split(DT, "-")(1))) & "\" & CStr(CInt(Split(DT, "-")(2)))
        lvPlanCP.AddItem CStr(CInt(Split(DT, "-")(0))) & "-" & CStr(CInt(Split(DT, "-")(1))) & "-" & CStr(CInt(Split(DT, "-")(2)))
forend:
    Next i
End Sub

Private Sub OKButton_Click()
    On Error Resume Next
    If lvPlanCP.ListCount < 1 Then
        MessageBox "������ �߰��� ��¥�� �����ϴ�.", "����", Me, 16
        Exit Sub
    End If
    '�Է°��� �˻��Ѵ�.
    If Mid$(txtTimeMin.Text, 1, 1) = "0" Then
        txtTimeMin.Text = Mid$(txtTimeMin.Text, 2, 1)
    End If
    If InStr(1, txtTitle.Text, "?") > 0 Or InStr(1, txtTitle.Text, "\") > 0 Or InStr(1, txtTitle.Text, "|") > 0 Or InStr(1, txtTitle.Text, ".") > 0 Or InStr(1, txtTitle.Text, "/") > 0 Or InStr(1, txtTitle.Text, "*") > 0 Or InStr(1, txtTitle.Text, ":") > 0 Or InStr(1, txtTitle.Text, ChrW$(34)) > 0 Then
        MessageBox "������ ���� �ùٸ��� �ʽ��ϴ�.", "�Է� �� ����", Me, 16
    End If
    If IsNumeric(txtTimeHrs.Text) = False Or IsNumeric(txtTimeMin.Text) = False Then
        MessageBox "�ð��� ���� �ùٸ��� �ʽ��ϴ�.", "�Է� �� ����", Me, 16
        Exit Sub
    End If
    If GetSetting("Calendar", "Options", "NoTimeCheck", 0) = 0 Then
        If txtTimeHrs.Text > 23 Or txtTimeMin.Text > 59 Or txtTimeHrs.Text < 0 Or txtTimeMin.Text < 0 Then
            MessageBox "�ð����� �ô� 0���� 23, ���� 0���� 59������ �����̿��� �մϴ�.", "�Է� �� ����", Me, 16
            Exit Sub
    End If
    End If
    If txtTitle.Text = "" Then
        MessageBox "������ ���� �ʼ��Դϴ�.", "�Է� �� ����", Me, 16
        Exit Sub
    End If
    If IsNumeric(txtImprt.Text) = False Or txtImprt.Text < 1 Or txtImprt.Text > 10 Then
        MessageBox "�߿䵵�� 1(����)���� 10(����)�������� �մϴ�.", "�Է� �� ����", Me, 16
        Exit Sub
    End If
    If txtCategory.Text = "" Then
        txtCategory.Text = "(�������� ����)"
    End If
    
    Dim dd As Integer
    Dim DCY As String
    Dim DCM As String
    Dim DCD As String
    
    For dd = 0 To lvPlanCP.ListCount - 1
        DCY = CStr(CInt(Split(lvPlanCP.List(dd), "-")(0)))
        DCM = CStr(CInt(Split(lvPlanCP.List(dd), "-")(1)))
        DCD = CStr(CInt(Split(lvPlanCP.List(dd), "-")(2)))
        
        '������ �߰��ϱ� ���� �ش� ������ ������ �����ϴ��� Ȯ���Ѵ�.
        If FileExists("C:\CALPLANS\" & DCY & "\" & DCM & "\" & DCD & "\" & txtTitle.Text) = True Then
            MessageBox "�ش� ������ ������ �Ϻ� ��¥�� �̹� �����մϴ�.", "ó�� �� ����", Me, 16
        End If
        
        '�ش� ������ �������� �˸��� ������ �����.
        'https://stackoverflow.com/questions/21108664/how-to-create-txt-file
        Dim iFileNo As Integer
        iFileNo = FreeFile
        '������ ����.
        Open "C:\CALPLANS\" & DCY & "\" & DCM & "\" & DCD & "\" & txtTitle.Text For Output As #iFileNo
        
        '������ ������ ���� �����Ƿ� �� ĭ����...
        Print #iFileNo, ""
        
        '������ �ݴ´�.
        Close #iFileNo
        
        '������Ʈ���� ������ ��Ÿ ������ �����Ѵ�.
        If txtTimeHrs.Text < 9 Then
            If txtTimeMin.Text < 9 Then
                txtTime = "0" & txtTimeHrs.Text & ":0" & txtTimeMin.Text
            Else
                txtTime = "0" & txtTimeHrs.Text & ":" & txtTimeMin.Text
            End If
        Else
            If txtTimeMin.Text < 9 Then
                txtTime = txtTimeHrs.Text & ":0" & txtTimeMin.Text
            Else
                txtTime = txtTimeHrs.Text & ":" & txtTimeMin.Text
            End If
        End If
        
        SaveSetting "Calendar", DCY & "\" & DCM & "\" & DCD, txtTitle.Text & "Time", txtTime
        SaveSetting "Calendar", DCY & "\" & DCM & "\" & DCD, txtTitle.Text & "Location", txtLocation.Text
        SaveSetting "Calendar", DCY & "\" & DCM & "\" & DCD, txtTitle.Text & "Cate", txtCategory.Text
        SaveSetting "Calendar", DCY & "\" & DCM & "\" & DCD, txtTitle.Text & "Cont", txtContent.Text
        SaveSetting "Calendar", DCY & "\" & DCM & "\" & DCD, txtTitle.Text & "Part", txtParticipants.Text
        SaveSetting "Calendar", DCY & "\" & DCM & "\" & DCD, txtTitle.Text & "Impt", txtImprt.Text
        
        frmPlans.LoadPlans
        
        '�з��� �߰��Ѵ�.
        
        If txtCategory.Text <> "����" And txtCategory.Text <> "������Ȱ" And txtCategory.Text <> "���" And txtCategory.Text <> "���" And txtCategory.Text <> "(�������� ����)" Then
            'https://stackoverflow.com/questions/21108664/how-to-create-txt-file
            iFileNo = FreeFile
            '������ ����.
            
            Open "C:\CALPLANS\CTGORIES\" & txtCategory.Text For Output As #iFileNo
            
            '������ ������ ���� �����Ƿ� �� ĭ����...
            Print #iFileNo, ""
            
            '������ �ݴ´�.
            Close #iFileNo
        End If
    Next dd
    
    frmMain.lvTodaysPlan.Refresh
    frmMain.lvTodaysPlans.Refresh
    frmMain.lvTmrPlans.Refresh
    
    Unload Me
End Sub

Private Sub txtTimeHrs_Change()
    On Error Resume Next
    If Len(txtTimeHrs.Text) = 2 Or (txtTimeHrs.Text >= 3 And txtTimeHrs.Text <= 9) Then
        txtTimeMin.SetFocus '�� �Է� ĭ�� ä��� ���� ĭ�� Ȱ��ȭ�Ѵ�.
    End If
End Sub

Private Sub txtTimeMin_Change()
    If txtTimeMin.Text = "" Then txtTimeHrs.SetFocus
End Sub

Private Sub txtTimeMin_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = 8 Then
        If txtTimeMin.Text = "" Then txtTimeHrs.SetFocus
    End If
End Sub
