object Form1: TForm1
  Left = 395
  Top = 216
  BorderStyle = bsDialog
  Caption = #1055#1077#1088#1077#1073#1086#1088' '#1087#1072#1088#1086#1083#1077#1081
  ClientHeight = 365
  ClientWidth = 471
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 159
    Top = 331
    Width = 3
    Height = 13
  end
  object Label2: TLabel
    Left = 8
    Top = 331
    Width = 123
    Height = 13
    Caption = #1055#1072#1088#1086#1083#1077#1081' '#1079#1072#1075#1088#1091#1078#1077#1085#1086'('#1096#1090'):'
  end
  object Label3: TLabel
    Left = 159
    Top = 299
    Width = 3
    Height = 13
  end
  object Label4: TLabel
    Left = 8
    Top = 299
    Width = 149
    Height = 13
    Caption = #1057#1082#1086#1088#1086#1089#1090#1100' '#1087#1077#1088#1077#1073#1086#1088#1072'('#1087#1072#1088'/'#1089#1077#1082'):'
  end
  object Label5: TLabel
    Left = 159
    Top = 315
    Width = 3
    Height = 13
  end
  object Label6: TLabel
    Left = 8
    Top = 315
    Width = 123
    Height = 13
    Caption = #1055#1072#1088#1086#1083#1077#1081' '#1087#1088#1086#1074#1077#1088#1077#1085#1086'('#1096#1090'):'
  end
  object Label7: TLabel
    Left = 8
    Top = 40
    Width = 85
    Height = 13
    Caption = #1057#1087#1080#1089#1086#1082' '#1087#1072#1088#1086#1083#1077#1081':'
  end
  object Label8: TLabel
    Left = 8
    Top = 283
    Width = 87
    Height = 13
    Caption = #1058#1077#1082#1091#1097#1080#1081' '#1087#1072#1088#1086#1083#1100':'
  end
  object Label9: TLabel
    Left = 159
    Top = 284
    Width = 3
    Height = 13
  end
  object Label10: TLabel
    Left = 8
    Top = 346
    Width = 114
    Height = 13
    Caption = #1055#1088#1086#1096#1083#1086' '#1074#1088#1077#1084#1077#1085#1080'('#1089#1077#1082'):'
  end
  object Label11: TLabel
    Left = 159
    Top = 344
    Width = 3
    Height = 13
  end
  object Label12: TLabel
    Left = 357
    Top = 49
    Width = 54
    Height = 13
    Caption = #1044#1080#1072#1087#1072#1079#1086#1085':'
  end
  object Label13: TLabel
    Left = 321
    Top = 64
    Width = 16
    Height = 13
    Caption = #1054#1090':'
  end
  object Label14: TLabel
    Left = 320
    Top = 104
    Width = 18
    Height = 13
    Caption = #1044#1086':'
  end
  object Label15: TLabel
    Left = 323
    Top = 144
    Width = 107
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1072#1088#1086#1083#1077#1081':'
  end
  object Button1: TButton
    Left = 8
    Top = 171
    Width = 305
    Height = 33
    Caption = #1057#1090#1072#1088#1090
    TabOrder = 1
    OnClick = Button1Click
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 243
    Width = 305
    Height = 33
    DragCursor = crHandPoint
    Smooth = True
    Step = 1
    TabOrder = 0
  end
  object Memo1: TMemo
    Left = 8
    Top = 59
    Width = 305
    Height = 110
    ScrollBars = ssVertical
    TabOrder = 4
  end
  object Button2: TButton
    Left = 112
    Top = 8
    Width = 97
    Height = 25
    Caption = #1054#1090#1082#1088#1099#1090#1100' '#1089#1083#1086#1074#1072#1088#1100
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 8
    Width = 97
    Height = 25
    Caption = #1054#1090#1082#1088#1099#1090#1100' '#1092#1072#1081#1083
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 8
    Top = 203
    Width = 305
    Height = 33
    Caption = #1057#1090#1086#1087
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 216
    Top = 8
    Width = 97
    Height = 25
    Caption = #1042#1099#1073#1088#1072#1090#1100' '#1082#1072#1090#1086#1083#1086#1075
    TabOrder = 6
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 320
    Top = 192
    Width = 137
    Height = 25
    Caption = #1057#1083#1091#1095#1072#1081#1085#1099#1077' '#1087#1072#1088#1086#1083#1080
    TabOrder = 7
    OnClick = Button6Click
  end
  object UpDown1: TUpDown
    Left = 441
    Top = 79
    Width = 16
    Height = 25
    Associate = Edit1
    Max = 1000
    TabOrder = 8
  end
  object Edit1: TEdit
    Left = 320
    Top = 79
    Width = 121
    Height = 25
    TabOrder = 9
    Text = '0'
  end
  object Edit2: TEdit
    Left = 320
    Top = 119
    Width = 121
    Height = 25
    TabOrder = 10
    Text = '0'
  end
  object Edit3: TEdit
    Left = 320
    Top = 159
    Width = 121
    Height = 25
    TabOrder = 11
    Text = '0'
  end
  object UpDown2: TUpDown
    Left = 441
    Top = 119
    Width = 16
    Height = 25
    Associate = Edit2
    Max = 10000
    TabOrder = 12
  end
  object UpDown3: TUpDown
    Left = 441
    Top = 159
    Width = 16
    Height = 25
    Associate = Edit3
    Max = 10000
    TabOrder = 13
  end
  object OpenDialog1: TOpenDialog
    Left = 264
    Top = 59
  end
  object OpenDialog2: TOpenDialog
    Left = 264
    Top = 91
  end
  object DFUnRar1: TDFUnRar
    CanProgress = True
    Mode = DFRAR_EXTRACT
    OverrideEvent = OR_ALWAYS
    PromptForPass = False
    PromptForVolumn = False
    StopProcessing = False
    Left = 8
    Top = 8
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 264
    Top = 123
  end
  object Timer2: TTimer
    Interval = 1
    OnTimer = Timer2Timer
    Left = 264
    Top = 155
  end
end
