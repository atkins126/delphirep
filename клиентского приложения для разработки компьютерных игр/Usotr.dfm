object Fsotr: TFsotr
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
  ClientHeight = 729
  ClientWidth = 1008
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 1008
    Height = 57
    Align = alTop
    Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 48
      Height = 13
      Caption = #1088#1072#1073#1086#1090#1085#1080#1082
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 2
      Top = 15
      Width = 1004
      Height = 21
      Align = alClient
      KeyField = 'N_Rab'
      ListField = 'Fio'
      ListSource = dM.DSrabotnik
      TabOrder = 0
      OnClick = DBLookupComboBox1Click
      ExplicitLeft = 88
      ExplicitTop = 16
      ExplicitWidth = 905
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 57
    Width = 1008
    Height = 672
    Align = alClient
    Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
    TabOrder = 1
    object GroupBox3: TGroupBox
      Left = 2
      Top = 15
      Width = 1004
      Height = 202
      Align = alTop
      Caption = #1072#1082#1090#1091#1072#1083#1100#1085#1099#1077
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 2
        Top = 15
        Width = 1000
        Height = 81
        Align = alClient
        DataSource = dM.DStasklist
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Panel1: TPanel
        Left = 2
        Top = 96
        Width = 1000
        Height = 104
        Align = alBottom
        TabOrder = 1
        object Button1: TButton
          Left = 1
          Top = 78
          Width = 998
          Height = 25
          Align = alBottom
          Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100' '
          TabOrder = 0
          OnClick = Button1Click
          ExplicitLeft = 176
          ExplicitTop = 75
          ExplicitWidth = 75
        end
        object GroupBox5: TGroupBox
          Left = 1
          Top = 1
          Width = 998
          Height = 48
          Align = alTop
          Caption = #1044#1072#1090#1072' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103' '#1079#1072#1076#1072#1085#1080#1103
          TabOrder = 1
          object DateTimePicker1: TDateTimePicker
            Left = 2
            Top = 15
            Width = 994
            Height = 21
            Align = alTop
            Date = 44166.665319085650000000
            Time = 44166.665319085650000000
            TabOrder = 0
            ExplicitLeft = 424
            ExplicitTop = 24
            ExplicitWidth = 186
          end
        end
      end
    end
    object Panel2: TPanel
      Left = 2
      Top = 629
      Width = 1004
      Height = 41
      Align = alBottom
      TabOrder = 1
      ExplicitLeft = 416
      ExplicitTop = 320
      ExplicitWidth = 185
      object Button2: TButton
        Left = 1
        Top = 1
        Width = 1002
        Height = 39
        Align = alClient
        Caption = #1047#1072#1082#1088#1099#1090#1100
        TabOrder = 0
        OnClick = Button2Click
        ExplicitLeft = 424
        ExplicitTop = 6
        ExplicitWidth = 75
        ExplicitHeight = 25
      end
    end
    object GroupBox4: TGroupBox
      Left = 2
      Top = 217
      Width = 1004
      Height = 412
      Align = alClient
      Caption = #1042#1099#1087#1086#1083#1085#1077#1085#1085#1099#1077
      TabOrder = 2
      object DBGrid2: TDBGrid
        Left = 2
        Top = 15
        Width = 1000
        Height = 395
        Align = alClient
        DataSource = dM.Dsvz
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
end
