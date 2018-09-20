object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 248
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 248
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 232
    ExplicitTop = 152
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Panel2: TPanel
      Left = 1
      Top = 206
      Width = 633
      Height = 41
      Align = alBottom
      TabOrder = 0
      ExplicitLeft = 224
      ExplicitTop = 128
      ExplicitWidth = 185
      object Button1: TButton
        Left = 1
        Top = 1
        Width = 631
        Height = 39
        Align = alClient
        Caption = #1079#1072#1082#1088#1099#1090#1100
        TabOrder = 0
        OnClick = Button1Click
        ExplicitLeft = 280
        ExplicitTop = 8
        ExplicitWidth = 75
        ExplicitHeight = 25
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 633
      Height = 168
      Align = alTop
      TabOrder = 1
      object Label1: TLabel
        Left = 1
        Top = 8
        Width = 36
        Height = 13
        Caption = #1087#1072#1088#1086#1083#1100
      end
      object Label2: TLabel
        Left = 1
        Top = 56
        Width = 3
        Height = 13
      end
      object Label3: TLabel
        Left = 10
        Top = 56
        Width = 54
        Height = 13
        Caption = #1087#1088#1086#1074#1085#1088#1077#1082#1072
      end
      object Edit1: TEdit
        Left = 7
        Top = 27
        Width = 625
        Height = 21
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 10
        Top = 75
        Width = 625
        Height = 21
        TabOrder = 1
      end
    end
    object Button2: TButton
      Left = 8
      Top = 175
      Width = 625
      Height = 25
      Caption = #1087#1088#1086#1074#1077#1088#1082#1072
      TabOrder = 2
      OnClick = Button2Click
    end
  end
end
