object Form1: TForm1
  Left = 408
  Top = 130
  Width = 261
  Height = 467
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = ' Cria tabela DBF'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 253
    Height = 3
    Align = alTop
    Shape = bsTopLine
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 3
    Width = 253
    Height = 92
    Align = alTop
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 9
      Width = 82
      Height = 13
      Caption = 'Nome do Campo:'
    end
    object Label2: TLabel
      Left = 8
      Top = 50
      Width = 48
      Height = 13
      Caption = 'Tamanho:'
    end
    object Label3: TLabel
      Left = 62
      Top = 50
      Width = 74
      Height = 13
      Caption = 'Tipo do campo:'
    end
    object Edit1: TEdit
      Left = 8
      Top = 24
      Width = 182
      Height = 19
      Hint = 'Informe o nome do campo'
      CharCase = ecUpperCase
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 8
      Top = 65
      Width = 50
      Height = 19
      Hint = 'Informe o tamanho do campo'
      CharCase = ecUpperCase
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnKeyPress = Edit2KeyPress
    end
    object Button2: TButton
      Left = 160
      Top = 64
      Width = 88
      Height = 20
      Cursor = crHandPoint
      Hint = 'Clique para adicionar o campo na lista'
      Caption = '&Adicionar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = Button2Click
    end
    object ComboBox1: TComboBox
      Left = 62
      Top = 64
      Width = 97
      Height = 19
      Hint = 'Selecione o tipo do campo'
      Style = csOwnerDrawVariable
      ItemHeight = 13
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Items.Strings = (
        'Auto Inc'
        'Date'
        'Inteiro'
        'Float'
        'String'
        'Time'
        'Boolean')
    end
    object CheckBox1: TCheckBox
      Left = 193
      Top = 22
      Width = 54
      Height = 17
      Hint = 'Marque para cria o campo como INDEX'
      Caption = 'Index'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 95
    Width = 253
    Height = 280
    Align = alTop
    Caption = ' Lista do(s) Campo(s) '
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    object Label4: TLabel
      Left = 1
      Top = 266
      Width = 251
      Height = 13
      Align = alBottom
      Caption = 'Total de Campos: 0'
      Color = clMoneyGreen
      ParentColor = False
    end
    object ListBox1: TListBox
      Left = 3
      Top = 14
      Width = 245
      Height = 249
      Hint = 'Campos da nova tabela'
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier'
      Font.Style = []
      ItemHeight = 13
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      PopupMenu = PopupMenu1
      ShowHint = True
      TabOrder = 0
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 375
    Width = 253
    Height = 46
    Align = alTop
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    object Button1: TButton
      Left = 8
      Top = 8
      Width = 233
      Height = 35
      Cursor = crHandPoint
      Hint = 'Clique para criar a tabela'
      Caption = '&Processar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '.dbf'
    Filter = 'Data base desktop|*.dbf|Data base desktop|*.db'
    Left = 12
    Top = 112
  end
  object PopupMenu1: TPopupMenu
    Left = 44
    Top = 113
    object DelSelecionado: TMenuItem
      Caption = 'Excluir item selecionado'
      Enabled = False
      OnClick = DelSelecionadoClick
    end
    object DelTodos: TMenuItem
      Caption = 'Excluir todos os registros'
      Enabled = False
      OnClick = DelTodosClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Carregarestrutura1: TMenuItem
      Caption = 'Carregar estrutura'
      OnClick = Carregarestrutura1Click
    end
    object Salvarestrutura1: TMenuItem
      Caption = 'Salvar estrutura'
      Enabled = False
      OnClick = Salvarestrutura1Click
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Arquivo de texto|*.txt|Arquivo de texto|*.csv'
    Left = 11
    Top = 145
  end
  object MainMenu1: TMainMenu
    Left = 43
    Top = 145
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      object Fecharprograma1: TMenuItem
        Caption = 'Fechar programa'
        ShortCut = 16471
        OnClick = Fecharprograma1Click
      end
    end
    object Sobre1: TMenuItem
      Caption = 'Sobre'
      object CriatabelaDBF1: TMenuItem
        Caption = 'Cria tabela DBF'
        OnClick = CriatabelaDBF1Click
      end
    end
  end
end
