object Form1: TForm1
  Left = 183
  Top = 106
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsToolWindow
  Caption = 'Renaming'
  ClientHeight = 110
  ClientWidth = 158
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 1
    Width = 34
    Height = 13
    Caption = 'Old Ext'
  end
  object Label2: TLabel
    Left = 88
    Top = 1
    Width = 40
    Height = 13
    Caption = 'New Ext'
  end
  object Label3: TLabel
    Left = 8
    Top = 40
    Width = 67
    Height = 13
    Caption = 'Start Directory'
  end
  object Button1: TButton
    Left = 80
    Top = 82
    Width = 75
    Height = 25
    Caption = 'Rename Files'
    TabOrder = 0
    OnClick = Button1Click
  end
  object edtStart: TEdit
    Left = 8
    Top = 56
    Width = 145
    Height = 21
    TabOrder = 1
    Text = 'c:\temp\'
  end
  object edtNew: TEdit
    Left = 88
    Top = 17
    Width = 65
    Height = 21
    MaxLength = 3
    TabOrder = 2
    Text = 'xls'
  end
  object edtOld: TEdit
    Left = 8
    Top = 17
    Width = 65
    Height = 21
    MaxLength = 3
    TabOrder = 3
    Text = 'mp3'
  end
  object FileScanner1: TFileScanner
    FileExtension = 'txt'
    OnFoundFile = FileScanner1FoundFile
    Left = 16
    Top = 80
  end
end
