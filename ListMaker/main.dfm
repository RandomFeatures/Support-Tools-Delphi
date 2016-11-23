object frmMain: TfrmMain
  Left = 229
  Top = 118
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'List Maker'
  ClientHeight = 318
  ClientWidth = 388
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 136
    Top = 20
    Width = 38
    Height = 13
    Caption = 'Leading'
  end
  object Label2: TLabel
    Left = 200
    Top = 20
    Width = 34
    Height = 13
    Caption = 'Trailing'
  end
  object Label3: TLabel
    Left = 8
    Top = 4
    Width = 46
    Height = 13
    Caption = 'Start Text'
  end
  object Label4: TLabel
    Left = 256
    Top = 4
    Width = 71
    Height = 13
    Caption = 'Formatted Text'
  end
  object Label5: TLabel
    Left = 136
    Top = 128
    Width = 39
    Height = 13
    Caption = 'Defaults'
  end
  object Label6: TLabel
    Left = 136
    Top = 188
    Width = 22
    Height = 13
    Caption = 'Start'
  end
  object Label7: TLabel
    Left = 200
    Top = 188
    Width = 19
    Height = 13
    Caption = 'End'
  end
  object mmOrig: TMemo
    Left = 8
    Top = 20
    Width = 121
    Height = 289
    ScrollBars = ssVertical
    TabOrder = 0
    WordWrap = False
    OnEnter = mmOrigEnter
  end
  object mmDest: TMemo
    Left = 256
    Top = 20
    Width = 121
    Height = 289
    ScrollBars = ssVertical
    TabOrder = 1
    WordWrap = False
    OnEnter = mmDestEnter
  end
  object edtLead: TEdit
    Left = 136
    Top = 36
    Width = 50
    Height = 21
    TabOrder = 2
  end
  object edtTrail: TEdit
    Left = 200
    Top = 36
    Width = 50
    Height = 21
    TabOrder = 3
    Text = ','
  end
  object btnGo: TButton
    Left = 156
    Top = 92
    Width = 75
    Height = 25
    Caption = 'Process >>'
    TabOrder = 4
    OnClick = btnGoClick
  end
  object cbDefaults: TComboBox
    Left = 136
    Top = 143
    Width = 113
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 5
    OnChange = cbDefaultsChange
    Items.Strings = (
      'Text,'
      #39'Text'#39','
      #39'Text'#39
      'Text CRLF '
      'Text CRLF GO'
      '(Text,Text)'
      '('#39'Text'#39','#39'Text'#39')')
  end
  object btnClose: TButton
    Left = 156
    Top = 272
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 6
    OnClick = btnCloseClick
  end
  object Button1: TButton
    Left = 156
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Clear'
    TabOrder = 7
    OnClick = Button1Click
  end
  object edtStart: TEdit
    Left = 136
    Top = 204
    Width = 50
    Height = 21
    TabOrder = 8
  end
  object edtEnd: TEdit
    Left = 200
    Top = 204
    Width = 50
    Height = 21
    TabOrder = 9
  end
  object chkLast: TCheckBox
    Left = 200
    Top = 56
    Width = 49
    Height = 17
    Caption = 'Last'
    TabOrder = 10
  end
  object chkReLine: TCheckBox
    Left = 136
    Top = 168
    Width = 113
    Height = 17
    Caption = 'Remove Extra Lines'
    Checked = True
    State = cbChecked
    TabOrder = 11
  end
end
