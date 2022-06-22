object Form1: TForm1
  Left = 298
  Top = 195
  Width = 504
  Height = 307
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = ' Verifica Limite de Campo '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 0
    Top = 248
    Width = 496
    Height = 13
    Align = alBottom
    Color = clMoneyGreen
    ParentColor = False
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 262
    Height = 247
    Caption = '  Selecione o arquivo  '
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object DriveComboBox1: TDriveComboBox
      Left = 8
      Top = 20
      Width = 250
      Height = 19
      DirList = DirectoryListBox1
      TabOrder = 0
    end
    object DirectoryListBox1: TDirectoryListBox
      Left = 8
      Top = 40
      Width = 250
      Height = 97
      FileList = FileListBox1
      ItemHeight = 16
      TabOrder = 1
    end
    object FileListBox1: TFileListBox
      Left = 8
      Top = 144
      Width = 250
      Height = 97
      ItemHeight = 13
      Mask = '*.txt'
      TabOrder = 2
      OnChange = FileListBox1Change
    end
  end
  object GroupBox2: TGroupBox
    Left = 264
    Top = 0
    Width = 230
    Height = 246
    Caption = '  Par'#226'metros  '
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    object Label7: TLabel
      Left = 8
      Top = 80
      Width = 84
      Height = 13
      Caption = 'Limite..................:'
      Enabled = False
    end
    object Label6: TLabel
      Left = 7
      Top = 53
      Width = 86
      Height = 13
      Caption = 'Size do  Campo...:'
      Enabled = False
    end
    object Label5: TLabel
      Left = 8
      Top = 24
      Width = 83
      Height = 13
      Caption = 'Posi'#231#227'o..............:'
      Enabled = False
    end
    object Edit1: TEdit
      Left = 104
      Top = 24
      Width = 121
      Height = 19
      Hint = 'Informe a posi'#231#227'o do campo'
      Enabled = False
      MaxLength = 5
      TabOrder = 0
      Text = 'Edit1'
    end
    object Edit2: TEdit
      Left = 104
      Top = 50
      Width = 121
      Height = 19
      Hint = 'Informe o tamanho do campo'
      Enabled = False
      MaxLength = 5
      TabOrder = 1
      Text = 'Edit2'
    end
    object Edit3: TEdit
      Left = 105
      Top = 76
      Width = 121
      Height = 19
      Hint = 'Informe o limite do campo'
      Enabled = False
      MaxLength = 5
      TabOrder = 2
      Text = 'Edit3'
    end
    object GroupBox3: TGroupBox
      Left = 1
      Top = 122
      Width = 228
      Height = 62
      Align = alBottom
      Caption = '  Status  '
      TabOrder = 3
      object Label2: TLabel
        Left = 1
        Top = 48
        Width = 226
        Height = 13
        Align = alBottom
        Caption = 'Label2'
        Color = clMoneyGreen
        ParentColor = False
      end
      object Label1: TLabel
        Left = 1
        Top = 35
        Width = 226
        Height = 13
        Align = alBottom
        Caption = 'Label1'
        Color = clMoneyGreen
        ParentColor = False
      end
    end
    object CheckBox1: TCheckBox
      Left = 7
      Top = 104
      Width = 97
      Height = 17
      Hint = 'Gerar relat'#243'rio de estouro'
      Caption = 'Gerar Relat'#243'rio'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 4
    end
    object grp1: TGroupBox
      Left = 1
      Top = 184
      Width = 228
      Height = 61
      Align = alBottom
      TabOrder = 5
      object btn1: TButton
        Left = 4
        Top = 8
        Width = 218
        Height = 49
        Cursor = crHandPoint
        Hint = 'Processar'
        Caption = '&Processar'
        DragCursor = crHourGlass
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = btn1Click
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 160
    Top = 208
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      object Sobre1: TMenuItem
        Caption = 'Sobre: Verifica Limite de Campo'
        OnClick = Sobre1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object FecharPrograma1: TMenuItem
        Caption = 'Fechar Programa'
      end
    end
  end
end
