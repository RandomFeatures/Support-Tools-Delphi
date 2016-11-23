object Form1: TForm1
  Left = 182
  Top = 106
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Record Count'
  ClientHeight = 170
  ClientWidth = 158
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 80
    Top = 8
    Width = 28
    Height = 13
    Caption = 'Count'
  end
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 68
    Height = 13
    Caption = 'Current Count:'
  end
  object Button1: TButton
    Left = 8
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Open File'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 32
    Width = 129
    Height = 97
    TabOrder = 1
  end
  object OpenDialog1: TOpenDialog
    Filter = 'All Files (*.*)|*.*'
    InitialDir = '\\199.253.17.16\ftp_cust\ABNA'
    Left = 112
    Top = 136
  end
end
