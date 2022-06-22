object Form1: TForm1
  Left = 319
  Top = 157
  Width = 330
  Height = 361
  Caption = ' Apura Registro deslocados - FJPII'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 308
    Width = 322
    Height = 13
    Align = alBottom
    Caption = ' '
    Color = clMoneyGreen
    ParentColor = False
  end
  object Label2: TLabel
    Left = 0
    Top = 321
    Width = 322
    Height = 13
    Align = alBottom
    Caption = ' '
    Color = clRed
    ParentColor = False
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 322
    Height = 243
    Align = alTop
    Caption = 'Selecione o arquivo'
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object DriveComboBox1: TDriveComboBox
      Left = 5
      Top = 14
      Width = 310
      Height = 19
      DirList = DirectoryListBox1
      TabOrder = 0
    end
    object DirectoryListBox1: TDirectoryListBox
      Left = 5
      Top = 37
      Width = 310
      Height = 97
      FileList = FileListBox1
      ItemHeight = 16
      TabOrder = 1
    end
    object FileListBox1: TFileListBox
      Left = 5
      Top = 138
      Width = 310
      Height = 97
      ItemHeight = 13
      Mask = '*.txt'
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 243
    Width = 322
    Height = 65
    Align = alClient
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    object tfXPButton1: TtfXPButton
      Left = 8
      Top = 8
      Width = 305
      Height = 48
      Cursor = crHandPoint
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      OnClick = tfXPButton1Click
      Caption = 'Processar'
      GlyphLayout = glLeft
    end
  end
end
