object Fmain: TFmain
  Left = 0
  Top = 0
  Caption = #1043#1083#1072#1074#1085#1072#1103' '#1092#1086#1088#1084#1072
  ClientHeight = 883
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
    Height = 883
    ActivePage = Deletes
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 863
    object TabSheet1: TTabSheet
      Caption = 'SelectS'
      ExplicitHeight = 835
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
          Top = 56
          Width = 185
          Height = 159
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
        object Panel3: TPanel
          Left = 2
          Top = 15
          Width = 980
          Height = 41
          Align = alTop
          TabOrder = 5
          object Label5: TLabel
            Left = 248
            Top = 8
            Width = 3
            Height = 13
            OnClick = Label5Click
          end
          object Label6: TLabel
            Left = 456
            Top = 16
            Width = 3
            Height = 13
            OnClick = Label6Click
          end
          object Label8: TLabel
            Left = 826
            Top = 22
            Width = 3
            Height = 13
            OnClick = Label8Click
          end
          object Label7: TLabel
            Left = 642
            Top = 22
            Width = 3
            Height = 13
            OnClick = Label7Click
          end
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 792
        Width = 984
        Height = 63
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 772
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
        Height = 575
        Align = alClient
        TabOrder = 2
        ExplicitHeight = 555
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
          Height = 372
          Align = alClient
          Caption = #1042#1074#1086#1076' '#1079#1072#1087#1088#1086#1089' '#1072
          TabOrder = 1
          ExplicitHeight = 352
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
            Height = 233
            Align = alClient
            Caption = #1090#1077#1089#1090' '#1079#1072#1087#1088#1086#1089#1072
            TabOrder = 1
            OnClick = Button1Click
            ExplicitHeight = 213
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
              Height = 216
              Align = alRight
              Caption = #1087#1088#1086#1074#1077#1088#1082#1072' '#1079#1072#1087#1088#1086#1089#1072
              TabOrder = 1
              ExplicitHeight = 196
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
            object GroupBox15: TGroupBox
              Left = 190
              Top = 15
              Width = 450
              Height = 216
              Align = alRight
              Caption = ' '#1057#1083#1091#1078#1077#1073#1085#1099#1077' '#1057#1083#1086#1074#1072' '
              TabOrder = 2
              ExplicitHeight = 196
              object Label9: TLabel
                Left = 3
                Top = 24
                Width = 22
                Height = 13
                Caption = 'from'
                OnClick = Label9Click
              end
              object Label10: TLabel
                Left = 3
                Top = 43
                Width = 30
                Height = 13
                Caption = 'where'
                OnClick = Label10Click
              end
              object Label11: TLabel
                Left = 3
                Top = 62
                Width = 27
                Height = 13
                Caption = 'count'
                OnClick = Label11Click
              end
              object Label12: TLabel
                Left = 3
                Top = 81
                Width = 20
                Height = 13
                Caption = 'Sum'
                OnClick = Label12Click
              end
            end
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'inserts'
      ImageIndex = 1
      ExplicitHeight = 835
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
          OnClick = ListBox5Click
        end
        object ListBox6: TListBox
          Left = 800
          Top = 56
          Width = 121
          Height = 97
          ItemHeight = 13
          TabOrder = 1
          Visible = False
          OnClick = ListBox6Click
        end
        object ListBox7: TListBox
          Left = 432
          Top = 56
          Width = 121
          Height = 97
          ItemHeight = 13
          TabOrder = 2
          Visible = False
          OnClick = ListBox7Click
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
          Top = 56
          Width = 185
          Height = 159
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
            OnClick = RadioButton8Click
          end
          object RadioButton9: TRadioButton
            Left = 3
            Top = 87
            Width = 113
            Height = 17
            Caption = 'grupp'
            TabOrder = 2
            OnClick = RadioButton9Click
          end
          object RadioButton10: TRadioButton
            Left = 3
            Top = 143
            Width = 70
            Height = 17
            Caption = 'kaph'
            TabOrder = 3
            OnClick = RadioButton10Click
          end
        end
        object Panel2: TPanel
          Left = 2
          Top = 15
          Width = 980
          Height = 41
          Align = alTop
          TabOrder = 5
          object Label1: TLabel
            Left = 248
            Top = 8
            Width = 3
            Height = 13
            OnClick = Label1Click
          end
          object Label2: TLabel
            Left = 456
            Top = 16
            Width = 3
            Height = 13
            OnClick = Label2Clic
          end
          object Label3: TLabel
            Left = 641
            Top = 14
            Width = 3
            Height = 13
            OnClick = Label3Click
          end
          object Label4: TLabel
            Left = 810
            Top = 14
            Width = 3
            Height = 13
            OnClick = Label4Click
          end
        end
      end
      object GroupBox10: TGroupBox
        Left = 0
        Top = 792
        Width = 984
        Height = 63
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 772
        object Button3: TButton
          Left = 2
          Top = 15
          Width = 980
          Height = 46
          Align = alClient
          Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
          TabOrder = 0
          OnClick = Button3Click
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
        Height = 374
        Align = alClient
        Caption = #1042#1074#1086#1076' '#1079#1072#1087#1088#1086#1089' '#1072
        TabOrder = 3
        ExplicitHeight = 354
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
          Height = 235
          Align = alClient
          Caption = #1090#1077#1089#1090' '#1079#1072#1087#1088#1086#1089#1072
          TabOrder = 1
          ExplicitHeight = 215
          object Button4: TButton
            Left = 4
            Top = 15
            Width = 182
            Height = 56
            Caption = #1090#1077#1089#1090' '#1079#1072#1087#1088#1086#1089#1072
            TabOrder = 0
            OnClick = Button4Click
          end
          object GroupBox14: TGroupBox
            Left = 642
            Top = 15
            Width = 336
            Height = 218
            Align = alRight
            Caption = #1087#1088#1086#1074#1077#1088#1082#1072' '#1079#1072#1087#1088#1086#1089#1072
            TabOrder = 1
            ExplicitHeight = 198
            object RadioButton11: TRadioButton
              Left = 208
              Top = 24
              Width = 113
              Height = 17
              Caption = #1085#1077' '#1074#1077#1088#1085#1086
              TabOrder = 0
              OnClick = RadioButton11Click
            end
            object RadioButton12: TRadioButton
              Left = 48
              Top = 24
              Width = 113
              Height = 17
              Caption = #1042#1077#1088#1085#1086
              TabOrder = 1
              OnClick = RadioButton12Click
            end
          end
          object GroupBox16: TGroupBox
            Left = 192
            Top = 15
            Width = 450
            Height = 218
            Align = alRight
            Caption = ' '#1057#1083#1091#1078#1077#1073#1085#1099#1077' '#1057#1083#1086#1074#1072' '
            TabOrder = 2
            ExplicitHeight = 198
            object Label13: TLabel
              Left = 3
              Top = 24
              Width = 22
              Height = 13
              Caption = 'from'
              OnClick = Label13Click
            end
            object Label14: TLabel
              Left = 56
              Top = 27
              Width = 30
              Height = 13
              Caption = 'where'
              OnClick = Label14Click
            end
            object Label15: TLabel
              Left = 3
              Top = 62
              Width = 27
              Height = 13
              Caption = 'count'
              OnClick = Label15Click
            end
            object Label16: TLabel
              Left = 56
              Top = 65
              Width = 20
              Height = 13
              Caption = 'Sum'
              OnClick = Label16Click
            end
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Updates'
      ImageIndex = 2
      ExplicitHeight = 835
      object GroupBox17: TGroupBox
        Left = 0
        Top = 0
        Width = 984
        Height = 217
        Align = alTop
        Caption = #1042#1099#1073#1086#1088' '#1090#1072#1073#1083#1080#1094#1099
        TabOrder = 0
        object ListBox9: TListBox
          Left = 644
          Top = 62
          Width = 121
          Height = 97
          ItemHeight = 13
          TabOrder = 0
          Visible = False
          OnClick = ListBox9Click
        end
        object ListBox10: TListBox
          Left = 800
          Top = 56
          Width = 121
          Height = 97
          ItemHeight = 13
          TabOrder = 1
          Visible = False
          OnClick = ListBox10Click
        end
        object ListBox11: TListBox
          Left = 432
          Top = 56
          Width = 121
          Height = 97
          ItemHeight = 13
          TabOrder = 2
          Visible = False
          OnClick = ListBox11Click
        end
        object ListBox12: TListBox
          Left = 208
          Top = 56
          Width = 121
          Height = 97
          ItemHeight = 13
          TabOrder = 3
          Visible = False
          OnClick = ListBox12Click
        end
        object GroupBox18: TGroupBox
          Left = 2
          Top = 56
          Width = 185
          Height = 159
          Align = alLeft
          TabOrder = 4
          object RadioButton13: TRadioButton
            Left = 3
            Top = 6
            Width = 113
            Height = 17
            Caption = 'spec'
            TabOrder = 0
            OnClick = RadioButton13Click
          end
          object RadioButton14: TRadioButton
            Left = 3
            Top = 54
            Width = 113
            Height = 17
            Caption = 'stud'
            TabOrder = 1
            OnClick = RadioButton14Click
          end
          object RadioButton15: TRadioButton
            Left = 3
            Top = 87
            Width = 113
            Height = 17
            Caption = 'grupp'
            TabOrder = 2
            OnClick = RadioButton15Click
          end
          object RadioButton16: TRadioButton
            Left = 3
            Top = 143
            Width = 70
            Height = 17
            Caption = 'kaph'
            TabOrder = 3
            OnClick = RadioButton16Click
          end
        end
        object Panel4: TPanel
          Left = 2
          Top = 15
          Width = 980
          Height = 41
          Align = alTop
          TabOrder = 5
          object Label17: TLabel
            Left = 248
            Top = 8
            Width = 3
            Height = 13
            OnClick = Label17Click
          end
          object Label18: TLabel
            Left = 456
            Top = 16
            Width = 3
            Height = 13
            OnClick = Label18Click
          end
          object Label19: TLabel
            Left = 641
            Top = 14
            Width = 3
            Height = 13
            OnClick = Label19Click
          end
          object Label20: TLabel
            Left = 810
            Top = 14
            Width = 3
            Height = 13
            OnClick = Label20Click
          end
        end
      end
      object GroupBox19: TGroupBox
        Left = 0
        Top = 792
        Width = 984
        Height = 63
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 772
        object Button5: TButton
          Left = 2
          Top = 15
          Width = 980
          Height = 46
          Align = alClient
          Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
          TabOrder = 0
          OnClick = Button5Click
        end
      end
      object GroupBox20: TGroupBox
        Left = 3
        Top = 544
        Width = 980
        Height = 68
        Caption = #1090#1077#1089#1090' '#1079#1072#1087#1088#1086#1089#1072
        TabOrder = 2
        object Button6: TButton
          Left = 4
          Top = 15
          Width = 182
          Height = 56
          Caption = #1090#1077#1089#1090' '#1079#1072#1087#1088#1086#1089#1072
          TabOrder = 0
          OnClick = Button4Click
        end
        object GroupBox21: TGroupBox
          Left = 642
          Top = 15
          Width = 336
          Height = 51
          Align = alRight
          Caption = #1087#1088#1086#1074#1077#1088#1082#1072' '#1079#1072#1087#1088#1086#1089#1072
          TabOrder = 1
          object RadioButton17: TRadioButton
            Left = 208
            Top = 24
            Width = 113
            Height = 17
            Caption = #1085#1077' '#1074#1077#1088#1085#1086
            TabOrder = 0
            OnClick = RadioButton11Click
          end
          object RadioButton18: TRadioButton
            Left = 48
            Top = 24
            Width = 113
            Height = 17
            Caption = #1042#1077#1088#1085#1086
            TabOrder = 1
            OnClick = RadioButton12Click
          end
        end
        object GroupBox22: TGroupBox
          Left = 192
          Top = 15
          Width = 450
          Height = 51
          Align = alRight
          Caption = ' '#1057#1083#1091#1078#1077#1073#1085#1099#1077' '#1057#1083#1086#1074#1072' '
          TabOrder = 2
          object Label21: TLabel
            Left = 3
            Top = 24
            Width = 22
            Height = 13
            Caption = 'from'
            OnClick = Label13Click
          end
          object Label22: TLabel
            Left = 56
            Top = 27
            Width = 30
            Height = 13
            Caption = 'where'
            OnClick = Label14Click
          end
          object Label23: TLabel
            Left = 3
            Top = 62
            Width = 27
            Height = 13
            Caption = 'count'
            OnClick = Label15Click
          end
          object Label24: TLabel
            Left = 56
            Top = 65
            Width = 20
            Height = 13
            Caption = 'Sum'
            OnClick = Label16Click
          end
        end
      end
      object GroupBox23: TGroupBox
        Left = 0
        Top = 217
        Width = 984
        Height = 201
        Align = alTop
        Caption = #1042#1099#1074#1086#1076' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1072
        TabOrder = 3
        object DBGrid3: TDBGrid
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
      object GroupBox24: TGroupBox
        Left = 0
        Top = 418
        Width = 984
        Height = 374
        Align = alClient
        Caption = #1042#1074#1086#1076' '#1079#1072#1087#1088#1086#1089' '#1072
        TabOrder = 4
        ExplicitHeight = 354
        object Memo3: TMemo
          Left = 2
          Top = 15
          Width = 980
          Height = 122
          Align = alTop
          Lines.Strings = (
            '')
          TabOrder = 0
          Visible = False
          ExplicitTop = 13
        end
        object GroupBox25: TGroupBox
          Left = 2
          Top = 137
          Width = 980
          Height = 235
          Align = alClient
          Caption = #1090#1077#1089#1090' '#1079#1072#1087#1088#1086#1089#1072
          TabOrder = 1
          ExplicitHeight = 215
          object Button7: TButton
            Left = 4
            Top = 15
            Width = 182
            Height = 56
            Caption = #1090#1077#1089#1090' '#1079#1072#1087#1088#1086#1089#1072
            TabOrder = 0
            OnClick = Button7Click
          end
          object GroupBox26: TGroupBox
            Left = 642
            Top = 15
            Width = 336
            Height = 218
            Align = alRight
            Caption = #1087#1088#1086#1074#1077#1088#1082#1072' '#1079#1072#1087#1088#1086#1089#1072
            TabOrder = 1
            ExplicitHeight = 198
            object RadioButton19: TRadioButton
              Left = 208
              Top = 24
              Width = 113
              Height = 17
              Caption = #1085#1077' '#1074#1077#1088#1085#1086
              TabOrder = 0
              OnClick = RadioButton19Click
            end
            object RadioButton20: TRadioButton
              Left = 48
              Top = 24
              Width = 113
              Height = 17
              Caption = #1042#1077#1088#1085#1086
              TabOrder = 1
              OnClick = RadioButton20Click
            end
          end
          object GroupBox27: TGroupBox
            Left = 192
            Top = 15
            Width = 450
            Height = 218
            Align = alRight
            Caption = ' '#1057#1083#1091#1078#1077#1073#1085#1099#1077' '#1057#1083#1086#1074#1072' '
            TabOrder = 2
            ExplicitHeight = 198
            object Label26: TLabel
              Left = 56
              Top = 27
              Width = 30
              Height = 13
              Caption = 'where'
              OnClick = Label26Click
            end
          end
        end
      end
    end
    object Deletes: TTabSheet
      Caption = 'Deletes'
      ImageIndex = 3
      ExplicitHeight = 835
      object GroupBox28: TGroupBox
        Left = 0
        Top = 0
        Width = 984
        Height = 217
        Align = alTop
        Caption = #1042#1099#1073#1086#1088' '#1090#1072#1073#1083#1080#1094#1099
        TabOrder = 0
        object ListBox13: TListBox
          Left = 644
          Top = 62
          Width = 121
          Height = 97
          ItemHeight = 13
          TabOrder = 0
          Visible = False
          OnClick = ListBox13Click
        end
        object ListBox14: TListBox
          Left = 800
          Top = 56
          Width = 121
          Height = 97
          ItemHeight = 13
          TabOrder = 1
          Visible = False
          OnClick = ListBox14Click
        end
        object ListBox15: TListBox
          Left = 432
          Top = 56
          Width = 121
          Height = 97
          ItemHeight = 13
          TabOrder = 2
          Visible = False
          OnClick = ListBox15Click
        end
        object ListBox16: TListBox
          Left = 208
          Top = 56
          Width = 121
          Height = 97
          ItemHeight = 13
          TabOrder = 3
          Visible = False
          OnClick = ListBox16Click
        end
        object GroupBox29: TGroupBox
          Left = 2
          Top = 56
          Width = 185
          Height = 159
          Align = alLeft
          TabOrder = 4
          object RadioButton21: TRadioButton
            Left = 3
            Top = 6
            Width = 113
            Height = 17
            Caption = 'spec'
            TabOrder = 0
            OnClick = RadioButton21Click
          end
          object RadioButton22: TRadioButton
            Left = 3
            Top = 54
            Width = 113
            Height = 17
            Caption = 'stud'
            TabOrder = 1
            OnClick = RadioButton22Click
          end
          object RadioButton23: TRadioButton
            Left = 3
            Top = 87
            Width = 113
            Height = 17
            Caption = 'grupp'
            TabOrder = 2
            OnClick = RadioButton23Click
          end
          object RadioButton24: TRadioButton
            Left = 3
            Top = 143
            Width = 70
            Height = 17
            Caption = 'kaph'
            TabOrder = 3
            OnClick = RadioButton24Click
          end
        end
        object Panel5: TPanel
          Left = 2
          Top = 15
          Width = 980
          Height = 41
          Align = alTop
          TabOrder = 5
          object Label25: TLabel
            Left = 248
            Top = 8
            Width = 3
            Height = 13
            OnClick = Label25Click
          end
          object Label27: TLabel
            Left = 456
            Top = 16
            Width = 3
            Height = 13
            OnClick = Label27Click
          end
          object Label28: TLabel
            Left = 641
            Top = 14
            Width = 3
            Height = 13
            OnClick = Label28Click
          end
          object Label29: TLabel
            Left = 810
            Top = 14
            Width = 3
            Height = 13
            OnClick = Label29Click
          end
        end
      end
      object GroupBox30: TGroupBox
        Left = 0
        Top = 792
        Width = 984
        Height = 63
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 772
        object Button8: TButton
          Left = 2
          Top = 15
          Width = 980
          Height = 46
          Align = alClient
          Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
          TabOrder = 0
          OnClick = Button8Click
        end
      end
      object GroupBox31: TGroupBox
        Left = 0
        Top = 339
        Width = 984
        Height = 201
        Align = alTop
        Caption = #1042#1099#1074#1086#1076' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1072
        TabOrder = 2
        ExplicitTop = 217
        object DBGrid4: TDBGrid
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
      object Memo4: TMemo
        Left = 0
        Top = 217
        Width = 984
        Height = 122
        Align = alTop
        Lines.Strings = (
          '')
        TabOrder = 3
        Visible = False
        ExplicitLeft = 2
        ExplicitTop = 13
        ExplicitWidth = 980
      end
      object GroupBox32: TGroupBox
        Left = 0
        Top = 540
        Width = 984
        Height = 252
        Align = alClient
        Caption = #1090#1077#1089#1090' '#1079#1072#1087#1088#1086#1089#1072
        TabOrder = 4
        ExplicitLeft = 2
        ExplicitTop = 137
        ExplicitWidth = 980
        ExplicitHeight = 215
        object Button9: TButton
          Left = 4
          Top = 15
          Width = 182
          Height = 56
          Caption = #1090#1077#1089#1090' '#1079#1072#1087#1088#1086#1089#1072
          TabOrder = 0
          OnClick = Button9Click
        end
        object GroupBox33: TGroupBox
          Left = 646
          Top = 15
          Width = 336
          Height = 235
          Align = alRight
          Caption = #1087#1088#1086#1074#1077#1088#1082#1072' '#1079#1072#1087#1088#1086#1089#1072
          TabOrder = 1
          object RadioButton25: TRadioButton
            Left = 208
            Top = 24
            Width = 113
            Height = 17
            Caption = #1085#1077' '#1074#1077#1088#1085#1086
            TabOrder = 0
            OnClick = RadioButton25Click
          end
          object RadioButton26: TRadioButton
            Left = 48
            Top = 24
            Width = 113
            Height = 17
            Caption = #1042#1077#1088#1085#1086
            TabOrder = 1
            OnClick = RadioButton26Click
          end
        end
        object GroupBox34: TGroupBox
          Left = 196
          Top = 15
          Width = 450
          Height = 235
          Align = alRight
          Caption = ' '#1057#1083#1091#1078#1077#1073#1085#1099#1077' '#1057#1083#1086#1074#1072' '
          TabOrder = 2
          object Label30: TLabel
            Left = 56
            Top = 27
            Width = 30
            Height = 13
            Caption = 'where'
            OnClick = Label30Click
          end
          object Label31: TLabel
            Left = 152
            Top = 27
            Width = 24
            Height = 13
            Caption = 'From'
            OnClick = Label31Click
          end
        end
      end
    end
  end
  object SD2: TSaveDialog
    Left = 104
    Top = 680
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 648
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
    object N5: TMenuItem
      Caption = #1054#1095#1080#1089#1090#1082#1072
      OnClick = N5Click
    end
    object N4: TMenuItem
      Caption = #1042#1099#1081#1090#1080
      OnClick = N4Click
    end
    object N6: TMenuItem
      Caption = #1064#1088#1080#1092#1090' '#1080' '#1094#1074#1077#1090
      OnClick = N6Click
    end
  end
  object SD3: TSaveDialog
    Left = 24
    Top = 680
  end
  object OD3: TOpenDialog
    Left = 64
    Top = 648
  end
  object OD4: TOpenDialog
    Left = 168
    Top = 680
  end
  object SD4: TSaveDialog
    Left = 104
    Top = 648
  end
  object FD1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 256
    Top = 65528
  end
  object Od1: TOpenDialog
    Left = 152
    Top = 656
  end
  object SD1: TSaveDialog
    Left = 64
    Top = 680
  end
  object OD2: TOpenDialog
    Left = 144
    Top = 688
  end
end
