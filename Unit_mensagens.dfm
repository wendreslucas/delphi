object frm_mensagens: Tfrm_mensagens
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frm_mensagens'
  ClientHeight = 292
  ClientWidth = 742
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 742
    Height = 292
    Align = alClient
    TabOrder = 0
    object shp_fundo: TShape
      Left = 1
      Top = 1
      Width = 740
      Height = 290
      Align = alClient
      ExplicitLeft = 2
      ExplicitTop = 0
      ExplicitHeight = 266
    end
    object lb_titulo_janela: TLabel
      Left = 16
      Top = 15
      Width = 74
      Height = 21
      Caption = 'ATEN'#199#195'O'
      Color = clAppWorkSpace
      Font.Charset = ANSI_CHARSET
      Font.Color = 10658466
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object img_icone: TImage
      Left = 32
      Top = 88
      Width = 128
      Height = 128
      AutoSize = True
      Proportional = True
    end
    object lb_titulo_mensagem: TLabel
      Left = 176
      Top = 72
      Width = 55
      Height = 21
      Caption = 'T'#205'TULO'
      Color = clAppWorkSpace
      Font.Charset = ANSI_CHARSET
      Font.Color = 10658466
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lb_msg: TLabel
      Left = 176
      Top = 117
      Width = 183
      Height = 21
      Caption = 'Mensagem para o Usu'#225'rio'
      Color = clAppWorkSpace
      Font.Charset = ANSI_CHARSET
      Font.Color = 10658466
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object pnl_barra: TPanel
      Left = 2
      Top = 50
      Width = 740
      Height = 1
      Color = 10658466
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10658466
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object pnl_sim: TPanel
      Left = 584
      Top = 192
      Width = 121
      Height = 35
      BevelOuter = bvNone
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 1
      object spd_sim: TSpeedButton
        Left = 0
        Top = 0
        Width = 121
        Height = 35
        Cursor = crHandPoint
        Align = alClient
        Caption = 'SIM (ENTER)'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = spd_simClick
        ExplicitLeft = -1
      end
    end
    object pnl_nao: TPanel
      Left = 456
      Top = 192
      Width = 121
      Height = 35
      BevelOuter = bvNone
      Color = 14079702
      ParentBackground = False
      TabOrder = 2
      object spd_nao: TSpeedButton
        Left = 0
        Top = 0
        Width = 121
        Height = 35
        Cursor = crHandPoint
        Align = alClient
        Caption = 'N'#195'O (ESC)'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = spd_naoClick
        ExplicitLeft = 1
        ExplicitTop = 8
      end
    end
  end
end
