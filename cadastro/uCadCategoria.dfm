inherited frmCadCategoria: TfrmCadCategoria
  Caption = 'Cadastro de Categorias'
  ClientHeight = 613
  ClientWidth = 984
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 996
  ExplicitHeight = 651
  TextHeight = 15
  inherited pgcPrincipal: TPageControl
    Width = 984
    Height = 576
    ExplicitWidth = 1022
    ExplicitHeight = 575
    inherited tabListagem: TTabSheet
      ExplicitWidth = 976
      ExplicitHeight = 546
      inherited pnlListagemTopo: TPanel
        Width = 976
        ExplicitWidth = 1014
        inherited mskPesquisar: TMaskEdit
          Text = ''
          TextHint = 'Digite sua Pesquisa'
        end
      end
      inherited grdListagem: TDBGrid
        Width = 976
        Height = 481
        Columns = <
          item
            Expanded = False
            FieldName = 'categoriaId'
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Width = 459
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitWidth = 976
      ExplicitHeight = 546
    end
  end
  inherited pnlRodape: TPanel
    Top = 576
    Width = 984
    ExplicitTop = 575
    ExplicitWidth = 1022
    inherited btnFechar: TBitBtn
      Left = 897
    end
    inherited btnNavigator: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited QryListagem: TZQuery
    SQL.Strings = (
      'SELECT categoriaId, descricao FROM categorias')
    object QryListagemcategoriaId: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'categoriaId'
      ReadOnly = True
    end
    object QryListagemdescricao: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 30
    end
  end
end
