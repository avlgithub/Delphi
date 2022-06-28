object Form1: TForm1
  Left = 279
  Top = 296
  Width = 772
  Height = 340
  AutoSize = True
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  Caption = ' Filtra registros txt'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 289
    Height = 260
    Caption = ' Selecione o Arquivo: '
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object FileListBox1: TFileListBox
      Left = 8
      Top = 142
      Width = 273
      Height = 100
      Hint = 
        'De um duplo cliquer para adicionar um arquivo a lista ou clique ' +
        'com o direito'
      ItemHeight = 13
      Mask = '*.txt'
      ParentShowHint = False
      PopupMenu = PopupMenu3
      ShowHint = True
      TabOrder = 0
      OnDblClick = FileListBox1DblClick
    end
    object DirectoryListBox1: TDirectoryListBox
      Left = 8
      Top = 38
      Width = 273
      Height = 100
      FileList = FileListBox1
      ItemHeight = 16
      TabOrder = 1
    end
    object DriveComboBox1: TDriveComboBox
      Left = 8
      Top = 15
      Width = 273
      Height = 19
      DirList = DirectoryListBox1
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 426
    Top = 0
    Width = 338
    Height = 260
    Caption = ' Par'#226'metros '
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    object Label3: TLabel
      Left = 6
      Top = 64
      Width = 305
      Height = 16
      Caption = 'Informe aqui, os par'#226'metros para iniciar a pesquisa'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 1
      Top = 246
      Width = 336
      Height = 13
      Align = alBottom
      Caption = ' Total de itens: 0'
      Color = clMoneyGreen
      ParentColor = False
    end
    object Edit1: TEdit
      Left = 6
      Top = 80
      Width = 326
      Height = 19
      Enabled = False
      MaxLength = 50
      TabOrder = 1
      OnChange = Edit1Change
      OnKeyPress = Edit1KeyPress
    end
    object ListBox1: TListBox
      Left = 6
      Top = 104
      Width = 326
      Height = 100
      Hint = 'Clique com o bot'#227'o direito para excluir os itens'
      Enabled = False
      ItemHeight = 13
      MultiSelect = True
      ParentShowHint = False
      PopupMenu = PopupMenu2
      ShowHint = True
      Sorted = True
      TabOrder = 2
    end
    object Button3: TButton
      Left = 8
      Top = 208
      Width = 102
      Height = 35
      Hint = 'Limpar campos'
      Caption = 'Limpar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Button3Click
    end
    object Button1: TButton
      Left = 110
      Top = 208
      Width = 110
      Height = 35
      Caption = 'Processar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = Button1Click
    end
    object Button5: TButton
      Left = 221
      Top = 208
      Width = 114
      Height = 35
      Hint = 'Carregar arquivo de estrutura ?'
      Caption = 'Carregar Estrutura'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = Button5Click
    end
    object GroupBox4: TGroupBox
      Left = 6
      Top = 11
      Width = 326
      Height = 48
      TabOrder = 0
      object Label4: TLabel
        Left = 10
        Top = 8
        Width = 50
        Height = 13
        Caption = 'Posi'#231#227'o:'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 75
        Top = 8
        Width = 57
        Height = 13
        Caption = 'Tamanho:'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit2: TEdit
        Left = 10
        Top = 24
        Width = 55
        Height = 19
        Enabled = False
        MaxLength = 4
        TabOrder = 0
      end
      object Edit3: TEdit
        Left = 75
        Top = 24
        Width = 55
        Height = 19
        Enabled = False
        MaxLength = 3
        TabOrder = 1
      end
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 260
    Width = 764
    Height = 53
    Align = alBottom
    Caption = ' Status: '
    Color = clBtnFace
    Ctl3D = False
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 2
    object Label8: TLabel
      Left = 8
      Top = 36
      Width = 59
      Height = 13
      Caption = 'Rejeitados..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 8
      Top = 24
      Width = 58
      Height = 13
      Caption = 'Gravados...:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 12
      Width = 58
      Height = 13
      Caption = 'Lidos..........:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 68
      Top = 12
      Width = 6
      Height = 13
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 68
      Top = 24
      Width = 6
      Height = 13
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 68
      Top = 36
      Width = 6
      Height = 13
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object GroupBox5: TGroupBox
    Left = 290
    Top = 0
    Width = 135
    Height = 260
    Caption = ' Arquivos selecionados '
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 3
    object Label10: TLabel
      Left = 1
      Top = 246
      Width = 133
      Height = 13
      Align = alBottom
      Caption = 'Total : 0'
      Color = clMoneyGreen
      ParentColor = False
    end
    object ListBox2: TListBox
      Left = 4
      Top = 13
      Width = 128
      Height = 230
      Hint = 'Clique com o bot'#227'o direito para excluir os itens'
      ItemHeight = 13
      ParentShowHint = False
      PopupMenu = PopupMenu1
      ShowHint = True
      TabOrder = 0
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 248
    Top = 96
  end
  object PopupMenu1: TPopupMenu
    Left = 296
    Top = 24
    object Excluiroitemselecionado1: TMenuItem
      Caption = 'Excluir o item selecionado'
      OnClick = Excluiroitemselecionado1Click
    end
    object Excluirtodosositens1: TMenuItem
      Caption = 'Excluir todos os itens'
      OnClick = Excluirtodosositens1Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 168
    Top = 96
    object Sobre1: TMenuItem
      Caption = 'Sobre'
      Visible = False
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 440
    Top = 112
    object Excluiroitemselecionado2: TMenuItem
      Caption = 'Excluir o item selecionado'
      OnClick = Excluiroitemselecionado2Click
    end
    object Excluirtodosositens2: TMenuItem
      Caption = 'Excluir todos os itens'
      OnClick = Excluirtodosositens2Click
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 16
    Top = 184
    object Adicionartodososarquivos1: TMenuItem
      Caption = 'Adicionar todos os arquivos'
      OnClick = Adicionartodososarquivos1Click
    end
  end
end
