object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 299
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 232
    ExplicitTop = 152
    ExplicitWidth = 185
    ExplicitHeight = 41
    object ComboBox1: TComboBox
      Left = 240
      Top = 40
      Width = 145
      Height = 21
      TabOrder = 0
      Text = 'ComboBox1'
      Items.Strings = (
        #1088#1072#1079' '
        #1076#1074#1072)
    end
    object LabeledEdit2: TLabeledEdit
      Left = 264
      Top = 104
      Width = 121
      Height = 21
      EditLabel.Width = 61
      EditLabel.Height = 13
      EditLabel.Caption = 'LabeledEdit1'
      TabOrder = 1
    end
    object Button1: TButton
      Left = 280
      Top = 136
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
end
