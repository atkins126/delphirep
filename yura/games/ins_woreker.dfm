object fins_woreker: Tfins_woreker
  Left = 0
  Top = 0
  Caption = #1042#1074#1086#1076' '#1089#1074#1077#1076#1080#1085#1080#1081' '#1086' '#1088#1072#1073#1086#1090#1085#1080#1082#1077
  ClientHeight = 508
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
    Top = 0
    Width = 635
    Height = 153
    Align = alTop
    Caption = #1042#1093#1086#1076#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
    TabOrder = 0
    object Label2: TLabel
      Left = 6
      Top = 43
      Width = 63
      Height = 13
      Caption = #1044#1086#1088#1083#1078#1085#1086#1089#1090#1100
    end
    object Label1: TLabel
      Left = -9
      Top = 124
      Width = 123
      Height = 13
      Caption = #1076#1072#1090#1072' '#1087#1088#1080#1077#1084#1072' '#1085#1072' '#1088#1072#1073#1086#1090#1091
    end
    object LabeledEdit1: TLabeledEdit
      Left = 96
      Top = 16
      Width = 536
      Height = 21
      EditLabel.Width = 80
      EditLabel.Height = 13
      EditLabel.Caption = #1060#1080#1086'  '#1088#1072#1073#1086#1090#1085#1080#1082#1072
      LabelPosition = lpLeft
      TabOrder = 0
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 75
      Top = 43
      Width = 560
      Height = 21
      KeyField = 'N_Etap'
      ListField = 'Nam_etap'
      ListSource = DM1.DSetap
      TabOrder = 1
    end
    object DateTimePicker1: TDateTimePicker
      Left = 120
      Top = 124
      Width = 515
      Height = 21
      Date = 44131.993537060180000000
      Time = 44131.993537060180000000
      TabOrder = 2
    end
    object LabeledEdit2: TLabeledEdit
      Left = 75
      Top = 70
      Width = 560
      Height = 21
      EditLabel.Width = 44
      EditLabel.Height = 13
      EditLabel.Caption = #1058#1077#1083#1077#1092#1086#1085
      LabelPosition = lpLeft
      TabOrder = 3
    end
    object LabeledEdit3: TLabeledEdit
      Left = 75
      Top = 97
      Width = 560
      Height = 21
      EditLabel.Width = 34
      EditLabel.Height = 13
      EditLabel.Caption = #1089#1090#1072#1090#1091#1089
      LabelPosition = lpLeft
      TabOrder = 4
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 465
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
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 153
    Width = 635
    Height = 312
    Align = alClient
    Caption = #1042#1099#1093#1086#1076#1085#1099#1077' '#1076#1072#1085#1085#1099#1077' '
    TabOrder = 2
    ExplicitTop = -34
    ExplicitHeight = 333
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 631
      Height = 295
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
