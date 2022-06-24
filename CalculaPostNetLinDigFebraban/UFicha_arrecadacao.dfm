object Frm_FichaArrecada: TFrm_FichaArrecada
  Left = 243
  Top = 33
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '   Leitura de Ficha de Arrecada'#231#227'o'
  ClientHeight = 386
  ClientWidth = 701
  Color = cl3DLight
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Arial Black'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 23
  object Bevel2: TBevel
    Left = 0
    Top = 335
    Width = 701
    Height = 3
    Align = alBottom
    Shape = bsTopLine
  end
  object PN_ERRO: TPanel
    Left = 0
    Top = 43
    Width = 699
    Height = 290
    BorderStyle = bsSingle
    Color = cl3DLight
    TabOrder = 4
    Visible = False
    object Label8: TLabel
      Left = 109
      Top = 47
      Width = 428
      Height = 96
      Alignment = taCenter
      Caption = 'O C'#211'DIGO DE BARRAS N'#195'O PERTENCE A UMA FICHA DE ARRECADA'#199#195'O!'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Label9: TLabel
      Left = 85
      Top = 162
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
    Top = 43
    Width = 699
    Height = 290
    BorderStyle = bsSingle
    Color = cl3DLight
    TabOrder = 5
    Visible = False
    object Label10: TLabel
      Left = 41
      Top = 6
      Width = 600
      Height = 103
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
    object Label12: TLabel
      Left = 40
      Top = 120
      Width = 600
      Height = 31
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
      Left = 14
      Top = 164
      Width = 665
      Height = 108
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
    Top = 43
    Width = 699
    Height = 290
    BorderStyle = bsSingle
    Color = cl3DLight
    TabOrder = 1
    object Label1: TLabel
      Left = 27
      Top = 36
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
      Left = 7
      Top = 72
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
      Left = 51
      Top = 107
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
      Left = 34
      Top = 142
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
      Left = 200
      Top = 177
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
      Left = 19
      Top = 212
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
      Left = 136
      Top = 247
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
      Left = 260
      Top = 32
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
      Left = 260
      Top = 68
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
      Left = 260
      Top = 103
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
      Left = 260
      Top = 138
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
      Left = 260
      Top = 173
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
      Left = 260
      Top = 208
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
      Left = 260
      Top = 243
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
    Top = 5
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
    Top = 5
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
    Top = 338
    Width = 701
    Height = 48
    Align = alBottom
    TabOrder = 3
    object SpeedButton1: TSpeedButton
      Left = 6
      Top = 4
      Width = 687
      Height = 41
      Cursor = crHandPoint
      Hint = 'Clique para limpar os dados.'
      Caption = 'Limpar'
      Flat = True
      Glyph.Data = {
        FE0A0000424DFE0A00000000000036000000280000001E0000001E0000000100
        180000000000C80A0000130B0000130B00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000FF000000000000000000000000000000000000
        0000000000000000000000000000000F090738231A563629633F2F633F2F5636
        2938231A0F090700000000000000000000000000000000000000000000000000
        000000000000000000FF00000000000000000000000000000000000000000000
        00000000001F130E6F4936B3795BCF9777DCA686E1AD8EE1AD8FDDA787D19979
        B47B5D734B372215100000000000000000000000000000000000000000000000
        0000000000FF0000000000000000000000000000000000000000000403025739
        2BB67D5EE0AD8FEAC1A9E6BEA6E3BBA4E3BBA3E3BBA3E4BCA4E6BEA7EAC2AAE2
        B194BA81625B3B2C050302000000000000000000000000000000000000000000
        00FF000000000000000000000000000000000000060403774F3DD19A7BEAC1A9
        E5BEA7E4BDA7E5BEA8E5BFA9E5C0AAE6C1ACE7C4AFE5C0AAE4BEA8E4BEA7EAC2
        AAD59F807B523D06040300000000000000000000000000000000000000FF0000
        000000000000000000000000000201016D4B3BD6A182EAC4AEE5BFA9E5C1ABE7
        C3ADE7C4AFE8C5B0EAC9B6DDBDACC7A392E3C4B3E8C6B2E6C2ADE5C0AAE9C4AE
        D9A687704C3B02010100000000000000000000000000000000FF000000000000
        000000000000000000412E24CE9A7CEBC7B0E6C1ABE7C4AEE8C6B1E9C8B4EBCB
        B7EACEBCD4B4A4DFC5B8C19D8CDABEAFDABBAAEACCB9E8C6B1E7C3ADEBC7B1D3
        9E80442F2600000000000000000000000000000000FF00000000000000000000
        00000D0907AC7E64ECC6AFE7C3ADE8C6B1EAC9B5EBCCB9EDD1BFE3C7B8D5B6A6
        ECD2C3EFD7C8C29D8CF0D7C9E5CABBD3B4A4E9CCBBEAC8B4E8C5B0EDC8B2B081
        670C090700000000000000000000000000FF0000000000000000000000004E3A
        30DEB196EAC8B3E9C8B3EBCBB8EDCFBCEFD5C5D8BBABDFC4B5F2DACBF2D8C8F0
        DACCC29E8DF1DACCF1D6C6E8CEC0DEC1B1EDCEBCEBCAB7EAC8B4E1B59C503B30
        00000000000000000000000000FF0000000000000000000101009A7460ECC8B3
        EAC8B4ECCDB9EED1BEF0D7C7D4B6A7EDD6C8F4DDCEF4DDCEF5DECFF3DFD2C39E
        8EF4DFD2F3DBCCF0DACCD8BBACEFD4C4EDD0BDEBCBB8EFCDB99E786301010000
        000000000000000000FF0000000000000000000D0A08C99D86EFD0BDECCDBAEE
        D1BFF0D5C5EBD2C4E2C9BBF6E0D2F6E1D4F6E2D6F7E3D7F5E3D8C39F8FF5E4D8
        F6E1D3F5E1D4D7BAABF3DACBF0D4C3EDD0BDF0D1BFD0A68F110D0B0000000000
        0000000000FF000000000000000000241B17DDBAA6F0D3C2EED1BFF0D5C5F3DB
        CBDDC2B4F2DED2F7E4D8F7E6DAF7E7DCF8E8DEF5E7DEC39F90F6E7DEF7E5D9F7
        E4D9D8BCAEF4DFD2F2D9C9F0D4C3F0D4C3E2C1AD2D231E000000000000000000
        00FF000000000000000000392D27E6C8B6F3DDD0F3DCCFF3DACBF5E1D3D9BEB0
        F7E7DCF8E8DEF8EAE1F9EBE3F9EDE5F6EBE3C3A090F7EBE4F8E9E0F8E8DDDDC3
        B7F2DED2F4DDCFF4DED1F4DFD2ECD0BF41332C00000000000000000000FF0000
        00000000000000322823E8CDBDF6E2D7F7E6DBF8E9DFF3E3DAE1CABEF8E9E0F9
        ECE3FAEFE7FAF1EBF8EFEAE3D0C7C09C8BF3E8E1FAEFE7F9EBE3E7D2C8ECDACF
        F9EAE1F8E8DEF7E4DAEED5C63F312C00000000000000000000FF000000000000
        000000221B17E4C9BBF7E6DBF8E9E0FAEDE5EDDED7F5EBE5FAF1EBFBF2EDF3E9
        E3D9C2B7C09D8DBD998ABD9B8BBE9A89E2CFC6F9F1ECF6EDE8ECDFD7FAEFE8F9
        ECE3F8E8DEEAD2C42A211D00000000000000000000FF00000000000000000008
        0706D4B9ABF8E7DDF9ECE4FAF0E9E9DAD4FBF5F1F2E8E3E3D2CBD9C3B9D5BFB5
        D2BCB2CCB4A8CAB0A4C9AEA3D0B7ACDECAC2F1E7E2EADCD5FBF1EBFAEEE7F9E9
        DFDBC3B60B090800000000000000000000FF0000000000000000000000009983
        78F8E7DDFAEEE7F9F0EAE2D0C8DFCCC4D9C5BCD7C3BAD3BEB5CFB8AECDB4A9CB
        B2A6CBB1A5CAB0A5CBB1A6D1B9AEDAC6BDE5D6CFFBF3EEFAF0E9F9E9DF9F8D83
        00000000000000000000000000FF000000000000000000000000423630EFDCD2
        FBEEE7F9F1EBEDE0DAE1CFC8D7C2B8D0BAAFCEB7ACCEB6ACCFB7ADD2BBB1D7C2
        B9E0D0C8EBE0DAF4ECE9FBF6F3FCF7F3FCF4EFFBF0EAF3E3DA443A3400000000
        000000000000000000FF000000000000000000000000040403AE998FFAECE4FB
        F3EEFCF6F2FCF8F5F7F1EEECE1DDE0CFC7E4D6D0EEE5E0F6F2EFFDFCFBFFFFFF
        FFFEFDFEFBFAFDF9F7FCF7F4FCF5F0FBEEE6B5A59D0403030000000000000000
        0000000000FF00000000000000000000000000000028211EE0D0C6FCF1EAFCF6
        F2FDF8F5FDFAF8FEFDFBFFFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFE
        FCFAFDFAF7FDF8F4FCF2ECE9DBD4302926000000000000000000000000000000
        00FF00000000000000000000000000000000000052463FEDE0D9FDF3EDFDF8F6
        FDFAF8FEFCFBFFFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDFEFBFAFDFA
        F7FDF4EFF2E7E2564B4600000000000000000000000000000000000000FF0000
        0000000000000000000000000000000000000050453FE7DBD3FDF4EFFDF8F5FE
        FBFAFEFDFCFEFEFDFFFEFEFFFFFEFFFEFEFEFDFDFEFCFBFEF9F6FDF5F0EDE3DD
        564D4800000000000000000000000000000000000000000000FF000000000000
        000000000000000000000000000000000000282320B3A7A0F9F2EDFEF7F3FEF9
        F6FEFBF9FEFCFBFEFCFBFEFBF9FEF9F6FEF7F3FAF2EDB6ABA62D282500000000
        000000000000000000000000000000000000000000FF00000000000000000000
        00000000000000000000000000000000000403034039359C938EE3D9D3F7EFEA
        FBF5F1FCF5F1F7EFEAE4D9D39C938E403A360403030000000000000000000000
        0000000000000000000000000000000000FF0000000000000000000000000000
        00000000000000000000000000000000000000000000020202241F1C312A2631
        2A26241F1C020202000000000000000000000000000000000000000000000000
        00000000000000000000000000FF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FF}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
  end
end
