object frm_config_servidor: Tfrm_config_servidor
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 498
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object shp_fundo: TShape
    Left = 0
    Top = 0
    Width = 792
    Height = 498
    Align = alClient
    ExplicitLeft = 48
    ExplicitWidth = 816
    ExplicitHeight = 531
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 498
    Align = alClient
    BevelOuter = bvNone
    Color = clSilver
    ParentBackground = False
    TabOrder = 0
    object pnl_config_atual: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 291
      Width = 786
      Height = 201
      Margins.Bottom = 0
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      Enabled = False
      ParentBackground = False
      TabOrder = 0
      object lb_config_atual: TLabel
        Left = 24
        Top = 10
        Width = 135
        Height = 20
        Caption = 'Configura'#231#227'o Atual'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMenuHighlight
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lb_caminho_atual: TLabel
        Left = 40
        Top = 53
        Width = 117
        Height = 15
        Caption = 'Caminho do Servidor*'
        Color = clMedGray
        Font.Charset = ANSI_CHARSET
        Font.Color = 10658466
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object lb_nome_base_atual: TLabel
        Left = 40
        Top = 109
        Width = 133
        Height = 15
        Caption = 'Nome da Base de Dados*'
        Font.Charset = ANSI_CHARSET
        Font.Color = 10658466
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lb_login_atual: TLabel
        Left = 315
        Top = 109
        Width = 35
        Height = 15
        Caption = 'Login*'
        Font.Charset = ANSI_CHARSET
        Font.Color = 10658466
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lb_porta_atual: TLabel
        Left = 571
        Top = 51
        Width = 33
        Height = 15
        Caption = 'Porta*'
        Font.Charset = ANSI_CHARSET
        Font.Color = 10658466
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lb_senha_atual: TLabel
        Left = 571
        Top = 109
        Width = 37
        Height = 15
        Caption = 'Senha*'
        Font.Charset = ANSI_CHARSET
        Font.Color = 10658466
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Panel8: TPanel
        Left = 24
        Top = 36
        Width = 769
        Height = 1
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
      end
      object ed_caminho_atual: TEdit
        Left = 40
        Top = 74
        Width = 457
        Height = 21
        TabStop = False
        ReadOnly = True
        TabOrder = 1
      end
      object ed_nome_base_atual: TEdit
        Left = 40
        Top = 130
        Width = 182
        Height = 21
        TabStop = False
        ReadOnly = True
        TabOrder = 2
      end
      object ed_login_atual: TEdit
        Left = 315
        Top = 130
        Width = 182
        Height = 21
        TabStop = False
        ReadOnly = True
        TabOrder = 3
      end
      object ed_porta_atual: TEdit
        Left = 571
        Top = 72
        Width = 182
        Height = 21
        TabStop = False
        ReadOnly = True
        TabOrder = 4
      end
      object ed_senha_atual: TEdit
        Left = 571
        Top = 130
        Width = 182
        Height = 21
        TabStop = False
        PasswordChar = '*'
        ReadOnly = True
        TabOrder = 5
      end
    end
    object pnl_nova_config: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 95
      Width = 786
      Height = 193
      Margins.Bottom = 0
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object lb_nova_conf: TLabel
        Left = 24
        Top = 7
        Width = 105
        Height = 15
        Caption = 'Nova Configura'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMenuHighlight
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lb_caminho_novo: TLabel
        Left = 32
        Top = 45
        Width = 117
        Height = 15
        Caption = 'Caminho do Servidor*'
        Color = clMedGray
        Font.Charset = ANSI_CHARSET
        Font.Color = 10658466
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object lb_porta_nova: TLabel
        Left = 563
        Top = 43
        Width = 33
        Height = 15
        Caption = 'Porta*'
        Font.Charset = ANSI_CHARSET
        Font.Color = 10658466
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lb_base_nova: TLabel
        Left = 32
        Top = 101
        Width = 133
        Height = 15
        Caption = 'Nome da Base de Dados*'
        Font.Charset = ANSI_CHARSET
        Font.Color = 10658466
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object bl_login_novo: TLabel
        Left = 307
        Top = 99
        Width = 35
        Height = 15
        Caption = 'Login*'
        Font.Charset = ANSI_CHARSET
        Font.Color = 10658466
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lb_senha_nova: TLabel
        Left = 563
        Top = 101
        Width = 37
        Height = 15
        Caption = 'Senha*'
        Font.Charset = ANSI_CHARSET
        Font.Color = 10658466
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Panel7: TPanel
        Left = 24
        Top = 24
        Width = 769
        Height = 1
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
      end
      object ed_caminho_novo: TEdit
        Tag = 5
        Left = 32
        Top = 66
        Width = 457
        Height = 21
        Hint = 'Caminho do Banco'
        TabOrder = 1
      end
      object ed_base_nova: TEdit
        Tag = 5
        Left = 32
        Top = 122
        Width = 182
        Height = 21
        Hint = 'Nome do Banco'
        TabOrder = 3
      end
      object ed_senha_nova: TEdit
        Tag = 5
        Left = 563
        Top = 122
        Width = 182
        Height = 21
        Hint = 'Senha'
        PasswordChar = '*'
        TabOrder = 5
      end
      object ed_login_novo: TEdit
        Tag = 5
        Left = 307
        Top = 120
        Width = 182
        Height = 21
        Hint = 'Login'
        TabOrder = 4
      end
      object ed_porta_nova: TEdit
        Tag = 5
        Left = 563
        Top = 64
        Width = 182
        Height = 21
        Hint = 'Porta de Conex'#227'o'
        TabOrder = 2
      end
    end
    object pnl_nome_tela: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 786
      Height = 89
      Margins.Bottom = 0
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      DesignSize = (
        786
        89)
      object Image: TImage
        Left = 24
        Top = 8
        Width = 64
        Height = 64
        AutoSize = True
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000400000
          004008030000009DB781EC00000123504C5445000000000000007F7F3F3F3F33
          33662A55553F3F3F3855553F3F553648483344552F3F4F3C4B4B3543503C4855
          394551334751384B4B36485134464F394A5237474F38464D3744503646513746
          5037454E39464F38454D37485036474F38485036454D36455038464D37455037
          484F36474E37464F36484E37454E36474F37464E37465036474F35474E37484F
          36474E36454E36464F36474E36464E37474F37474F36464E37464F36474F3647
          4E37464E37464F37474E37464E36464E36474F37474E37464F37474E37464F36
          464E36474E36474F37474E37464E37474F37464E36464E36474F36474E36474F
          36474E37474E37474E36474E37464F36474F36464E36464E37474F37474E3746
          4E36464F36474F37464E36474F36474E36464E37474F3C6EE64B000000607452
          4E5300010204050608090C0E0F1011131516191B1C1D1F2024292F33373A3B3C
          3D3F424648494A4B5355585D656667686A6B7174757F808182868788898A8BA2
          A3A4A5AAAFB4B5B6B7B9BCC1C2C3C4C5C8C9CCD3D6D8DBDCE0E1E2E3E4E5E6E8
          E9EAE85EEB9E000002064944415478DA6364A010308E1A306A00F50C50316527
          59E7CF53771106441E7A4AB201B2D62B1006242C20C3F1104D0803B81518EE7F
          4321493380DBEB2583F856462412C5045F6124CE9B2D580CD0113AC460FF9A09
          89BC86691D0A07CD006D6190264624924403B8BD5E318A6C63442251BCE02382
          C479BD155B207229303CF8864292180B144723650690A19F81819E5E303903A6
          2C8F136900CC473051131D082BE1E671220D5880226A22CB0F1578FCF10C1906
          E8AAEC0B840A2C777A7299740322F6BF840B8839AE24DD002085C122D580A0F7
          673F31F0190BAE23D7003663E5D30CA6F7CEFC22D7000606290B8613CF505592
          6600031BC32F06320D083DF5102E236FBA86740314EC2E5DFC0F6631EAEB1D7A
          40BA010C2266FF4EBE07D2FCA65C275E3190610003B381CE4220157FE5C25F06
          B20C003125185E605545B401260C67868A01B6CA0CB092240188EF1E26D5000E
          EFAB37E01C35FD2DDF49F682A4EBF6D750A6B0D7DE6764848191ECD63F6006B3
          E7D3F3E40422A3D3A7D3608699E0EE7F64C502BFF7B107404ACE6ECB07326201
          0414CDB77E66E0F13A7F9B9C6804031BF67DFF9D7E1E6520DB0016AF078C8A5B
          7F2304A2B7B331FC765F46B4010C629E0CDB91722E8305EF5906938F27893780
          4193E13A3297D558F9FFDD73BF711A1079F80903A940CE0AA9A1A96CCA41B201
          3F4EDD43184001183560D400AA18000004FF3A5038253F120000000049454E44
          AE426082}
      end
      object lb_nome_tela: TLabel
        Left = 94
        Top = 22
        Width = 178
        Height = 20
        Caption = 'Configura'#231#227'o do Servidor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMenuHighlight
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lb_inf_tela: TLabel
        Left = 94
        Top = 48
        Width = 445
        Height = 17
        Caption = 
          'Preencha de acordo com a localiza'#231#227'o de acesso ao seu servidor d' +
          'e Dados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object pnl_fundo_confirmar: TPanel
        Left = 545
        Top = 11
        Width = 230
        Height = 75
        Anchors = [akTop, akRight]
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object Panel5: TPanel
          Left = 0
          Top = 40
          Width = 110
          Height = 28
          BevelOuter = bvNone
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 0
          object spd_confirmar: TSpeedButton
            Left = 0
            Top = 0
            Width = 110
            Height = 28
            Cursor = crHandPoint
            Align = alClient
            Caption = '&Confirmar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            OnClick = spd_confirmarClick
            ExplicitLeft = 2
          end
        end
        object pnl_fundo_cancelar: TPanel
          Left = 118
          Top = 40
          Width = 110
          Height = 28
          BevelOuter = bvNone
          Color = 14079702
          ParentBackground = False
          TabOrder = 1
          object spd_cancelar: TSpeedButton
            Left = 0
            Top = 0
            Width = 110
            Height = 28
            Cursor = crHandPoint
            Align = alClient
            Caption = 'C&ancelar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            OnClick = spd_cancelarClick
            ExplicitLeft = -2
          end
        end
      end
    end
  end
end
