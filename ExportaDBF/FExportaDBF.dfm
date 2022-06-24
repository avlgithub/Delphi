object Form1: TForm1
  Left = 344
  Top = 180
  Width = 323
  Height = 319
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = ' Exportando Tabela DBF'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 315
    Height = 240
    Align = alTop
    Caption = ' Selecione a tabela  '
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object DriveComboBox1: TDriveComboBox
      Left = 7
      Top = 16
      Width = 300
      Height = 19
      DirList = DirectoryListBox1
      TabOrder = 0
    end
    object DirectoryListBox1: TDirectoryListBox
      Left = 7
      Top = 36
      Width = 300
      Height = 97
      FileList = FileListBox1
      ItemHeight = 16
      TabOrder = 1
    end
    object FileListBox1: TFileListBox
      Left = 8
      Top = 135
      Width = 300
      Height = 97
      ItemHeight = 13
      Mask = '*.DBF'
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 240
    Width = 315
    Height = 52
    Align = alTop
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    object Button1: TButton
      Left = 6
      Top = 9
      Width = 305
      Height = 39
      Cursor = crHandPoint
      Caption = ':: Exportar ::'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object ADODataSet1: TADODataSet
    Parameters = <>
    Left = 92
    Top = 178
  end
  object Table1: TTable
    AutoCalcFields = False
    Left = 121
    Top = 178
  end
end
