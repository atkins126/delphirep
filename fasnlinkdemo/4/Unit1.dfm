object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 299
    Align = alClient
    TabOrder = 0
    object LabeledEdit4: TLabeledEdit
      Left = 32
      Top = 16
      Width = 121
      Height = 21
      EditLabel.Width = 10
      EditLabel.Height = 13
      EditLabel.Caption = #1040' '
      TabOrder = 0
    end
    object LabeledEdit2: TLabeledEdit
      Left = 32
      Top = 72
      Width = 121
      Height = 21
      EditLabel.Width = 6
      EditLabel.Height = 13
      EditLabel.Caption = 'B'
      TabOrder = 1
    end
    object LabeledEdit3: TLabeledEdit
      Left = 32
      Top = 124
      Width = 121
      Height = 21
      EditLabel.Width = 7
      EditLabel.Height = 13
      EditLabel.Caption = 'C'
      TabOrder = 2
    end
    object LabeledEdit1: TLabeledEdit
      Left = 32
      Top = 180
      Width = 121
      Height = 21
      EditLabel.Width = 7
      EditLabel.Height = 13
      EditLabel.Caption = 'D'
      TabOrder = 3
    end
  end
  object Memo1: TMemo
    Left = 159
    Top = 16
    Width = 468
    Height = 275
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object MainMenu1: TMainMenu
    Left = 312
    Top = 152
    object N1: TMenuItem
      Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
      OnClick = N1Click
    end
    object fasm1: TMenuItem
      Caption = #1088#1072#1089#1089#1095#1077#1090' '#1074' fasm'
      object N11: TMenuItem
        Caption = #1060#1086#1088#1084#1091#1083#1072'1'
        OnClick = N11Click
      end
    end
    object N2: TMenuItem
      Caption = #1054#1095#1080#1089#1090#1082#1072
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N3Click
    end
  end
end
