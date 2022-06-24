object FormConf: TFormConf
  Left = 397
  Top = 237
  Width = 420
  Height = 471
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = '  Visualiza Tabela - Configura'#231#245'es'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PrintScale = poNone
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 412
    Height = 398
    ActivePage = TabSheet1
    Align = alClient
    MultiLine = True
    TabOrder = 0
    TabPosition = tpBottom
    object TabSheet1: TTabSheet
      Caption = 'Conf. inicial'
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 404
        Height = 58
        Align = alTop
        Caption = ' Sempre abrir os arquivo de estrutura ou TXT:  '
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object RadioButton1: TRadioButton
          Left = 16
          Top = 35
          Width = 385
          Height = 17
          Cursor = crHandPoint
          Hint = 
            'Abre o arquivo txt direto do programa '#233' necess'#225'rio que aba "Arqu' +
            'ivo TXT" esteja visivel.'
          Caption = 'Apartir da aba do programa "Arquivo TXT"'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = RadioButton1Click
        end
        object RadioButton2: TRadioButton
          Left = 16
          Top = 16
          Width = 385
          Height = 17
          Cursor = crHandPoint
          Hint = 'Abre o arquivo txt direto do Bloco de Notas ou do EditPad.'
          Caption = 'Apartir de um programa instalado no computador'
          Color = clBtnFace
          ParentColor = False
          TabOrder = 1
          OnClick = RadioButton2Click
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 58
        Width = 404
        Height = 75
        Align = alTop
        Caption = ' Resultado da pesquisa '
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        object RadioButton3: TRadioButton
          Left = 16
          Top = 16
          Width = 385
          Height = 17
          Cursor = crHandPoint
          Hint = 'Filtra registro mostrando na tabela'
          Caption = 'Apenas filtrar o registro indicado no campo'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = RadioButton3Click
        end
        object RadioButton4: TRadioButton
          Left = 16
          Top = 35
          Width = 385
          Height = 17
          Cursor = crHandPoint
          Hint = 
            'Filtra registro e mostra na aba Arquivo TXT, necess'#225'rio que aba ' +
            'arquivo TXT esteja vis'#237'vel.'
          Caption = 'Mostrar resultado da pesquisa na aba Arquivo TXT'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = RadioButton4Click
        end
        object RadioButton5: TRadioButton
          Left = 16
          Top = 54
          Width = 385
          Height = 17
          Cursor = crHandPoint
          Hint = 
            'Filtra registro e mostra na pr'#243'pria tabela e na aba Arquivo TXT,' +
            ' necess'#225'rio que aba arquivo TXT esteja vis'#237'vel.'
          Caption = 'Filtrar o registro e Mostrar o resultado na aba ArquivoTXT'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = RadioButton5Click
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 133
        Width = 404
        Height = 75
        Align = alTop
        Caption = ' Definindo o nome do arquivo TXT de saida da tabela: '
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        object RadioButton6: TRadioButton
          Left = 16
          Top = 16
          Width = 385
          Height = 17
          Cursor = crHandPoint
          Caption = 'Utilizar o nome do arquivo padr'#227'o do programa "VPADRA.TXT"'
          TabOrder = 0
          OnClick = RadioButton6Click
        end
        object RadioButton7: TRadioButton
          Left = 16
          Top = 35
          Width = 385
          Height = 17
          Cursor = crHandPoint
          Caption = 'Sempre solicitar o nome de saida do arquivo'
          TabOrder = 1
          OnClick = RadioButton7Click
        end
        object CheckBox2: TCheckBox
          Left = 18
          Top = 55
          Width = 385
          Height = 17
          Cursor = crHandPoint
          Caption = 
            'Sempre perguntar se deseja inserir um par'#226'metro de separa'#231#227'o no ' +
            'arquivo'
          TabOrder = 2
          OnClick = CheckBox2Click
        end
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 208
        Width = 404
        Height = 55
        Align = alTop
        Caption = ' Cria'#231#227'o de tabelas: '
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        object RadioButton8: TRadioButton
          Left = 16
          Top = 16
          Width = 385
          Height = 17
          Cursor = crHandPoint
          Caption = 
            'Criar tabla com nome de saida padr'#227'o "VPADRA.DBF" / "visualiza -' +
            ' SQL"'
          TabOrder = 0
          OnClick = RadioButton8Click
        end
        object RadioButton9: TRadioButton
          Left = 16
          Top = 35
          Width = 385
          Height = 17
          Cursor = crHandPoint
          Caption = 'Informar o nome de saida do arquivo'
          TabOrder = 1
          OnClick = RadioButton9Click
        end
      end
      object GroupBox6: TGroupBox
        Left = 0
        Top = 263
        Width = 404
        Height = 60
        Align = alTop
        Caption = ' Relat'#243'rio de quantidade: '
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 4
        object RadioButton10: TRadioButton
          Left = 16
          Top = 16
          Width = 365
          Height = 17
          Cursor = crHandPoint
          Caption = 'Gerar arquivo de relat'#243'rio de qtd utilizando o modelo padr'#227'o'
          Enabled = False
          TabOrder = 0
          OnClick = RadioButton10Click
        end
        object RadioButton11: TRadioButton
          Left = 16
          Top = 35
          Width = 365
          Height = 17
          Cursor = crHandPoint
          Caption = 'Utilizar minha alter'#231#227'o no modelo de relat'#243'rio'
          Enabled = False
          TabOrder = 1
          OnClick = RadioButton11Click
        end
        object Button1: TButton
          Left = 384
          Top = 16
          Width = 15
          Height = 15
          Cursor = crHandPoint
          Hint = 'Visualiza modelo padr'#227'o'
          Caption = '...'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 384
          Top = 35
          Width = 15
          Height = 15
          Cursor = crHandPoint
          Caption = '...'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = Button2Click
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 323
        Width = 404
        Height = 40
        Align = alTop
        Caption = ' Abrindo tabela: '
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
        object CheckBox1: TCheckBox
          Left = 16
          Top = 16
          Width = 385
          Height = 17
          Cursor = crHandPoint
          Caption = 'Sempre perguntar se tabela possui campo INDEXADOS'
          TabOrder = 0
          OnClick = CheckBox1Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Conf. do tipo do banco'
      ImageIndex = 1
      object GroupBox8: TGroupBox
        Left = 0
        Top = 0
        Width = 404
        Height = 372
        Align = alClient
        Caption = ' Cria'#231#227'o de tabela atrav'#233's do estrutura '
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object RadioButton12: TRadioButton
          Left = 8
          Top = 16
          Width = 385
          Height = 17
          Hint = 
            'Para criar ou visualizar tabela DBF '#233' necess'#225'rio que esteja inst' +
            'alado na m'#225'quina o DBE administreitor.'
          Caption = 'Criar e visualizar tabelas DataBase *.DBF'
          Checked = True
          Color = clMoneyGreen
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TabStop = True
          OnClick = RadioButton12Click
        end
        object RadioButton13: TRadioButton
          Left = 8
          Top = 32
          Width = 385
          Height = 17
          Hint = 
            'Para criar ou visualizar tabela SQL '#233' necess'#225'rio que esteja inst' +
            'alado o MySQL vers'#227'o 5 ou superior.'
          Caption = 'Criar e visualizar tabela apenas MySQL'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = RadioButton13Click
        end
        object GroupBox9: TGroupBox
          Left = 2
          Top = 50
          Width = 400
          Height = 155
          Caption = ' Par'#226'metros: '
          Color = clSilver
          ParentColor = False
          TabOrder = 2
          object Label7: TLabel
            Left = 1
            Top = 141
            Width = 398
            Height = 13
            Align = alBottom
            Alignment = taCenter
            Caption = 'N'#227'o foi poss'#237'vel conectar ao MySQL'
            Color = clRed
            ParentColor = False
            Visible = False
          end
          object Panel1: TPanel
            Left = 1
            Top = 14
            Width = 398
            Height = 127
            Align = alClient
            BevelInner = bvSpace
            BevelOuter = bvLowered
            BiDiMode = bdLeftToRight
            Ctl3D = False
            ParentBiDiMode = False
            ParentCtl3D = False
            TabOrder = 0
            object Label4: TLabel
              Left = 48
              Top = 56
              Width = 34
              Height = 13
              Caption = 'Senha:'
            end
            object Label3: TLabel
              Left = 43
              Top = 32
              Width = 39
              Height = 13
              Caption = 'Usu'#225'rio:'
            end
            object Label1: TLabel
              Left = 23
              Top = 10
              Width = 59
              Height = 13
              Caption = 'Server Host:'
            end
            object Label2: TLabel
              Left = 256
              Top = 10
              Width = 28
              Height = 13
              Caption = 'Porta:'
            end
            object Label5: TLabel
              Left = 32
              Top = 88
              Width = 3
              Height = 13
            end
            object Label6: TLabel
              Left = 8
              Top = 82
              Width = 74
              Height = 13
              Caption = 'Base de dados:'
            end
            object SpeedButton2: TSpeedButton
              Left = 212
              Top = 56
              Width = 50
              Height = 43
              Cursor = crHandPoint
              Enabled = False
              Flat = True
              Glyph.Data = {
                360C0000424D360C000000000000360000002800000020000000200000000100
                180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF404040FFFFFFFFFFFFFFFFFF4040404040404040404040
                40404040404040404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF404040404040FFFFFFFFFFFF4040404040404040404040404040
                40404040404040404040404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFF000000000000707770707770000000FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF000000404040404040404040FFFFFF0000000000000000000000004040
                40404040404040404040404040404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                0000000000707770707770DFD8DF707770000000FFFFFFFFFFFFFFFFFFFFFFFF
                00000000000040404040404040404000000060672F60672F60672FFFFF906067
                2F404040000000404040404040404040404040FFFFFFFFFFFF00000000000070
                7770707770DFD8DFDFD8DFDFD8DF707770000000FFFFFFFFFFFFFFFFFF000000
                00FFFF0000000000000000000000000000004040404040404040405050505050
                50FFFF9060672F000000404040404040404040000000000000707770707770DF
                D8DFDFD8DFFFFFFFDFD8DFDFD8DF707770000000FFFFFFFFFFFF00000000FFFF
                00FFFFCFFFFFDFD8DFBFBFBFBFBFBFA09F9FA09F9F9097909097907077707077
                70FFFF90FFFF90000000404040000000000000404040707770DFD8DFDFD8DFDF
                D8DFDFD8DFA09F9FFFFFFFDFD8DF707770000000FFFFFFFFFFFFFFFFFF0F0F0F
                00FFFF0000001F201F4040404040404040405050505050505050505050505050
                50FFFF90FFFF9060672F000000404040404040404040DFD8DFDFD8DFDFD8DFDF
                D8DF707770A09F9FFFFFFFDFD8DF707770000000FFFFFFFFFFFFFFFFFFFFFFFF
                1F201F1F201FFFFF90FFFFFFFFFF90FFFFFF60972F60972F60972F60972FFFFF
                FFFFFF9060672F60672F60672F404040404040404040DFD8DFDFD8DFDFD8DFDF
                D8DF707770A09F9FFFFFFFDFD8DF707770000000FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF1F201FFFFF90FFFF90FFFFFF60972F60972FFFFF90FFFFFFFFFF90FFFF
                90FFFF9060972F60672F60672F000000404040404040DFD8DFDFD8DFDFD8DFDF
                D8DF707770A09F9FFFFFFFDFD8DF707770000000FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF000000FFFF9060972F00B80060972F60972FFFFFFFFFFF90FFFFFFFFFF
                90FFFF9060972F60672F60672F000000404040404040404040DFD8DFDFD8DFDF
                D8DF707770A09F9FFFFFFFA09F9F707770000000FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF000000FFFF9060672F00B80060972F60972F60972FFFFF90FFFF90FFFF
                FFFFFF9060972FFFFF90FFFF90000000404040404040404040404040DFD8DFDF
                D8DF707770707770A09F9F000000707770000000FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF404040FFFF9060672F00B80060972F60672F60972F60672F60672F6097
                2F60972F60672F60672F60672F000000000000404040404040404040404040DF
                D8DF909790000000000000000000707770000000FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF00000060672F00B80060972F5050505050504040404040404040
                4040404000000000000000000000000000FFFF000000404040404040DFD8DF00
                00001F201F909790DFD8DF000000707770000000FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF404040000000FFFFCF00B800707770707770909790909790A09F
                9FA09F9FBFBFBFBFBFBFDFD8DFCFFFFF00FFFF00FFFF000000DFD8DFDFD8DFFF
                FFFFDFD8DFDFD8DFDFD8DF000000707770000000FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF000000FFFF9060672F5050505050505050505050505050
                504040404040404040401F201F00000000FFFF000000DFD8DFDFD8DFDFD8DFFF
                FFFFDFD8DFFFFFFFFFFFFFDFD8DF707770000000FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFF9060672F60672F60672FFFFF
                90000000404040DFD8DFDFD8DF000000000000DFD8DFDFD8DFDFD8DFDFD8DFFF
                FFFFFFFFFFA09F9FFFFFFFDFD8DF707770000000FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000004040
                40909790DFD8DFDFD8DFDFD8DF000000DFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDF
                D8DF707770A09F9FFFFFFFDFD8DF707770000000FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFDFD8DFDFD8DFDFD8
                DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDF
                D8DF707770A09F9FFFFFFFDFD8DF707770000000FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFDFD8DFDFD8DFDFD8
                DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDF
                D8DF707770A09F9FFFFFFFDFD8DF707770000000FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFDFD8DFDFD8DFDFD8
                DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDF
                D8DF707770A09F9FFFFFFFDFD8DF707770000000FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFDFD8DFDFD8DFDFD8
                DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDF
                D8DF707770505050DFD8DFDFD8DF707770000000FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFDFD8DFDFD8DFDFD8
                DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDF
                D8DF505050A09F9FFFFFFFFFFFFF707770000000FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFDFD8DFDFD8DFDFD8
                DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFFF
                FFFFFFFFFFFFFFFFBFBFBF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFDFD8DFDFD8DFDFD8
                DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFFFFFFFFFFFFFFF
                FFFFBFBFBF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFDFD8DFDFD8DFDFD8
                DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFFFFFFFFFFFFFFFFFFFBFBFBF00
                0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFDFD8DFDFD8DFDFD8
                DFDFD8DFDFD8DFDFD8DFDFD8DFFFFFFFFFFFFFFFFFFFBFBFBF000000000000FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFDFD8DFDFD8DFDFD8
                DFDFD8DFDFD8DFFFFFFFFFFFFFFFFFFFBFBFBF000000000000FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFDFD8DFDFD8DFDFD8
                DFFFFFFFFFFFFFFFFFFFBFBFBF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFDFD8DFFFFFFFFFFF
                FFFFFFFFBFBFBF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFBFBF
                BF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000DFD8DFBFBFBF0000000000
                00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              Layout = blGlyphBottom
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton2Click
              OnMouseMove = SpeedButton2MouseMove
            end
            object Edit4: TEdit
              Left = 88
              Top = 54
              Width = 97
              Height = 19
              Hint = 'Informe a senha de acesso.'
              Color = clInfoBk
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              MaxLength = 15
              ParentFont = False
              PasswordChar = '*'
              TabOrder = 0
            end
            object Edit3: TEdit
              Left = 88
              Top = 30
              Width = 160
              Height = 19
              Hint = 'Informe o nome de usu'#225'rio do banco.'
              Color = clInfoBk
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              MaxLength = 30
              ParentFont = False
              TabOrder = 1
              Text = 'root'
            end
            object Edit1: TEdit
              Left = 88
              Top = 8
              Width = 160
              Height = 19
              Hint = 'Informe o IP de onde est'#225' o instalado o MySQL.'
              Color = clInfoBk
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              Text = 'localhost'
            end
            object Edit2: TEdit
              Left = 288
              Top = 8
              Width = 33
              Height = 19
              Hint = 'Informe o numera da porta utilizada pelo MySQL.'
              Color = clInfoBk
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              MaxLength = 4
              ParentFont = False
              TabOrder = 3
              Text = '3306'
            end
            object Edit5: TEdit
              Left = 88
              Top = 80
              Width = 121
              Height = 19
              Hint = 'Informe o nome da nova base de dados que deseja criar.'
              Color = clInfoBk
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              MaxLength = 20
              ParentFont = False
              TabOrder = 4
              Text = 'estrutura'
            end
            object CheckBox3: TCheckBox
              Left = 88
              Top = 100
              Width = 129
              Height = 17
              Hint = 'Cria novo database'
              Caption = 'Criar base de dados.'
              Enabled = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 5
            end
          end
        end
        object Memo1: TMemo
          Left = 1
          Top = 209
          Width = 402
          Height = 162
          Align = alBottom
          Color = clBlack
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clLime
          Font.Height = -7
          Font.Name = 'Courier'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 3
        end
      end
    end
  end
  object GroupBox7: TGroupBox
    Left = 0
    Top = 398
    Width = 412
    Height = 46
    Align = alBottom
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 5
      Top = 8
      Width = 203
      Height = 35
      Cursor = crHandPoint
      Hint = 'Fechar configura'#231#245'es'
      Caption = '&Voltar ao menu principal'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        FE0A0000424DFE0A00000000000036000000280000001E0000001E0000000100
        180000000000C80A000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000003CFF00000000000000000000
        080E001321000407000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000003CFF00000000000000000000345B006A
        C4003D6A00010200000000000000000000000000000000000000000000000000
        000000060A000203000000000000000000000000000000000000000000000000
        0000000000000000000000003CFF000000000000000000004F910070E60071DD
        004A83000C13000000000000000001000C14002D4F004C870068BA007ADA007F
        E2007EE10075CF005DA500406E001A2C00030500000000000000000000000000
        00000000000000003CFF0000000000000000000069BD0089FC0076F2006FDA00
        5396001321001320003C6A0061B4006DD40073E0007BE60084EC0089EE008BF0
        0088EF0082EC007BE5006DCB005091001E340002030000000000000000000000
        000000003CFF0000000000000002040084DE00A9FF009FFF0076F2006FDE0060
        B20063B80070DA006FDF0071EB0082F4009EF900B9FD00C3FD00C6FE00BEFC00
        ACF90095F3007BE60070DD006AC900355E000508000000000000000000000000
        3CFF000000000000001321008FF000AAFF00AFFF00A8FF0082F7006FE2006FE2
        0075EF008BFC00B0FF00CBFF00D7FF00DBFF00DDFF00DFFF00E0FF00DEFF00D3
        FF00B2FF0088F60070E7006FDA004A88000A100000000000000000003CFF0000
        000000000026420094F800A8FF00ADFF00B2FF00ACFF008BFA008BFA00AEFF00
        C3FF00CDFF00D1FF00D4FF00D6FF00D9FF00DAFF00DAFF00DAFF00D9FF00D6FF
        00C6FF00A1FD0077EE006ED800457E0003050000000000003CFF000000000001
        0036630099FD00A5FF00AAFF00AFFF00B4FF00B5FF00BBFF00C0FF00C4FF00C9
        FF00CCFF00CFFF00D1FF00D3FF00D5FF00D5FF00D5FF00D3FF00D2FF00CFFF00
        CCFF00B0FE007DF1006FD80028470001010000003CFF000000000305004B8B00
        9DFE00A2FF00A7FF00ABFF00B1FF00B5FF00B9FF00BDFF00C0FF00C4FF00C7FF
        00CAFF00CCFF00CDFF00CFFF00CFFF00CFFF00CDFF00CCFF00CAFF00C8FF00C4
        FF00B3FF007FF10060B600101C0000003CFF00000000080F005DAB009BFF00A0
        FF00A4FF00A8FF00ADFF01B1FF02B5FF03B9FF03BDFF03C1FF03C3FF03C6FF03
        C7FF02C8FF01C9FF01C9FF00C9FF00C8FF00C7FF00C5FF00C3FF00C0FF00BDFF
        00AAFE0073E400335E0000003CFF000000000E1A006DC80098FF009CFF01A1FF
        06A7FF0DAEFF11B2FF13B7FF15BBFF15BEFF15C0FF15C2FF12C4FF0ABFFC06B4
        F405B4F308C2FC09C6FF04C4FF01C2FF00C0FF00BEFF00BBFF00B9FF00B5FF00
        91F70057A40004073CFF00000000172A007BE30697FF14A0FF21A9FF28AFFF27
        B2FF27B5FF26B8FF26BBFF25BEFF25C0FF1CBEFF03A2FC0078E30069CA003969
        00365C0476AF12B4F31AC2FF0EBEFF03B9FF00B6FF00B4FF00B0FF00A8FF006F
        CE0015263CFF0000000025460A88F02FA6FF35ABFF35AEFF35B1FF34B4FF34B7
        FF34B9FF33BBFF33BEFF32C0FF30C1FF1EB8FF0489F50071E20067C900284C00
        0D1802467019AEF02BC1FF26BFFF11B6FF03B0FF00ACFF00A8FF0085E500203C
        3CFF0000000037671A94F844AEFF43AEFF43B1FF42B4FF42B6FF41B8FF41BBFF
        40BDFF40BFFF40C0FF3FC2FF3EC3FF29BAFF0690F70071E3004C9300050A0003
        04055A912EB8FA3BC1FF39BEFF23B6FF05A9FF00A4FF0092EF0026473CFF0000
        01014B8D2EA1FD52B4FF52B4FF51B5FF51B6FF51B8FF50BAFF50BCFF4FBEFF4F
        C0FF4FC1FF4EC3FF4EC4FF4DC4FF3DBFFF119DFC00519E00060B000000001323
        1C91D54AC1FF4AC0FF49BEFF3BB7FF09A2FF0092F0002A493CFF000306055EB0
        42ACFF60BAFF5FBAFF5FB9FF5FB9FF5EBBFF5EBDFF5DBEFF5DC0FF5CC2FF5CC3
        FF5CC4FF5BC5FF59C5FF51C2FE3DB7FB0565A900080F0000000011211285D151
        C0FF57C1FF56C0FF56BEFF3FB2FF0B91F00028493CFF000C180B6FC758B6FF6D
        BFFF6CBFFF6CBFFF6CBFFF6BBFFF6AC0FF6AC1FF6AC2FF69C4FF69C4FF5DC0FF
        45B4FA299CE91775B9085085011D34000203000000003668128EEA5CC1FF64C3
        FF63C2FF63C0FF62BEFF35A0F00028483CFF001122147CD572C2FF7CC6FF7BC6
        FF7BC5FF7AC5FF7AC5FF76C4FF62BAFD4CABF53394E0136CB103477E00264A00
        0C1800010200000000000000030600264C006BD31E98F76FC5FF73C6FF73C4FF
        72C3FF72C2FF4AA5ED0124443CFF0011222588D985CAFF88CBFF7FC7FF73BFFC
        5AAEF23A93DB1E73BB0E4C83052D510014250009110002040000000001020007
        0F000B170019330041800066C90277E748ADFD80C9FF80C9FF80C8FF7FC7FF7F
        C7FF3D97DF00182F3CFF001122328ED86DBCFB45A0EC287CC6115490022B5100
        162C00080F000000000000000000000000000000000000001428004C970059B1
        0067CC006EDA0070E01F93F87EC7FF8ECEFF8DCEFF8DCDFF8CCDFF88CBFF2579
        C00008103CFF00050A01305D002A540010210003060000000000000000000000
        00000000000000000000000000000000000000001F3E0068CF006FDC006FDE01
        75E82194F988CBFF9CD4FF9CD4FF9CD4FF9BD4FF9BD4FF75BFFA0D4274000001
        3CFF000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000001F3F0975DF1384F12593F859B2FD96D1
        FFAADAFFAADAFFA9DAFFA9D9FFA8D9FFA5D8FF3B8BD00114260000003CFF0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000214157A9ED96D1FFACDBFFB6E0FFB7DFFFB6DFFF
        B6DFFFB5DFFFB5DFFFB4DFFF81C4F90537690002040000003CFF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000214176B7EDC5E6FFC5E6FFC5E6FFC4E6FFC4E6FFC3E6FFC3
        E5FFC2E5FF93CAF7185D9D0002040000000000003CFF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000021417EBAEDD2EBFFD2EBFFD1EBFFD1EBFFD1EBFFD0EBFFCDE9FF93C8
        F52465A2000E1D0000000000000000003CFF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        214185BDEDDEF1FFDEF1FFDDF1FFDDF0FFDDF0FFD0EAFF7EBCF1124D88000B18
        0000000000000000000000003CFF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000021418DC1
        EDECF7FFEBF7FFE1F2FFC1E2FD7DB7EA266AA900214300000000000000000000
        00000000000000003CFF00000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000019334489C571A8D7
        5B99CF387BB81B528805203D0009120000010000000000000000000000000000
        000000003CFF0000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000206000E1C001020000E1E00
        060C000101000000000000000000000000000000000000000000000000000000
        3CFF}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
  end
end
