object Form2: TForm2
  Left = 265
  Top = 273
  Width = 435
  Height = 146
  BorderIcons = [biSystemMenu]
  Caption = '  Compactar Arquivo - Configura'#231#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 192
    Height = 13
    Caption = 'Indique o caminho do BraZip.exe:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 0
    Top = 41
    Width = 197
    Height = 13
    Caption = 'Indique o caminho do WinRar.exe:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 1
    Top = 83
    Width = 195
    Height = 13
    Caption = 'Indique o caminho do WinZip.exe:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 1
    Top = 16
    Width = 403
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
  end
  object Button1: TButton
    Left = 406
    Top = 16
    Width = 20
    Height = 20
    Cursor = crHandPoint
    Caption = '...'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 1
    Top = 57
    Width = 403
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 2
    Top = 99
    Width = 403
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 3
  end
  object Button2: TButton
    Left = 406
    Top = 57
    Width = 20
    Height = 20
    Cursor = crHandPoint
    Caption = '...'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 406
    Top = 98
    Width = 20
    Height = 20
    Cursor = crHandPoint
    Caption = '...'
    TabOrder = 5
    OnClick = Button3Click
  end
  object OpenDialog1: TOpenDialog
    Filter = '.exe'
    Left = 313
    Top = 27
  end
end
