VERSION 5.00
Begin VB.Form frmPlanCategories 
   BorderStyle     =   3  'ũ�� ���� ��ȭ ����
   Caption         =   "���� �з� ���"
   ClientHeight    =   3030
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   4560
   Icon            =   "frmPlanCategories.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  '������ ���
   Begin VB.FileListBox lstCustomCategories 
      Height          =   2790
      Left            =   2280
      TabIndex        =   1
      Top             =   120
      Width           =   2175
   End
   Begin VB.ListBox lstBasicCategories 
      Height          =   2760
      ItemData        =   "frmPlanCategories.frx":000C
      Left            =   120
      List            =   "frmPlanCategories.frx":0013
      TabIndex        =   0
      Top             =   120
      Width           =   2175
   End
End
Attribute VB_Name = "frmPlanCategories"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Form_Load()
    On Error Resume Next
    MkDir "C:\CALPLANS"
    MkDir "C:\CALPLANS\CTGORIES"
    
    lstBasicCategories.Clear
    
    lstBasicCategories.AddItem "����"
    lstBasicCategories.AddItem "������Ȱ"
    lstBasicCategories.AddItem "���"
    lstBasicCategories.AddItem "���"
    
    lstCustomCategories.Path = "C:\CALPLANS\CTGORIES"
End Sub
