object Fmain: TFmain
  Left = 0
  Top = 0
  Caption = #1043#1083#1072#1074#1085#1072#1103' '#1092#1086#1088#1084#1072
  ClientHeight = 743
  ClientWidth = 992
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 992
    Height = 743
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 723
    object TabSheet1: TTabSheet
      Caption = 'SelectS'
      ExplicitHeight = 695
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 984
        Height = 217
        Align = alTop
        Caption = #1042#1099#1073#1086#1088' '#1090#1072#1073#1083#1080#1094#1099
        TabOrder = 0
        object ListBox1: TListBox
          Left = 643
          Top = 56
          Width = 121
          Height = 97
          ItemHeight = 13
          TabOrder = 0
          OnClick = ListBox1Click
        end
        object ListBox2: TListBox
          Left = 800
          Top = 56
          Width = 121
          Height = 97
          ItemHeight = 13
          TabOrder = 1
          OnClick = ListBox2Click
        end
        object ListBox3: TListBox
          Left = 432
          Top = 56
          Width = 121
          Height = 97
          ItemHeight = 13
          TabOrder = 2
          OnClick = ListBox3Click
        end
        object ListBox4: TListBox
          Left = 208
          Top = 56
          Width = 121
          Height = 97
          ItemHeight = 13
          TabOrder = 3
          OnClick = ListBox4Click
        end
        object GroupBox7: TGroupBox
          Left = 2
          Top = 15
          Width = 185
          Height = 200
          Align = alLeft
          TabOrder = 4
          object RadioButton3: TRadioButton
            Left = 3
            Top = 15
            Width = 113
            Height = 17
            Caption = 'spec'
            TabOrder = 0
            OnClick = RadioButton3Click
          end
          object RadioButton4: TRadioButton
            Left = 3
            Top = 54
            Width = 113
            Height = 17
            Caption = 'stud'
            TabOrder = 1
            OnClick = RadioButton4Click
          end
          object RadioButton5: TRadioButton
            Left = 3
            Top = 87
            Width = 113
            Height = 17
            Caption = 'grupp'
            TabOrder = 2
            OnClick = RadioButton5Click
          end
          object RadioButton6: TRadioButton
            Left = 3
            Top = 143
            Width = 113
            Height = 17
            Caption = 'kaph'
            TabOrder = 3
            OnClick = RadioButton6Click
          end
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 652
        Width = 984
        Height = 63
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 632
        object Button1: TButton
          Left = 2
          Top = 15
          Width = 980
          Height = 46
          Align = alClient
          Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
          TabOrder = 0
          OnClick = Button1Click
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 217
        Width = 984
        Height = 435
        Align = alClient
        TabOrder = 2
        ExplicitHeight = 415
        object GroupBox3: TGroupBox
          Left = 1
          Top = 1
          Width = 982
          Height = 201
          Align = alTop
          Caption = #1042#1099#1074#1086#1076' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1072
          TabOrder = 0
          object DBGrid1: TDBGrid
            Left = 2
            Top = 15
            Width = 978
            Height = 184
            Align = alClient
            DataSource = fDM.DStest
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
        end
        object GroupBox4: TGroupBox
          Left = 1
          Top = 202
          Width = 982
          Height = 232
          Align = alClient
          Caption = #1042#1074#1086#1076' '#1079#1072#1087#1088#1086#1089' '#1072
          TabOrder = 1
          ExplicitHeight = 212
          object Memo1: TMemo
            Left = 2
            Top = 15
            Width = 978
            Height = 122
            Align = alTop
            Lines.Strings = (
              '')
            TabOrder = 0
            Visible = False
          end
          object GroupBox5: TGroupBox
            Left = 2
            Top = 137
            Width = 978
            Height = 93
            Align = alClient
            Caption = #1090#1077#1089#1090' '#1079#1072#1087#1088#1086#1089#1072
            TabOrder = 1
            ExplicitHeight = 73
            object Button2: TButton
              Left = 2
              Top = 15
              Width = 182
              Height = 56
              Caption = #1090#1077#1089#1090' '#1079#1072#1087#1088#1086#1089#1072
              TabOrder = 0
              OnClick = Button2Click
            end
            object GroupBox6: TGroupBox
              Left = 640
              Top = 15
              Width = 336
              Height = 76
              Align = alRight
              Caption = #1087#1088#1086#1074#1077#1088#1082#1072' '#1079#1072#1087#1088#1086#1089#1072
              TabOrder = 1
              ExplicitHeight = 56
              object RadioButton1: TRadioButton
                Left = 208
                Top = 24
                Width = 113
                Height = 17
                Caption = #1085#1077' '#1074#1077#1088#1085#1086
                TabOrder = 0
                OnClick = RadioButton1Click
              end
              object RadioButton2: TRadioButton
                Left = 48
                Top = 24
                Width = 113
                Height = 17
                Caption = #1042#1077#1088#1085#1086
                TabOrder = 1
                OnClick = RadioButton2Click
              end
            end
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'inserts'
      ImageIndex = 1
      ExplicitHeight = 695
      object GroupBox8: TGroupBox
        Left = 0
        Top = 0
        Width = 984
        Height = 217
        Align = alTop
        Caption = #1042#1099#1073#1086#1088' '#1090#1072#1073#1083#1080#1094#1099
        TabOrder = 0
        object ListBox5: TListBox
          Left = 643
          Top = 56
          Width = 121
          Height = 97
          ItemHeight = 13
          TabOrder = 0
          Visible = False
          OnClick = ListBox1Click
        end
        object ListBox6: TListBox
          Left = 800
          Top = 56
          Width = 121
          Height = 97
          ItemHeight = 13
          TabOrder = 1
          Visible = False
          OnClick = ListBox2Click
        end
        object ListBox7: TListBox
          Left = 432
          Top = 56
          Width = 121
          Height = 97
          ItemHeight = 13
          TabOrder = 2
          Visible = False
          OnClick = ListBox3Click
        end
        object ListBox8: TListBox
          Left = 208
          Top = 56
          Width = 121
          Height = 97
          ItemHeight = 13
          TabOrder = 3
          Visible = False
          OnClick = ListBox8Click
        end
        object GroupBox9: TGroupBox
          Left = 2
          Top = 15
          Width = 185
          Height = 200
          Align = alLeft
          TabOrder = 4
          object RadioButton7: TRadioButton
            Left = 3
            Top = 15
            Width = 113
            Height = 17
            Caption = 'spec'
            TabOrder = 0
            OnClick = RadioButton7Click
          end
          object RadioButton8: TRadioButton
            Left = 3
            Top = 54
            Width = 113
            Height = 17
            Caption = 'stud'
            TabOrder = 1
          end
          object RadioButton9: TRadioButton
            Left = 3
            Top = 87
            Width = 113
            Height = 17
            Caption = 'grupp'
            TabOrder = 2
          end
          object RadioButton10: TRadioButton
            Left = 3
            Top = 143
            Width = 113
            Height = 17
            Caption = 'kaph'
            TabOrder = 3
          end
        end
      end
      object GroupBox10: TGroupBox
        Left = 0
        Top = 652
        Width = 984
        Height = 63
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 632
        object Button3: TButton
          Left = 2
          Top = 15
          Width = 980
          Height = 46
          Align = alClient
          Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
          TabOrder = 0
          OnClick = Button1Click
        end
      end
      object GroupBox11: TGroupBox
        Left = 0
        Top = 217
        Width = 984
        Height = 201
        Align = alTop
        Caption = #1042#1099#1074#1086#1076' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1072
        TabOrder = 2
        object DBGrid2: TDBGrid
          Left = 2
          Top = 15
          Width = 980
          Height = 184
          Align = alClient
          DataSource = fDM.DStest
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
      object GroupBox12: TGroupBox
        Left = 0
        Top = 418
        Width = 984
        Height = 234
        Align = alClient
        Caption = #1042#1074#1086#1076' '#1079#1072#1087#1088#1086#1089' '#1072
        TabOrder = 3
        ExplicitHeight = 214
        object Memo2: TMemo
          Left = 2
          Top = 15
          Width = 980
          Height = 122
          Align = alTop
          Lines.Strings = (
            '')
          TabOrder = 0
          Visible = False
        end
        object GroupBox13: TGroupBox
          Left = 2
          Top = 137
          Width = 980
          Height = 95
          Align = alClient
          Caption = #1090#1077#1089#1090' '#1079#1072#1087#1088#1086#1089#1072
          TabOrder = 1
          ExplicitHeight = 75
          object Button4: TButton
            Left = 2
            Top = 15
            Width = 182
            Height = 56
            Caption = #1090#1077#1089#1090' '#1079#1072#1087#1088#1086#1089#1072
            TabOrder = 0
            OnClick = Button2Click
          end
          object GroupBox14: TGroupBox
            Left = 642
            Top = 15
            Width = 336
            Height = 78
            Align = alRight
            Caption = #1087#1088#1086#1074#1077#1088#1082#1072' '#1079#1072#1087#1088#1086#1089#1072
            TabOrder = 1
            ExplicitHeight = 58
            object RadioButton11: TRadioButton
              Left = 208
              Top = 24
              Width = 113
              Height = 17
              Caption = #1085#1077' '#1074#1077#1088#1085#1086
              TabOrder = 0
              OnClick = RadioButton1Click
            end
            object RadioButton12: TRadioButton
              Left = 48
              Top = 24
              Width = 113
              Height = 17
              Caption = #1042#1077#1088#1085#1086
              TabOrder = 1
              OnClick = RadioButton2Click
            end
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
    end
    object TabSheet4: TTabSheet
      Caption = 'TabSheet4'
      ImageIndex = 3
    end
  end
  object SD1: TSaveDialog
    Left = 64
    Top = 680
  end
  object SD2: TSaveDialog
    Left = 104
    Top = 680
  end
  object MainMenu1: TMainMenu
    Left = 336
    Top = 672
    object N1: TMenuItem
      Caption = #1057#1086#1079#1076#1072#1090#1100
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1054#1090#1082#1088#1099#1090#1100
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = #1042#1099#1081#1090#1080
      OnClick = N4Click
    end
  end
  object Od1: TOpenDialog
    Left = 168
    Top = 672
  end
  object OD2: TOpenDialog
    Left = 208
    Top = 672
  end
  object SD3: TSaveDialog
    Left = 24
    Top = 680
  end
  object OD3: TOpenDialog
    Left = 248
    Top = 672
  end
  object OD4: TOpenDialog
    Left = 296
    Top = 672
  end
  object SD4: TSaveDialog
    Left = 392
    Top = 680
  end
end