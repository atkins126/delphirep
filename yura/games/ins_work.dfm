object Fins_work: TFins_work
  Left = 0
  Top = 0
  Caption = #1042#1074#1086#1076' '#1088#1072#1073#1086#1099
  ClientHeight = 473
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 635
    Height = 97
    Align = alTop
    Caption = #1042#1093#1086#1076#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
    TabOrder = 0
    object Label1: TLabel
      Left = 2
      Top = 51
      Width = 75
      Height = 13
      Caption = #1058#1088#1091#1076#1086#1077#1084#1082#1086#1089#1090#1100' '
    end
    object Label2: TLabel
      Left = 3
      Top = 70
      Width = 63
      Height = 13
      Caption = #1053#1086#1084#1077#1088' '#1101#1090#1072#1087#1072
    end
    object LabeledEdit1: TLabeledEdit
      Left = 96
      Top = 16
      Width = 536
      Height = 21
      EditLabel.Width = 94
      EditLabel.Height = 13
      EditLabel.Caption = #1053#1072#1079#1079#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090#1099
      LabelPosition = lpLeft
      TabOrder = 0
    end
    object DateTimePicker1: TDateTimePicker
      Left = 96
      Top = 43
      Width = 536
      Height = 21
      Date = 44131.993537060180000000
      Time = 44131.993537060180000000
      TabOrder = 1
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 72
      Top = 70
      Width = 560
      Height = 21
      KeyField = 'N_Etap'
      ListField = 'Nam_etap'
      ListSource = DM1.DSetap
      TabOrder = 2
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 430
    Width = 635
    Height = 43
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 256
    object Button1: TButton
      Left = 2
      Top = 15
      Width = 631
      Height = 26
      Align = alClient
      Caption = #1042#1074#1086#1076
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 97
    Width = 635
    Height = 333
    Align = alClient
    Caption = #1042#1099#1093#1086#1076#1085#1099#1077' '#1076#1072#1085#1085#1099#1077' '
    TabOrder = 2
    ExplicitLeft = 240
    ExplicitTop = 128
    ExplicitWidth = 185
    ExplicitHeight = 105
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 631
      Height = 316
      Align = alClient
      DataSource = DM1.DSwork
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
end
