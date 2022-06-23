object Frm_FichaArrecada: TFrm_FichaArrecada
  Left = 192
  Top = 107
  BorderStyle = bsSingle
  Caption = 'Leitura de Ficha de Arrecada'#231#227'o'
  ClientHeight = 440
  ClientWidth = 698
  Color = cl3DLight
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Arial Black'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 23
  object PN_ERRO: TPanel
    Left = 0
    Top = 60
    Width = 698
    Height = 304
    BorderStyle = bsSingle
    Color = cl3DLight
    TabOrder = 4
    Visible = False
    object Label8: TLabel
      Left = 96
      Top = 40
      Width = 510
      Height = 96
      Alignment = taCenter
      Caption = 'O C'#211'DIGO DE BARRAS LIDO N'#195'O PERTENCE A UMA FICHA DE ARRECADA'#199#195'O!'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Label9: TLabel
      Left = 80
      Top = 184
      Width = 494
      Height = 64
      Alignment = taCenter
      Caption = 'CLIQUE EM LIMPAR E TENTE UM NOVO DOCUMENTO!'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
  end
  object PN_DIGITO: TPanel
    Left = 0
    Top = 60
    Width = 698
    Height = 304
    BorderStyle = bsSingle
    Color = cl3DLight
    TabOrder = 5
    Visible = False
    object Label10: TLabel
      Left = 24
      Top = 8
      Width = 665
      Height = 96
      Alignment = taCenter
      AutoSize = False
      Caption = 'ATEN'#199#195'O! EXISTEM DADOS INCONSISTENTES NA FICHA DE ARRECADA'#199#195'O!'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Label11: TLabel
      Left = 72
      Top = 104
      Width = 553
      Height = 64
      Alignment = taCenter
      AutoSize = False
      Caption = 'AVISE O ANALISTA RESPONS'#193'VEL PELA OBRA!'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Label12: TLabel
      Left = 16
      Top = 272
      Width = 671
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Caption = 'CLIQUE EM LIMPAR PARA LER OUTRO DOCUMENTO!'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object MM_INCONSISTENCIA: TMemo
      Left = 16
      Top = 168
      Width = 665
      Height = 105
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clScrollBar
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      WantTabs = True
    end
  end
  object PN_NORMAL: TPanel
    Left = 0
    Top = 61
    Width = 698
    Height = 332
    BorderStyle = bsSingle
    Color = cl3DLight
    TabOrder = 1
    object Label1: TLabel
      Left = 25
      Top = 44
      Width = 224
      Height = 23
      Caption = 'Identifica'#231#227'o do Produto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 5
      Top = 86
      Width = 244
      Height = 23
      Caption = 'Identifica'#231#227'o do Segmento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 49
      Top = 129
      Width = 200
      Height = 23
      Caption = 'Identifica'#231#227'o do Valor:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 41
      Top = 172
      Width = 217
      Height = 23
      Caption = 'Digit'#227'o (quarta posi'#231#227'o):'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 198
      Top = 214
      Width = 51
      Height = 23
      Caption = 'Valor:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 17
      Top = 257
      Width = 232
      Height = 23
      Caption = 'Identifica'#231#227'o da Empresa:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 134
      Top = 300
      Width = 115
      Height = 23
      Caption = 'Campo Livre:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
    end
    object LB_LINHA: TLabel
      Left = 9
      Top = 4
      Width = 680
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
    end
    object edt_id_produto: TEdit
      Left = 266
      Top = 44
      Width = 417
      Height = 31
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInactiveCaptionText
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object edt_id_segmento: TEdit
      Left = 266
      Top = 85
      Width = 417
      Height = 31
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInactiveCaptionText
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object edt_id_valor: TEdit
      Left = 266
      Top = 126
      Width = 417
      Height = 31
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInactiveCaptionText
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object edt_digito: TEdit
      Left = 266
      Top = 168
      Width = 417
      Height = 31
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clHighlightText
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object edt_valor: TEdit
      Left = 266
      Top = 209
      Width = 417
      Height = 31
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clHighlightText
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -16
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object edt_id_empresa: TEdit
      Left = 266
      Top = 250
      Width = 417
      Height = 31
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInactiveCaptionText
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object edt_campo_livre: TEdit
      Left = 266
      Top = 292
      Width = 417
      Height = 31
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInactiveCaptionText
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
  end
  object edt_numero: TEdit
    Left = 8
    Top = 16
    Width = 681
    Height = 35
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -19
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object edt_codBarras: TEdit
    Left = 8
    Top = 16
    Width = 681
    Height = 35
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -19
    Font.Name = 'Arial Black'
    Font.Style = []
    MaxLength = 45
    ParentFont = False
    TabOrder = 0
    OnChange = edt_codBarrasChange
  end
  object Panel2: TPanel
    Left = 0
    Top = 399
    Width = 698
    Height = 41
    Align = alBottom
    TabOrder = 3
    object Button1: TButton
      Left = 200
      Top = 3
      Width = 297
      Height = 35
      Caption = 'LIMPAR'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
end
