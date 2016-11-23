object Form1: TForm1
  Left = 183
  Top = 106
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsToolWindow
  Caption = 'Set File Date'
  ClientHeight = 94
  ClientWidth = 120
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 23
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Set Date'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DateTimePicker1: TDateTimePicker
    Left = 8
    Top = 8
    Width = 105
    Height = 21
    CalAlignment = dtaLeft
    Date = 38827.3916834838
    Time = 38827.3916834838
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 1
  end
  object DateTimePicker2: TDateTimePicker
    Left = 8
    Top = 32
    Width = 105
    Height = 21
    CalAlignment = dtaLeft
    Date = 38827.3916834838
    Time = 38827.3916834838
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkTime
    ParseInput = False
    TabOrder = 2
  end
  object OpenDialog1: TOpenDialog
    Left = 32
    Top = 48
  end
end
