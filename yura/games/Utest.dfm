﻿object Ftest: TFtest
  Left = 0
  Top = 0
  Caption = 'Test'
  ClientHeight = 663
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 385
    Align = alTop
    TabOrder = 0
    object Должность: TLabel
      Left = 0
      Top = 43
      Width = 57
      Height = 13
      Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
    end
    object Label2: TLabel
      Left = 0
      Top = 82
      Width = 31
      Height = 13
      Caption = #1055#1088#1080#1077#1084
    end
    object Label1: TLabel
      Left = 6
      Top = 291
      Width = 75
      Height = 13
      Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1076#1086' '
    end
    object Label3: TLabel
      Left = 8
      Top = 318
      Width = 25
      Height = 13
      Caption = #1069#1090#1072#1087
    end
    object Label4: TLabel
      Left = 10
      Top = 158
      Width = 23
      Height = 13
      Caption = 'work'
    end
    object LabeledEdit1: TLabeledEdit
      Left = 0
      Top = 16
      Width = 635
      Height = 21
      EditLabel.Width = 20
      EditLabel.Height = 13
      EditLabel.Caption = #1060#1080#1086
      TabOrder = 0
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 80
      Top = 43
      Width = 553
      Height = 21
      KeyField = 'N_Dol'
      ListField = 'Nam_dol'
      ListSource = DM1.DSdol
      TabOrder = 1
    end
    object LabeledEdit2: TLabeledEdit
      Left = 0
      Top = 120
      Width = 635
      Height = 21
      EditLabel.Width = 44
      EditLabel.Height = 13
      EditLabel.Caption = #1058#1077#1083#1077#1092#1086#1085
      TabOrder = 2
    end
    object DateTimePicker2: TDateTimePicker
      Left = 47
      Top = 82
      Width = 586
      Height = 21
      Date = 44160.986221192130000000
      Time = 44160.986221192130000000
      TabOrder = 3
    end
    object LabeledEdit4: TLabeledEdit
      Left = 8
      Top = 216
      Width = 625
      Height = 21
      EditLabel.Width = 93
      EditLabel.Height = 13
      EditLabel.Caption = #1057#1090#1072#1090#1091#1089' '#1088#1072#1073#1086#1090#1085#1080#1082#1072
      TabOrder = 4
    end
    object DateTimePicker1: TDateTimePicker
      Left = 87
      Top = 291
      Width = 546
      Height = 21
      Date = 44160.986221192130000000
      Time = 44160.986221192130000000
      TabOrder = 5
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 82
      Top = 318
      Width = 553
      Height = 21
      KeyField = 'N_Etap'
      ListField = 'Nam_etap'
      ListSource = DM1.DSetap
      TabOrder = 6
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 47
      Top = 158
      Width = 553
      Height = 21
      KeyField = 'N_Work'
      ListField = 'Nam_work'
      ListSource = DM1.DSwork
      TabOrder = 7
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 622
    Width = 635
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = 224
    ExplicitTop = 120
    ExplicitWidth = 185
    object Button1: TButton
      Left = 280
      Top = 8
      Width = 75
      Height = 25
      Caption = #1042#1074#1086#1076
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 385
    Width = 635
    Height = 237
    Align = alClient
    DataSource = DM1.DStest
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
