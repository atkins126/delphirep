object Fmain: TFmain
  Left = 0
  Top = 0
  Caption = #1043#1072#1083#1074#1085#1072#1103' '#1092#1086#1088#1084#1072
  ClientHeight = 767
  ClientWidth = 1058
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1058
    Height = 767
    ActivePage = TabSheet5
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1042#1074#1086#1076' '#1087#1088#1080#1103#1080#1085#1099
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 1050
        Height = 81
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1099#1093
        TabOrder = 0
        DesignSize = (
          1050
          81)
        object LabeledEdit1: TLabeledEdit
          Left = 3
          Top = 40
          Width = 1021
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 106
          EditLabel.Height = 13
          EditLabel.Caption = #1055#1056#1048#1095#1080#1085#1072' '#1086#1090#1095#1080#1089#1083#1077#1085#1080#1103
          TabOrder = 0
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 692
        Width = 1050
        Height = 47
        Align = alBottom
        TabOrder = 1
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
      object GroupBox3: TGroupBox
        Left = 0
        Top = 81
        Width = 1050
        Height = 611
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 1046
          Height = 594
          Align = alClient
          DataSource = fDM.DSprich
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1042#1074#1086#1076' '#1090#1080#1087#1072' '#1082#1083#1072#1089#1089#1072
      ImageIndex = 1
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 1050
        Height = 57
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        object LabeledEdit2: TLabeledEdit
          Left = 32
          Top = 30
          Width = 577
          Height = 21
          EditLabel.Width = 89
          EditLabel.Height = 13
          EditLabel.Caption = #1042#1074#1086#1076' '#1090#1080#1087#1072' '#1082#1083#1072#1089#1089#1072
          TabOrder = 0
        end
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 700
        Width = 1050
        Height = 39
        Align = alBottom
        TabOrder = 1
        object Button2: TButton
          Left = 2
          Top = 15
          Width = 1046
          Height = 22
          Align = alClient
          Caption = #1042#1074#1086#1076
          TabOrder = 0
          OnClick = Button2Click
        end
      end
      object GroupBox6: TGroupBox
        Left = 0
        Top = 57
        Width = 1050
        Height = 643
        Align = alClient
        Caption = #1074#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        object DBGrid2: TDBGrid
          Left = 2
          Top = 15
          Width = 1046
          Height = 626
          Align = alClient
          DataSource = fDM.DStype_class
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1042#1074#1086#1076' '#1082#1083#1072#1089#1089#1072
      ImageIndex = 2
      object GroupBox7: TGroupBox
        Left = 0
        Top = 177
        Width = 1050
        Height = 523
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1099#1093
        TabOrder = 0
        object DBGrid3: TDBGrid
          Left = 2
          Top = 15
          Width = 1046
          Height = 506
          Align = alClient
          DataSource = fDM.Dsklass
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
      object GroupBox8: TGroupBox
        Left = 0
        Top = 700
        Width = 1050
        Height = 39
        Align = alBottom
        TabOrder = 1
        object Button3: TButton
          Left = 2
          Top = 15
          Width = 1046
          Height = 22
          Align = alClient
          Caption = #1042#1074#1086#1076
          TabOrder = 0
          OnClick = Button3Click
        end
      end
      object GroupBox9: TGroupBox
        Left = 0
        Top = 0
        Width = 1050
        Height = 177
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1099#1093
        TabOrder = 2
        DesignSize = (
          1050
          177)
        object Label1: TLabel
          Left = 24
          Top = 146
          Width = 18
          Height = 13
          Caption = #1058#1080#1087
        end
        object LabeledEdit3: TLabeledEdit
          Left = 24
          Top = 119
          Width = 1008
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 71
          EditLabel.Height = 13
          EditLabel.Caption = #1052#1077#1089#1090' '#1074' '#1082#1083#1072#1089#1089#1077
          TabOrder = 0
        end
        object LabeledEdit4: TLabeledEdit
          Left = 24
          Top = 77
          Width = 1016
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 73
          EditLabel.Height = 13
          EditLabel.Caption = #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100
          TabOrder = 1
        end
        object LabeledEdit5: TLabeledEdit
          Left = 24
          Top = 32
          Width = 1016
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 32
          EditLabel.Height = 13
          EditLabel.Caption = #1050#1083#1072#1089#1089' '
          TabOrder = 2
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 61
          Top = 146
          Width = 971
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          KeyField = 'TYpe_claass_id'
          ListField = 'naim_tip'
          ListSource = fDM.DStype_class
          TabOrder = 3
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1042#1042#1054#1086#1076' '#1091#1095#1077#1085#1080#1082#1072' '
      ImageIndex = 3
      object GroupBox10: TGroupBox
        Left = 0
        Top = 489
        Width = 1050
        Height = 199
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        object DBGrid4: TDBGrid
          Left = 2
          Top = 15
          Width = 1046
          Height = 182
          Align = alClient
          DataSource = fDM.DSUchen
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
      object GroupBox11: TGroupBox
        Left = 0
        Top = 0
        Width = 1050
        Height = 489
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 1
        DesignSize = (
          1050
          489)
        object Label2: TLabel
          Left = 24
          Top = 146
          Width = 79
          Height = 13
          Caption = #1076#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
        end
        object Label3: TLabel
          Left = 15
          Top = 274
          Width = 67
          Height = 13
          Caption = #1076#1072#1090#1072'  '#1087#1088#1080#1077#1084#1072
        end
        object Label4: TLabel
          Left = 15
          Top = 314
          Width = 74
          Height = 13
          Caption = #1076#1072#1090#1072'  '#1074#1099#1087#1091#1089#1082#1072
        end
        object Label5: TLabel
          Left = 15
          Top = 464
          Width = 32
          Height = 13
          Caption = #1050#1083#1072#1089#1089' '
        end
        object LabeledEdit6: TLabeledEdit
          Left = 24
          Top = 32
          Width = 1016
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 20
          EditLabel.Height = 13
          EditLabel.Caption = #1060#1080#1086
          TabOrder = 0
        end
        object LabeledEdit7: TLabeledEdit
          Left = 24
          Top = 67
          Width = 1016
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 83
          EditLabel.Height = 13
          EditLabel.Caption = #1058#1077#1083#1077#1092#1086#1085' '#1084#1072#1090#1077#1088#1080
          TabOrder = 1
        end
        object LabeledEdit8: TLabeledEdit
          Left = 31
          Top = 107
          Width = 1016
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 31
          EditLabel.Height = 13
          EditLabel.Caption = #1040#1076#1088#1077#1089
          TabOrder = 2
        end
        object DateTimePicker1: TDateTimePicker
          Left = 109
          Top = 146
          Width = 938
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Date = 44159.995505358800000000
          Time = 44159.995505358800000000
          TabOrder = 3
        end
        object LabeledEdit9: TLabeledEdit
          Left = 31
          Top = 187
          Width = 1016
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 19
          EditLabel.Height = 13
          EditLabel.Caption = #1055#1086#1083
          TabOrder = 4
        end
        object LabeledEdit10: TLabeledEdit
          Left = 31
          Top = 235
          Width = 1016
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 87
          EditLabel.Height = 13
          EditLabel.Caption = #1043#1088#1091#1087#1087#1072' '#1079#1076#1086#1088#1086#1074#1100#1103
          TabOrder = 5
        end
        object DateTimePicker2: TDateTimePicker
          Left = 104
          Top = 274
          Width = 938
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Date = 44159.995505358800000000
          Time = 44159.995505358800000000
          TabOrder = 6
        end
        object DateTimePicker3: TDateTimePicker
          Left = 80
          Top = 314
          Width = 938
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Date = 44159.995505358800000000
          Time = 44159.995505358800000000
          TabOrder = 7
        end
        object LabeledEdit11: TLabeledEdit
          Left = 15
          Top = 357
          Width = 1016
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 59
          EditLabel.Height = 13
          EditLabel.Caption = #1060#1080#1086' '#1084#1072#1090#1077#1088#1080
          TabOrder = 8
        end
        object LabeledEdit12: TLabeledEdit
          Left = 15
          Top = 397
          Width = 1016
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 67
          EditLabel.Height = 13
          EditLabel.Caption = #1075#1088#1072#1078#1076#1072#1085#1089#1090#1074#1086
          TabOrder = 9
        end
        object LabeledEdit13: TLabeledEdit
          Left = 15
          Top = 437
          Width = 1016
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 71
          EditLabel.Height = 13
          EditLabel.Caption = #1058#1077#1083#1077#1092#1086#1085' '#1086#1090#1094#1072
          TabOrder = 10
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 60
          Top = 464
          Width = 971
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          KeyField = 'klass_id'
          ListField = 'klass_naim'
          ListSource = fDM.Dsklass
          TabOrder = 11
        end
      end
      object GroupBox12: TGroupBox
        Left = 0
        Top = 688
        Width = 1050
        Height = 51
        Align = alBottom
        TabOrder = 2
        object Button5: TButton
          Left = 2
          Top = 15
          Width = 1046
          Height = 34
          Align = alClient
          Caption = #1042#1074#1086#1076
          TabOrder = 0
          OnClick = Button5Click
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = #1042#1074#1086#1076'  '#1087#1088#1080#1082#1072#1079#1072
      ImageIndex = 4
      object GroupBox13: TGroupBox
        Left = 0
        Top = 241
        Width = 1050
        Height = 431
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1085#1099#1093
        TabOrder = 0
        object DBGrid5: TDBGrid
          Left = 2
          Top = 15
          Width = 1046
          Height = 414
          Align = alClient
          DataSource = fDM.Dsyprikaz
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
      object GroupBox15: TGroupBox
        Left = 0
        Top = 672
        Width = 1050
        Height = 67
        Align = alBottom
        TabOrder = 1
        object Button4: TButton
          Left = 2
          Top = 15
          Width = 1046
          Height = 50
          Align = alClient
          Caption = #1042#1074#1086#1076
          TabOrder = 0
          OnClick = Button4Click
        end
      end
      object GroupBox14: TGroupBox
        Left = 0
        Top = 0
        Width = 1050
        Height = 241
        Align = alTop
        Caption = #1042#1074#1086#1076
        TabOrder = 2
        DesignSize = (
          1050
          241)
        object Label6: TLabel
          Left = 3
          Top = 12
          Width = 72
          Height = 13
          Caption = #1076#1072#1090#1072'  '#1087#1088#1080#1082#1072#1079#1072
        end
        object Label7: TLabel
          Left = 3
          Top = 78
          Width = 156
          Height = 13
          Caption = #1076#1072#1090#1072'  '#1082#1086#1085#1094#1072' '#1076#1077#1081#1089#1090#1074#1080#1103' '#1087#1088#1080#1082#1072#1079#1072
        end
        object Label8: TLabel
          Left = 3
          Top = 105
          Width = 37
          Height = 13
          Caption = #1059#1095#1077#1085#1080#1082
        end
        object Label9: TLabel
          Left = 3
          Top = 167
          Width = 44
          Height = 13
          Caption = #1055#1056#1048#1095#1080#1085#1072
        end
        object Label10: TLabel
          Left = 3
          Top = 206
          Width = 73
          Height = 13
          Caption = #1044#1072#1090#1072'  '#1087#1088#1080#1082#1072#1079#1072
        end
        object DateTimePicker4: TDateTimePicker
          Left = 81
          Top = 12
          Width = 938
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Date = 44159.995505358800000000
          Time = 44159.995505358800000000
          TabOrder = 0
        end
        object LabeledEdit14: TLabeledEdit
          Left = 3
          Top = 51
          Width = 1016
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 62
          EditLabel.Height = 13
          EditLabel.Caption = #1058#1080#1087' '#1087#1088#1080#1082#1072#1079#1072
          TabOrder = 1
        end
        object DateTimePicker5: TDateTimePicker
          Left = 165
          Top = 78
          Width = 854
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Date = 44159.995505358800000000
          Time = 44159.995505358800000000
          TabOrder = 2
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 48
          Top = 105
          Width = 1001
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          KeyField = 'uchen_id'
          ListField = 'FIO'
          ListSource = fDM.DSUchen
          TabOrder = 3
        end
        object LabeledEdit15: TLabeledEdit
          Left = 2
          Top = 140
          Width = 1045
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 107
          EditLabel.Height = 13
          EditLabel.Caption = #1057#1086#1076#1077#1088#1078#1072#1075#1080#1077' '#1087#1088#1080#1082#1072#1079#1072
          TabOrder = 4
        end
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 53
          Top = 167
          Width = 1001
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          KeyField = 'prich_id'
          ListField = 'prich_naim'
          ListSource = fDM.DSprich
          TabOrder = 5
        end
        object DateTimePicker6: TDateTimePicker
          Left = 82
          Top = 206
          Width = 928
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Date = 44159.995505358800000000
          Time = 44159.995505358800000000
          TabOrder = 6
        end
      end
    end
  end
end
