object frmTelaHeranca: TfrmTelaHeranca
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Informe Aqui o T'#237'tulo'
  ClientHeight = 612
  ClientWidth = 1010
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnActivate = FormActivate
  TextHeight = 15
  object pgcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 1010
    Height = 575
    ActivePage = tabListagem
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 1018
    ExplicitHeight = 574
    object tabListagem: TTabSheet
      Caption = 'Listagem'
      object pnlListagemTopo: TPanel
        Left = 0
        Top = 0
        Width = 1002
        Height = 65
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 1010
        object lblIndice: TLabel
          Left = 7
          Top = 5
          Width = 85
          Height = 15
          Caption = 'CampoPesquisa'
        end
        object mskPesquisar: TMaskEdit
          Left = 7
          Top = 22
          Width = 409
          Height = 23
          TabOrder = 0
          Text = 'Digite sua pesquisa'
        end
        object btnPesquisar: TBitBtn
          Left = 422
          Top = 21
          Width = 75
          Height = 25
          Caption = '&Pesquisar'
          TabOrder = 1
        end
      end
      object grdListagem: TDBGrid
        Left = 0
        Top = 65
        Width = 1002
        Height = 480
        Align = alClient
        DataSource = dtsListagem
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
    end
    object tabManutencao: TTabSheet
      Caption = 'Manuten'#231#227'o'
      ImageIndex = 1
    end
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 575
    Width = 1010
    Height = 37
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 574
    ExplicitWidth = 1018
    DesignSize = (
      1010
      37)
    object btnNovo: TBitBtn
      Left = 32
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Novo'
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnAlterar: TBitBtn
      Left = 120
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Alterar'
      TabOrder = 1
      OnClick = btnAlterarClick
    end
    object btnCancelar: TBitBtn
      Left = 208
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 2
      OnClick = btnCancelarClick
    end
    object btnGravar: TBitBtn
      Left = 296
      Top = 6
      Width = 75
      Height = 25
      Caption = '&Gravar'
      TabOrder = 3
      OnClick = btnGravarClick
    end
    object btnApagar: TBitBtn
      Left = 384
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Apaga&r'
      TabOrder = 4
      OnClick = btnApagarClick
    end
    object btnFechar: TBitBtn
      Left = 931
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Fechar'
      TabOrder = 5
      OnClick = btnFecharClick
      ExplicitLeft = 943
    end
    object btnNavigator: TDBNavigator
      Left = 465
      Top = 6
      Width = 220
      Height = 25
      DataSource = dtsListagem
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 6
    end
  end
  object QryListagem: TZQuery
    Connection = dtmPrincipal.ConexaoDB
    Params = <>
    Left = 604
    Top = 34
  end
  object dtsListagem: TDataSource
    DataSet = QryListagem
    Left = 684
    Top = 34
  end
end
