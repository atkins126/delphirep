object Fmen: TFmen
  Left = 0
  Top = 0
  Caption = #1060#1086#1088#1084#1072' '#1084#1077#1085#1077#1076#1078#1077#1088#1072
  ClientHeight = 985
  ClientWidth = 848
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 848
    Height = 985
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 753
    object TabSheet1: TTabSheet
      Caption = #1042#1074#1086#1076#1099
      ExplicitWidth = 745
      object grougrou: TPageControl
        Left = 0
        Top = 0
        Width = 840
        Height = 957
        ActivePage = TabSheet10
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 745
        object TabSheet3: TTabSheet
          Caption = #1042#1074#1086#1076' '#1101#1090#1072#1087#1072
          ExplicitWidth = 737
          object GroupBox1: TGroupBox
            Left = 0
            Top = 880
            Width = 832
            Height = 49
            Align = alBottom
            TabOrder = 0
            ExplicitWidth = 737
            object Button1: TButton
              Left = 2
              Top = 15
              Width = 828
              Height = 32
              Align = alClient
              Caption = #1042#1074#1086#1076
              TabOrder = 0
              OnClick = Button1Click
              ExplicitWidth = 733
            end
          end
          object GroupBox2: TGroupBox
            Left = 0
            Top = 0
            Width = 832
            Height = 73
            Align = alTop
            Caption = #1042#1074#1086#1076' '#1076#1072#1085#1099#1085#1093
            TabOrder = 1
            ExplicitWidth = 737
            DesignSize = (
              832
              73)
            object LabeledEdit2: TLabeledEdit
              Left = 16
              Top = 46
              Width = 800
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              EditLabel.Width = 105
              EditLabel.Height = 13
              EditLabel.Caption = #1053#1072#1080#1084#1080#1085#1086#1074#1072#1085#1080#1077' '#1101#1090#1072#1087#1072
              TabOrder = 0
              OnKeyPress = LabeledEdit2KeyPress
              ExplicitWidth = 705
            end
          end
          object GroupBox3: TGroupBox
            Left = 0
            Top = 73
            Width = 832
            Height = 807
            Align = alClient
            Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
            TabOrder = 2
            ExplicitWidth = 737
            object DBGrid1: TDBGrid
              Left = 2
              Top = 15
              Width = 828
              Height = 790
              Align = alClient
              DataSource = dM.DSetap
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
            end
          end
        end
        object TabSheet4: TTabSheet
          Caption = #1042#1074#1086#1076' '#1088#1072#1073#1086#1090#1099
          ImageIndex = 1
          ExplicitWidth = 737
          object GroupBox4: TGroupBox
            Left = 0
            Top = 880
            Width = 832
            Height = 49
            Align = alBottom
            TabOrder = 0
            ExplicitWidth = 737
            object Button2: TButton
              Left = 2
              Top = 15
              Width = 828
              Height = 32
              Align = alClient
              Caption = #1042#1074#1086#1076
              TabOrder = 0
              OnClick = Button2Click
              ExplicitWidth = 733
            end
          end
          object GroupBox5: TGroupBox
            Left = 0
            Top = 0
            Width = 832
            Height = 153
            Align = alTop
            Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
            TabOrder = 1
            ExplicitWidth = 737
            DesignSize = (
              832
              153)
            object Label1: TLabel
              Left = 16
              Top = 88
              Width = 72
              Height = 13
              Caption = #1058#1088#1082#1076#1086#1077#1084#1082#1086#1089#1090#1100
            end
            object Label2: TLabel
              Left = 16
              Top = 128
              Width = 25
              Height = 13
              Caption = #1069#1090#1072#1087
            end
            object LabeledEdit1: TLabeledEdit
              Left = 16
              Top = 46
              Width = 800
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              EditLabel.Width = 114
              EditLabel.Height = 13
              EditLabel.Caption = #1053#1072#1080#1084#1080#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090#1099
              TabOrder = 0
              OnKeyPress = LabeledEdit2KeyPress
              ExplicitWidth = 705
            end
            object DateTimePicker1: TDateTimePicker
              Left = 94
              Top = 88
              Width = 722
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              Date = 44165.656682696760000000
              Time = 44165.656682696760000000
              TabOrder = 1
              ExplicitWidth = 627
            end
            object DBLookupComboBox1: TDBLookupComboBox
              Left = 47
              Top = 126
              Width = 769
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              KeyField = 'N_Etap'
              ListField = 'Nam_etap'
              ListSource = dM.DSetap
              TabOrder = 2
              ExplicitWidth = 674
            end
          end
          object GroupBox6: TGroupBox
            Left = 0
            Top = 153
            Width = 832
            Height = 727
            Align = alClient
            Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
            TabOrder = 2
            ExplicitWidth = 737
            object DBGrid2: TDBGrid
              Left = 2
              Top = 15
              Width = 828
              Height = 710
              Align = alClient
              DataSource = dM.DSwork
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
            end
          end
        end
        object TabSheet5: TTabSheet
          Caption = #1042#1074#1086#1076' '#1089#1087#1080#1089#1082#1072' '#1079#1072#1076#1072#1085#1080#1081
          ImageIndex = 2
          ExplicitWidth = 737
          object GroupBox7: TGroupBox
            Left = 0
            Top = 880
            Width = 832
            Height = 49
            Align = alBottom
            TabOrder = 0
            ExplicitWidth = 737
            object Button3: TButton
              Left = 2
              Top = 15
              Width = 828
              Height = 32
              Align = alClient
              Caption = #1042#1074#1086#1076
              TabOrder = 0
              OnClick = Button3Click
              ExplicitWidth = 733
            end
          end
          object GroupBox8: TGroupBox
            Left = 0
            Top = 241
            Width = 832
            Height = 639
            Align = alClient
            Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
            TabOrder = 1
            ExplicitWidth = 737
            object DBGrid3: TDBGrid
              Left = 2
              Top = 15
              Width = 828
              Height = 622
              Align = alClient
              DataSource = dM.DStask
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
            end
          end
          object GroupBox9: TGroupBox
            Left = 0
            Top = 0
            Width = 832
            Height = 241
            Align = alTop
            Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
            TabOrder = 2
            ExplicitWidth = 737
            DesignSize = (
              832
              241)
            object Label3: TLabel
              Left = 8
              Top = 24
              Width = 90
              Height = 13
              Caption = 'C'#1088#1086#1082' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103
            end
            object Label4: TLabel
              Left = 8
              Top = 64
              Width = 48
              Height = 13
              Caption = #1056#1072#1073#1086#1090#1085#1080#1082
            end
            object Label5: TLabel
              Left = 8
              Top = 131
              Width = 65
              Height = 13
              Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072
            end
            object Label6: TLabel
              Left = 3
              Top = 174
              Width = 39
              Height = 13
              Caption = ' '#1087#1088#1086#1077#1082#1090
            end
            object Label7: TLabel
              Left = 3
              Top = 214
              Width = 36
              Height = 13
              Caption = #1056#1072#1073#1086#1090#1072
            end
            object DateTimePicker2: TDateTimePicker
              Left = 104
              Top = 24
              Width = 704
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              Date = 44165.656682696760000000
              Time = 44165.656682696760000000
              TabOrder = 0
              ExplicitWidth = 609
            end
            object DBLookupComboBox2: TDBLookupComboBox
              Left = 104
              Top = 64
              Width = 704
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              KeyField = 'N_Rab'
              ListField = 'Fio'
              ListSource = dM.DSrabotnik
              TabOrder = 1
              ExplicitWidth = 609
            end
            object LabeledEdit3: TLabeledEdit
              Left = 104
              Top = 104
              Width = 704
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              EditLabel.Width = 101
              EditLabel.Height = 13
              EditLabel.Caption = #1057#1090#1072#1090#1091#1089' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103
              LabelPosition = lpLeft
              TabOrder = 2
              ExplicitWidth = 609
            end
            object DateTimePicker3: TDateTimePicker
              Left = 104
              Top = 131
              Width = 704
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              Date = 44165.656682696760000000
              Time = 44165.656682696760000000
              TabOrder = 3
              ExplicitWidth = 609
            end
            object DBLookupComboBox3: TDBLookupComboBox
              Left = 104
              Top = 174
              Width = 704
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              KeyField = 'N_Proekta'
              ListField = 'Nam_proect'
              ListSource = dM.DSproekt
              TabOrder = 4
              ExplicitWidth = 609
            end
            object DBLookupComboBox4: TDBLookupComboBox
              Left = 104
              Top = 214
              Width = 704
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              KeyField = 'N_Work'
              ListField = 'Nam_work'
              ListSource = dM.DSwork
              TabOrder = 5
              ExplicitWidth = 609
            end
          end
        end
        object TabSheet6: TTabSheet
          Caption = #1055#1088#1080#1077#1084' '#1088#1072#1073#1086#1090#1085#1080#1082#1072
          ImageIndex = 3
          ExplicitWidth = 737
          object GroupBox10: TGroupBox
            Left = 0
            Top = 281
            Width = 832
            Height = 599
            Align = alClient
            Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
            TabOrder = 0
            ExplicitWidth = 737
            object DBGrid4: TDBGrid
              Left = 2
              Top = 15
              Width = 828
              Height = 582
              Align = alClient
              DataSource = dM.DSrabotnik
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
            Top = 880
            Width = 832
            Height = 49
            Align = alBottom
            TabOrder = 1
            ExplicitWidth = 737
            object Button4: TButton
              Left = 2
              Top = 15
              Width = 828
              Height = 32
              Align = alClient
              Caption = #1042#1074#1086#1076
              TabOrder = 0
              OnClick = Button4Click
              ExplicitWidth = 733
            end
          end
          object GroupBox12: TGroupBox
            Left = 0
            Top = 0
            Width = 832
            Height = 281
            Align = alTop
            Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1085#1099#1093
            TabOrder = 2
            ExplicitWidth = 737
            DesignSize = (
              832
              281)
            object Label8: TLabel
              Left = 16
              Top = 59
              Width = 57
              Height = 13
              Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
            end
            object Label9: TLabel
              Left = 0
              Top = 200
              Width = 65
              Height = 13
              Caption = #1044#1072#1090#1072' '#1087#1088#1080#1077#1084#1072
            end
            object Label10: TLabel
              Left = 16
              Top = 243
              Width = 24
              Height = 13
              Caption = #1056#1086#1083#1100
            end
            object LabeledEdit4: TLabeledEdit
              Left = 96
              Top = 24
              Width = 752
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              EditLabel.Width = 80
              EditLabel.Height = 13
              EditLabel.Caption = #1060#1048#1054' '#1088#1072#1073#1086#1090#1085#1080#1082#1072
              LabelPosition = lpLeft
              TabOrder = 0
              ExplicitWidth = 657
            end
            object DBLookupComboBox5: TDBLookupComboBox
              Left = 96
              Top = 59
              Width = 736
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              KeyField = 'N_Dol'
              ListField = 'Nam_dol'
              ListSource = dM.DSdol
              TabOrder = 1
              ExplicitWidth = 641
            end
            object LabeledEdit5: TLabeledEdit
              Left = 96
              Top = 104
              Width = 752
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              EditLabel.Width = 44
              EditLabel.Height = 13
              EditLabel.Caption = #1058#1077#1083#1077#1092#1086#1085
              LabelPosition = lpLeft
              TabOrder = 2
              ExplicitWidth = 657
            end
            object LabeledEdit6: TLabeledEdit
              Left = 96
              Top = 152
              Width = 752
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              EditLabel.Width = 93
              EditLabel.Height = 13
              EditLabel.Caption = #1057#1090#1072#1090#1091#1089' '#1088#1072#1073#1086#1090#1085#1080#1082#1072
              LabelPosition = lpLeft
              TabOrder = 3
              ExplicitWidth = 657
            end
            object DateTimePicker4: TDateTimePicker
              Left = 96
              Top = 200
              Width = 736
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              Date = 44165.656682696760000000
              Time = 44165.656682696760000000
              TabOrder = 4
              ExplicitWidth = 641
            end
            object DBLookupComboBox6: TDBLookupComboBox
              Left = 96
              Top = 243
              Width = 744
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              KeyField = 'usverId'
              ListField = 'usver_role'
              ListSource = dM.DSpass
              TabOrder = 5
              ExplicitWidth = 649
            end
          end
        end
        object TabSheet10: TTabSheet
          Caption = #1059#1074#1086#1083#1100#1085#1077#1085#1080#1077' '#1088#1072#1073#1086#1090#1085#1080#1082#1072
          ImageIndex = 4
          ExplicitWidth = 737
          object GroupBox13: TGroupBox
            Left = 0
            Top = 0
            Width = 832
            Height = 105
            Align = alTop
            Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
            TabOrder = 0
            ExplicitWidth = 737
            DesignSize = (
              832
              105)
            object Label11: TLabel
              Left = 3
              Top = 20
              Width = 48
              Height = 13
              Caption = #1056#1072#1073#1086#1090#1085#1080#1082
            end
            object Label12: TLabel
              Left = 3
              Top = 74
              Width = 89
              Height = 13
              Caption = #1044#1072#1090#1072' '#1091#1074#1086#1083#1100#1085#1077#1085#1080#1103
            end
            object DBLookupComboBox7: TDBLookupComboBox
              Left = 57
              Top = 20
              Width = 769
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              KeyField = 'N_Rab'
              ListField = 'Fio'
              ListSource = dM.DSrabotnik
              TabOrder = 0
              ExplicitWidth = 674
            end
            object DateTimePicker5: TDateTimePicker
              Left = 98
              Top = 71
              Width = 736
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              Date = 44165.656682696760000000
              Time = 44165.656682696760000000
              TabOrder = 1
              ExplicitWidth = 641
            end
          end
          object GroupBox14: TGroupBox
            Left = 0
            Top = 888
            Width = 832
            Height = 41
            Align = alBottom
            TabOrder = 1
            ExplicitWidth = 737
            object Button5: TButton
              Left = 2
              Top = 15
              Width = 828
              Height = 24
              Align = alClient
              Caption = #1059#1074#1086#1083#1080#1090#1100
              TabOrder = 0
              OnClick = Button5Click
              ExplicitWidth = 733
            end
          end
          object GroupBox15: TGroupBox
            Left = 0
            Top = 105
            Width = 832
            Height = 783
            Align = alClient
            Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
            TabOrder = 2
            ExplicitWidth = 737
            object DBGrid5: TDBGrid
              Left = 2
              Top = 15
              Width = 828
              Height = 766
              Align = alClient
              DataSource = dM.DsUv
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
    end
    object TabSheet2: TTabSheet
      Caption = #1054#1090#1095#1077#1090#1099' '
      ImageIndex = 1
      ExplicitWidth = 745
      object PageControl3: TPageControl
        Left = 0
        Top = 0
        Width = 840
        Height = 957
        ActivePage = TabSheet7
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 745
        object TabSheet7: TTabSheet
          Caption = #1054#1090#1095#1077#1090'2'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object GroupBox16: TGroupBox
            Left = 0
            Top = 0
            Width = 832
            Height = 105
            Align = alTop
            Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
            TabOrder = 0
            ExplicitLeft = 2
            ExplicitTop = 3
            ExplicitWidth = 737
            object Label13: TLabel
              Left = 3
              Top = 48
              Width = 114
              Height = 13
              Caption = #1055#1083#1072#1085#1086#1074#1086#1077' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1077
            end
            object Label14: TLabel
              Left = 3
              Top = 16
              Width = 42
              Height = 13
              Caption = #1087#1088#1086#1077#1082#1090'  '
            end
            object DateTimePicker6: TDateTimePicker
              Left = 123
              Top = 48
              Width = 718
              Height = 21
              Date = 44164.895759409720000000
              Time = 44164.895759409720000000
              TabOrder = 0
              OnClick = DateTimePicker6Click
            end
            object DBLookupComboBox8: TDBLookupComboBox
              Left = 51
              Top = 21
              Width = 777
              Height = 21
              KeyField = 'N_Proekta'
              ListField = 'Nam_proect'
              ListSource = dM.DSproekt
              TabOrder = 1
              OnClick = DBLookupComboBox8Click
            end
          end
          object GroupBox17: TGroupBox
            Left = 0
            Top = 105
            Width = 832
            Height = 824
            Align = alClient
            Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
            TabOrder = 1
            ExplicitLeft = 3
            ExplicitTop = 120
            ExplicitWidth = 737
            object DBGrid6: TDBGrid
              Left = 2
              Top = 15
              Width = 828
              Height = 807
              Align = alClient
              DataSource = dM.DSot
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
    end
  end
end
