object Fmain: TFmain
  Left = 0
  Top = 0
  Caption = #1043#1083#1072#1074#1085#1072#1103' '#1092#1086#1088#1084#1072
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 248
    Width = 635
    Height = 51
    Align = alBottom
    TabOrder = 0
    object Button1: TButton
      Left = 2
      Top = 15
      Width = 247
      Height = 34
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' xml'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 336
      Top = 14
      Width = 299
      Height = 34
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' xls'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 0
    Width = 635
    Height = 248
    Align = alClient
    TabOrder = 1
    ExplicitTop = -6
    object Memo1: TMemo
      Left = 2
      Top = 15
      Width = 631
      Height = 231
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 232
      ExplicitTop = 128
      ExplicitWidth = 185
      ExplicitHeight = 89
    end
  end
  object OD1: TOpenDialog
    Left = 312
    Top = 152
  end
  object XMLDocument1: TXMLDocument
    Left = 448
    Top = 152
    DOMVendorDesc = 'MSXML'
  end
  object SD1: TSaveDialog
    Filter = 'xls|*.xls'
    Left = 160
    Top = 144
  end
end
