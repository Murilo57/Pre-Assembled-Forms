object FrmMenu: TFrmMenu
  Left = 0
  Top = 0
  Caption = 'Menu'
  ClientHeight = 557
  ClientWidth = 993
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCentro: TPanel
    Left = 0
    Top = 0
    Width = 993
    Height = 86
    Align = alTop
    Color = clWhite
    TabOrder = 0
    ExplicitTop = -2
  end
  object pnlOpcoes: TPanel
    Left = 0
    Top = 86
    Width = 191
    Height = 471
    Align = alLeft
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      AlignWithMargins = True
      Left = 4
      Top = 215
      Width = 183
      Height = 35
      Margins.Top = 25
      Align = alTop
      ExplicitLeft = 2
      ExplicitTop = 89
    end
    object btnCadastro: TSpeedButton
      AlignWithMargins = True
      Left = 4
      Top = 26
      Width = 183
      Height = 35
      Margins.Top = 25
      Align = alTop
      Caption = 'Cadastro'
      OnClick = btnCadastroClick
      ExplicitLeft = 2
    end
    object btnAviso: TSpeedButton
      AlignWithMargins = True
      Left = 4
      Top = 89
      Width = 183
      Height = 35
      Margins.Top = 25
      Align = alTop
      ExplicitLeft = 2
    end
    object SpeedButton4: TSpeedButton
      AlignWithMargins = True
      Left = 4
      Top = 152
      Width = 183
      Height = 35
      Margins.Top = 25
      Align = alTop
      ExplicitLeft = 2
    end
  end
  object pnlGRID: TPanel
    Left = 191
    Top = 86
    Width = 802
    Height = 471
    Align = alClient
    Color = -1
    TabOrder = 2
    object StatusBar1: TStatusBar
      Left = 1
      Top = 451
      Width = 800
      Height = 19
      Panels = <>
    end
  end
  object MainMenu1: TMainMenu
    Left = 10
    Top = 15
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
    end
    object Consulta1: TMenuItem
      Caption = 'Consulta'
    end
    object Ajuda1: TMenuItem
      Caption = 'Ajuda'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 10
    Top = 105
    object Cadastro2: TMenuItem
      Caption = 'Cadastro'
      ShortCut = 16449
      OnClick = btnCadastroClick
    end
  end
end
