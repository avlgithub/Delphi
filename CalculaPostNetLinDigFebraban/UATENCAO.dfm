object FRM_MENSAGEM: TFRM_MENSAGEM
  Left = 395
  Top = 270
  BorderIcons = [biHelp]
  BorderStyle = bsNone
  Caption = 'ATEN'#199#195'O'
  ClientHeight = 135
  ClientWidth = 264
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 264
    Height = 135
    Align = alClient
    BorderStyle = bsSingle
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 8
      Width = 246
      Height = 60
      Alignment = taCenter
      Caption = 'O C'#211'DIGO DE BARRAS LIDO N'#195'O PERTENCE A UMA FICHA DE ARRECADA'#199#195'O!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object BitBtn1: TBitBtn
      Left = 96
      Top = 96
      Width = 75
      Height = 25
      TabOrder = 0
      OnClick = BitBtn1Click
      Kind = bkOK
    end
  end
end
