object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Micro '
  ClientHeight = 299
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 635
    Height = 299
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1042#1074#1086#1076#1099
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 627
        Height = 271
        ActivePage = TabSheet4
        Align = alClient
        TabOrder = 0
        object TabSheet3: TTabSheet
          Caption = #1042#1074#1086#1076' '#1088#1072#1073#1086#1090#1099
          object GroupBox1: TGroupBox
            Left = 0
            Top = 0
            Width = 619
            Height = 113
            Align = alTop
            Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1077
            TabOrder = 0
            object Label1: TLabel
              Left = 16
              Top = 80
              Width = 76
              Height = 13
              Caption = #1044#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103
            end
            object LabeledEdit1: TLabeledEdit
              Left = 16
              Top = 38
              Width = 249
              Height = 21
              EditLabel.Width = 48
              EditLabel.Height = 13
              EditLabel.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
              TabOrder = 0
            end
            object LabeledEdit2: TLabeledEdit
              Left = 312
              Top = 38
              Width = 249
              Height = 21
              EditLabel.Width = 49
              EditLabel.Height = 13
              EditLabel.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
              TabOrder = 1
            end
            object DateTimePicker1: TDateTimePicker
              Left = 117
              Top = 86
              Width = 476
              Height = 21
              Date = 43824.950883865740000000
              Time = 43824.950883865740000000
              TabOrder = 2
            end
          end
          object GroupBox2: TGroupBox
            Left = 0
            Top = 216
            Width = 619
            Height = 27
            Align = alBottom
            TabOrder = 1
            object Button1: TButton
              Left = 272
              Top = 0
              Width = 75
              Height = 25
              Caption = #1042#1074#1086#1076' '
              TabOrder = 0
              OnClick = Button1Click
            end
            object Button3: TButton
              Left = 384
              Top = -1
              Width = 75
              Height = 25
              Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
              TabOrder = 1
            end
            object Button4: TButton
              Left = 117
              Top = 6
              Width = 75
              Height = 25
              Caption = #1054#1090#1084#1077#1085#1080#1090#1100' '
              TabOrder = 2
            end
          end
          object GroupBox3: TGroupBox
            Left = 0
            Top = 113
            Width = 619
            Height = 103
            Align = alClient
            Caption = #1042#1099#1093#1086#1076#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
            TabOrder = 2
            object DBGrid1: TDBGrid
              Left = 2
              Top = 15
              Width = 615
              Height = 86
              Align = alClient
              DataSource = fDM.DSrab
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
          Caption = #1042#1074#1086#1076' '#1091#1095#1072#1089#1090#1085#1080#1082#1072
          ImageIndex = 1
          object GroupBox4: TGroupBox
            Left = 0
            Top = 0
            Width = 619
            Height = 81
            Align = alTop
            Caption = #1042#1074#1086#1076' '#1076#1072#1085#1085#1099#1077
            TabOrder = 0
            object Label2: TLabel
              Left = 298
              Top = 16
              Width = 36
              Height = 13
              Caption = #1056#1072#1073#1086#1090#1072
            end
            object LabeledEdit3: TLabeledEdit
              Left = 3
              Top = 32
              Width = 121
              Height = 21
              EditLabel.Width = 19
              EditLabel.Height = 13
              EditLabel.Caption = #1048#1084#1103
              TabOrder = 0
            end
            object LabeledEdit4: TLabeledEdit
              Left = 147
              Top = 32
              Width = 121
              Height = 21
              EditLabel.Width = 44
              EditLabel.Height = 13
              EditLabel.Caption = #1058#1077#1083#1077#1092#1086#1085
              TabOrder = 1
            end
            object DBLookupComboBox1: TDBLookupComboBox
              Left = 298
              Top = 35
              Width = 295
              Height = 21
              KeyField = 'id_rab'
              ListField = 'naim'
              ListSource = fDM.DSrab
              TabOrder = 2
            end
          end
          object GroupBox5: TGroupBox
            Left = 0
            Top = 216
            Width = 619
            Height = 27
            Align = alBottom
            TabOrder = 1
            object Button2: TButton
              Left = 272
              Top = 0
              Width = 75
              Height = 25
              Caption = #1042#1074#1086#1076' '
              TabOrder = 0
              OnClick = Button2Click
            end
            object Button5: TButton
              Left = 117
              Top = 4
              Width = 75
              Height = 25
              Caption = #1054#1090#1084#1077#1085#1080#1090#1100' '
              TabOrder = 1
              OnClick = Button5Click
            end
            object Button6: TButton
              Left = 384
              Top = -1
              Width = 75
              Height = 25
              Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
              TabOrder = 2
              OnClick = Button6Click
            end
          end
          object GroupBox6: TGroupBox
            Left = 0
            Top = 81
            Width = 619
            Height = 135
            Align = alClient
            Caption = #1042#1099#1093#1086#1076#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
            TabOrder = 2
            object DBGrid2: TDBGrid
              Left = 2
              Top = 15
              Width = 615
              Height = 118
              Align = alClient
              DataSource = fDM.DSUch
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
      Caption = #1054#1090#1095#1077#1090
      ImageIndex = 1
      object GroupBox7: TGroupBox
        Left = 0
        Top = 0
        Width = 627
        Height = 57
        Align = alTop
        Caption = #1042#1093#1086#1076#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
        TabOrder = 0
        object DateTimePicker2: TDateTimePicker
          Left = 3
          Top = 16
          Width = 186
          Height = 21
          Date = 43825.699506111110000000
          Time = 43825.699506111110000000
          TabOrder = 0
          OnChange = DateTimePicker2Change
        end
        object DateTimePicker3: TDateTimePicker
          Left = 307
          Top = 16
          Width = 186
          Height = 21
          Date = 43825.699506111110000000
          Time = 43825.699506111110000000
          TabOrder = 1
        end
      end
      object GroupBox8: TGroupBox
        Left = 0
        Top = 232
        Width = 627
        Height = 39
        Align = alBottom
        TabOrder = 1
        object Button7: TButton
          Left = 280
          Top = 8
          Width = 75
          Height = 25
          Caption = #1079#1072#1082#1088#1099#1090#1100
          TabOrder = 0
        end
      end
      object DBGrid3: TDBGrid
        Left = 0
        Top = 57
        Width = 627
        Height = 175
        Align = alClient
        DataSource = fDM.DSot
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
end
