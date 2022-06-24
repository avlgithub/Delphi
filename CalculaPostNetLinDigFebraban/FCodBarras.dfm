object FormCodBarras: TFormCodBarras
  Left = 313
  Top = 210
  AutoSize = True
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '  Leitura do C'#243'digo de barras'
  ClientHeight = 253
  ClientWidth = 644
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox6: TGroupBox
    Left = 0
    Top = 0
    Width = 644
    Height = 51
    Align = alTop
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object Edit7: TEdit
      Left = 8
      Top = 11
      Width = 625
      Height = 35
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      MaxLength = 44
      ParentFont = False
      TabOrder = 0
      OnChange = Edit7Change
    end
  end
  object GroupBox10: TGroupBox
    Left = 0
    Top = 51
    Width = 644
    Height = 45
    Align = alTop
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 1
    object Label20: TLabel
      Left = 9
      Top = 15
      Width = 64
      Height = 19
      Caption = ' Banco: '
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label21: TLabel
      Left = 148
      Top = 15
      Width = 65
      Height = 19
      Caption = ' Moeda: '
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label22: TLabel
      Left = 279
      Top = 14
      Width = 112
      Height = 19
      Caption = ' Fator de Vcto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label24: TLabel
      Left = 498
      Top = 14
      Width = 54
      Height = 19
      Caption = ' Valor: '
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object GroupBox9: TGroupBox
    Left = 0
    Top = 96
    Width = 644
    Height = 45
    Align = alTop
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 2
    object Label25: TLabel
      Left = 9
      Top = 14
      Width = 111
      Height = 19
      Caption = ' Campo Livre: '
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label26: TLabel
      Left = 403
      Top = 15
      Width = 105
      Height = 19
      Caption = ' Vencimento: '
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object GroupBox8: TGroupBox
    Left = 0
    Top = 141
    Width = 644
    Height = 45
    Align = alTop
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 3
    object Label29: TLabel
      Left = 406
      Top = 14
      Width = 136
      Height = 19
      Caption = ' Digito Calculado:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label28: TLabel
      Left = 205
      Top = 14
      Width = 102
      Height = 19
      Caption = ' Digito Linha:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label27: TLabel
      Left = 9
      Top = 14
      Width = 115
      Height = 19
      Caption = ' Digito C'#243'digo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object GroupBox7: TGroupBox
    Left = 0
    Top = 186
    Width = 644
    Height = 67
    Align = alTop
    Caption = ':: Linha digit'#225'vel ::'
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 4
    object ttfXP_Panel1: ttfXP_Panel
      Left = 5
      Top = 15
      Width = 631
      Height = 46
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -17
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnMouseMove = ttfXP_Panel1MouseMove
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 511
    Top = 128
  end
end
