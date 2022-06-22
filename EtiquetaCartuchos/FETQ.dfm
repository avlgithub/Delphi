object Form1: TForm1
  Left = 365
  Top = 379
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '  Gera Etiqueta'
  ClientHeight = 51
  ClientWidth = 315
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 315
    Height = 3
    Align = alTop
    Shape = bsTopLine
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 3
    Width = 315
    Height = 48
    Align = alClient
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 23
      Width = 124
      Height = 13
      Caption = 'Informe a numera'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 131
      Top = 18
      Width = 67
      Height = 19
      MaxLength = 6
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Button1: TButton
      Left = 204
      Top = 14
      Width = 106
      Height = 25
      Cursor = crHandPoint
      Hint = 'Clique para gerar etiqueta'
      Caption = 'Gera Etiqueta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 275
    Top = 13
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      object Fecharprograma1: TMenuItem
        Caption = 'Fechar programa'
      end
    end
    object Sobre1: TMenuItem
      Caption = 'Sobre'
      object GeraEtiqueta1: TMenuItem
        Caption = 'Gera Etiqueta'
        OnClick = GeraEtiqueta1Click
      end
    end
  end
end
