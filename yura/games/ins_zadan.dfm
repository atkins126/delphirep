object Fins_zadan: TFins_zadan
  Left = 0
  Top = 0
  Caption = #1042#1074#1086#1076' '#1079#1072#1076#1072#1085#1080#1103
  ClientHeight = 570
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
    Height = 233
    Align = alTop
    Caption = #1042#1093#1086#1076#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
    TabOrder = 0
    object Label1: TLabel
      Left = 3
      Top = 16
      Width = 90
      Height = 13
      Caption = #1057#1088#1086#1082' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103
    end
    object Label2: TLabel
      Left = 28
      Top = 43
      Width = 48
      Height = 13
      Caption = #1088#1072#1073#1086#1090#1085#1080#1082
    end
    object Label3: TLabel
      Left = 11
      Top = 97
      Width = 65
      Height = 13
      Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072
    end
    object Label5: TLabel
      Left = 40
      Top = 139
      Width = 36
      Height = 13
      Caption = #1087#1088#1086#1077#1082#1090
    end
    object Label6: TLabel
      Left = 40
      Top = 174
      Width = 36
      Height = 13
      Caption = #1088#1072#1073#1086#1090#1072
    end
    object DateTimePicker1: TDateTimePicker
      Left = 99
      Top = 16
      Width = 533
      Height = 21
      Date = 44131.993537060180000000
      Time = 44131.993537060180000000
      TabOrder = 0
    end
    object LabeledEdit2: TLabeledEdit
      Left = 99
      Top = 70
      Width = 526
      Height = 21
      EditLabel.Width = 81
      EditLabel.Height = 13
      EditLabel.Caption = #1057#1090#1072#1090#1091#1089' '#1079#1072#1076#1072#1085#1080#1103
      LabelPosition = lpLeft
      TabOrder = 1
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 99
      Top = 43
      Width = 533
      Height = 21
      KeyField = 'N_Rab'
      ListField = 'Fio'
      ListSource = DM1.DSwoker
      TabOrder = 2
    end
    object DateTimePicker2: TDateTimePicker
      Left = 99
      Top = 97
      Width = 526
      Height = 21
      Date = 44132.492727638890000000
      Time = 44132.492727638890000000
      TabOrder = 3
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 99
      Top = 131
      Width = 533
      Height = 21
      KeyField = 'N_Proekta'
      ListField = 'Nam_proect'
      ListSource = DM1.DSproect
      TabOrder = 4
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 99
      Top = 174
      Width = 533
      Height = 21
      KeyField = 'N_Work'
      ListField = 'Nam_work'
      ListSource = DM1.DSwork
      TabOrder = 5
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 527
    Width = 635
    Height = 43
    Align = alBottom
    TabOrder = 1
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
    Top = 193
    Width = 635
    Height = 334
    Caption = #1042#1099#1093#1086#1076#1085#1099#1077' '#1076#1072#1085#1085#1099#1077' '
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 631
      Height = 317
      Align = alClient
      DataSource = DM1.DSzadanie
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
end
