object Fins: TFins
  Left = 0
  Top = 0
  Caption = #1042#1074#1086#1076#1099
  ClientHeight = 961
  ClientWidth = 752
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 752
    Height = 961
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1042#1074#1086#1076' '#1090#1080#1087#1072' '#1089#1095#1077#1090#1095#1080#1082#1072
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 744
        Height = 169
        Align = alTop
        Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        DesignSize = (
          744
          169)
        object LabeledEdit1: TLabeledEdit
          Left = 3
          Top = 32
          Width = 740
          Height = 32
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 52
          EditLabel.Height = 13
          EditLabel.Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '
          TabOrder = 0
          OnKeyPress = LabeledEdit1KeyPress
        end
        object LabeledEdit2: TLabeledEdit
          Left = 3
          Top = 86
          Width = 740
          Height = 32
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 159
          EditLabel.Height = 13
          EditLabel.Caption = #1052#1077#1093#1072#1085#1080#1095#1077#1089#1082#1080#1077' '#1093#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080
          TabOrder = 1
          OnKeyPress = LabeledEdit2KeyPress
        end
        object LabeledEdit3: TLabeledEdit
          Left = 3
          Top = 134
          Width = 740
          Height = 32
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 79
          EditLabel.Height = 13
          EditLabel.Caption = #1050#1083#1072#1089#1089' '#1090#1086#1095#1085#1086#1089#1090#1080
          TabOrder = 2
          OnKeyPress = LabeledEdit3KeyPress
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 840
        Width = 744
        Height = 93
        Align = alBottom
        TabOrder = 1
        object Button1: TButton
          Left = 2
          Top = 15
          Width = 740
          Height = 76
          Align = alClient
          Caption = #1042#1074#1086#1076
          TabOrder = 0
          OnClick = Button1Click
          ExplicitHeight = 28
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 169
        Width = 744
        Height = 671
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 2
        ExplicitHeight = 719
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 740
          Height = 654
          Align = alClient
          DataSource = fDM.DStpe_s
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
      Caption = #1057#1074#1077#1076#1080#1085#1080#1103' '#1086' '#1084#1072#1089#1090#1077#1088#1077
      ImageIndex = 1
      object GroupBox4: TGroupBox
        Left = 0
        Top = 257
        Width = 744
        Height = 615
        Align = alClient
        Caption = #1042#1099#1074#1086#1076' '#1076#1072#1085#1085#1099#1093
        TabOrder = 0
        ExplicitLeft = 280
        ExplicitTop = 416
        ExplicitWidth = 185
        ExplicitHeight = 105
        object DBGrid2: TDBGrid
          Left = 2
          Top = 15
          Width = 740
          Height = 598
          Align = alClient
          DataSource = fDM.DSmaster
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 872
        Width = 744
        Height = 61
        Align = alBottom
        TabOrder = 1
        object Button2: TButton
          Left = 2
          Top = 15
          Width = 740
          Height = 44
          Align = alClient
          Caption = #1042#1074#1086#1076
          TabOrder = 0
          OnClick = Button2Click
          ExplicitLeft = 336
          ExplicitTop = 16
          ExplicitWidth = 75
          ExplicitHeight = 25
        end
      end
      object GroupBox6: TGroupBox
        Left = 0
        Top = 0
        Width = 744
        Height = 257
        Align = alTop
        Caption = #1042#1074#1086#1076
        TabOrder = 2
        DesignSize = (
          744
          257)
        object Label1: TLabel
          Left = 3
          Top = 126
          Width = 80
          Height = 13
          Caption = #1085#1072#1095#1072#1083#1086' '#1088#1072#1073#1086#1090#1099' '
        end
        object Label2: TLabel
          Left = 3
          Top = 182
          Width = 94
          Height = 13
          Caption = #1085#1072' '#1084#1084#1077#1085#1091' '#1079#1072#1089#1090#1091#1087#1080#1083
        end
        object Label3: TLabel
          Left = 3
          Top = 230
          Width = 24
          Height = 13
          Caption = #1056#1086#1083#1100
        end
        object LabeledEdit4: TLabeledEdit
          Left = 3
          Top = 32
          Width = 740
          Height = 32
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 64
          EditLabel.Height = 13
          EditLabel.Caption = #1060#1080#1086' '#1084#1072#1089#1090#1077#1088#1072
          TabOrder = 0
          OnKeyPress = LabeledEdit1KeyPress
        end
        object LabeledEdit5: TLabeledEdit
          Left = 3
          Top = 88
          Width = 740
          Height = 32
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 50
          EditLabel.Height = 13
          EditLabel.Caption = #1086' '#1084#1072#1089#1090#1077#1088#1077
          TabOrder = 1
          OnKeyPress = LabeledEdit1KeyPress
        end
        object DateTimePicker1: TDateTimePicker
          Left = 89
          Top = 126
          Width = 652
          Height = 27
          Anchors = [akLeft, akTop, akRight]
          Date = 44155.665509513890000000
          Time = 44155.665509513890000000
          TabOrder = 2
        end
        object DateTimePicker2: TDateTimePicker
          Left = 89
          Top = 182
          Width = 652
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Date = 44155.665509513890000000
          Time = 44155.665509513890000000
          TabOrder = 3
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 33
          Top = 230
          Width = 708
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 4
        end
      end
    end
  end
end
