object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
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
  object Button1: TButton
    Left = 288
    Top = 160
    Width = 75
    Height = 25
    Caption = #1057#1090#1072#1088#1090' '
    TabOrder = 0
    OnClick = Button1Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 258
    Width = 635
    Height = 41
    Align = alBottom
    TabOrder = 1
    object ProgressBar1: TProgressBar
      Left = 1
      Top = 1
      Width = 633
      Height = 39
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 192
      ExplicitTop = 16
      ExplicitWidth = 150
      ExplicitHeight = 17
    end
  end
  object Button2: TButton
    Left = 424
    Top = 160
    Width = 75
    Height = 25
    Caption = #1089#1090#1086#1087
    TabOrder = 2
    OnClick = Button2Click
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = Timer1Timer
    Left = 592
  end
end
