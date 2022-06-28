object Form1: TForm1
  Left = 364
  Top = 154
  Width = 350
  Height = 490
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = ' Junta Arquivo '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 342
    Height = 225
    Align = alTop
    Caption = ' Selecionar o(s) arquivo(s) '
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object DriveComboBox1: TDriveComboBox
      Left = 5
      Top = 16
      Width = 332
      Height = 19
      DirList = DirectoryListBox1
      TabOrder = 0
    end
    object DirectoryListBox1: TDirectoryListBox
      Left = 5
      Top = 37
      Width = 332
      Height = 90
      FileList = FileListBox1
      ItemHeight = 16
      TabOrder = 1
    end
    object FileListBox1: TFileListBox
      Left = 5
      Top = 130
      Width = 332
      Height = 90
      ItemHeight = 13
      ParentShowHint = False
      PopupMenu = PopupMenu1
      ShowHint = True
      TabOrder = 2
      OnDblClick = FileListBox1DblClick
      OnMouseMove = FileListBox1MouseMove
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 225
    Width = 342
    Height = 120
    Align = alTop
    Caption = 'Arquivo(s) adicionado(s)'
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    object Label3: TLabel
      Left = 1
      Top = 106
      Width = 340
      Height = 13
      Align = alBottom
      Caption = 'Total arq: 0'
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object ListBox1: TListBox
      Left = 5
      Top = 13
      Width = 332
      Height = 90
      ItemHeight = 13
      ParentShowHint = False
      PopupMenu = PopupMenu2
      ShowHint = True
      TabOrder = 0
      OnMouseMove = ListBox1MouseMove
    end
  end
  object GroupBox6: TGroupBox
    Left = 0
    Top = 345
    Width = 342
    Height = 60
    Align = alTop
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    object SpeedButton4: TSpeedButton
      Left = 5
      Top = 8
      Width = 332
      Height = 47
      Cursor = crHandPoint
      Hint = 'Processar arquivo(s)'
      Caption = '&Processar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton4Click
    end
  end
  object GroupBox5: TGroupBox
    Left = 0
    Top = 405
    Width = 342
    Height = 39
    Align = alTop
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 3
    object Label1: TLabel
      Left = 1
      Top = 6
      Width = 340
      Height = 16
      Align = alBottom
      Caption = ' Lidos..: 000000'
      Color = clMoneyGreen
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlBottom
    end
    object Label2: TLabel
      Left = 1
      Top = 22
      Width = 340
      Height = 16
      Align = alBottom
      Caption = ' Proc...: 000000 '
      Color = clMoneyGreen
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlBottom
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 110
    Top = 183
    object Adicionararquivoselecionado1: TMenuItem
      Caption = 'Adicionar arquivo selecionado'
      OnClick = Adicionararquivoselecionado1Click
    end
    object Adicionartodososarquivos1: TMenuItem
      Caption = 'Adicionar todos os arquivos'
      OnClick = Adicionartodososarquivos1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 107
    Top = 257
    object Excluirarquivoselecionado1: TMenuItem
      Caption = 'Excluir arquivo selecionado'
      OnClick = Excluirarquivoselecionado1Click
    end
    object Excluirtodososarquivos1: TMenuItem
      Caption = 'Excluir todos os arquivos'
      OnClick = Excluirtodososarquivos1Click
    end
  end
  object mm1: TMainMenu
    Left = 116
    Top = 88
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      object Fecharprograma1: TMenuItem
        Caption = 'Fechar programa'
        OnClick = Fecharprograma1Click
      end
    end
    object Sobre1: TMenuItem
      Caption = 'Sobre'
      object Juntaarquivo1: TMenuItem
        Caption = 'Junta arquivo'
        OnClick = Juntaarquivo1Click
      end
    end
  end
end
