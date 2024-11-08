unit uTelaHeranca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ComCtrls, Vcl.ExtCtrls,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, uDTMConexao, uEnum;

type
  TfrmTelaHeranca = class(TForm)
    pgcPrincipal: TPageControl;
    pnlRodape: TPanel;
    tabListagem: TTabSheet;
    tabManutencao: TTabSheet;
    pnlListagemTopo: TPanel;
    mskPesquisar: TMaskEdit;
    btnPesquisar: TBitBtn;
    grdListagem: TDBGrid;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnCancelar: TBitBtn;
    btnGravar: TBitBtn;
    btnApagar: TBitBtn;
    btnFechar: TBitBtn;
    btnNavigator: TDBNavigator;
    QryListagem: TZQuery;
    dtsListagem: TDataSource;
    lblIndice: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnApagarClick(Sender: TObject);
  private
    { Private declarations }
    EstadoDoCadastro:TEstadoDoCadastro;

    procedure ControlarBotoes(btnNovo, btnCancelar, btnApagar, btnAlterar, btnGravar:TBitBtn; tdbNavigator:TDBNavigator;
                                          pgcPrincipal:TPageControl; Flag:Boolean);
    procedure ControlarIndiceTab(pgcPrincipal:TPageControl; Indice:integer);
  public
    { Public declarations }
  end;

var
  frmTelaHeranca: TfrmTelaHeranca;

implementation

{$R *.dfm}
//Procedimento de controle de tela
procedure TfrmTelaHeranca.ControlarBotoes(btnNovo, btnCancelar, btnApagar, btnAlterar, btnGravar:TBitBtn; tdbNavigator:TDBNavigator;
                                          pgcPrincipal:TPageControl; Flag:Boolean);
 Begin
  btnNovo.Enabled :=Flag;
  btnApagar.Enabled :=Flag;
  btnAlterar.Enabled :=Flag;
  tdbNavigator.Enabled :=Flag;
  pgcPrincipal.Pages[0].TabVisible :=Flag;
  btnCancelar.Enabled :=not(flag);
  btnGravar.Enabled :=not(Flag);

 end;
procedure TfrmTelaHeranca.ControlarIndiceTab(pgcPrincipal:TPageControl; Indice:integer);
begin
 if (pgcPrincipal.Pages[Indice].TabVisible) then
    pgcPrincipal.TabIndex:=Indice;


end;
procedure TfrmTelaHeranca.btnAlterarClick(Sender: TObject);
begin
 ControlarBotoes(btnNovo, btnCancelar, btnApagar, btnAlterar, btnGravar, btnNavigator, pgcPrincipal, false);
 EstadoDoCadastro:=ecAlterar;
end;

procedure TfrmTelaHeranca.btnApagarClick(Sender: TObject);
begin
ControlarBotoes(btnNovo, btnCancelar, btnApagar, btnAlterar, btnGravar, btnNavigator, pgcPrincipal, true);
 ControlarIndiceTab(pgcPrincipal, 0);
 EstadoDoCadastro:=ecNenhum;
end;

procedure TfrmTelaHeranca.btnCancelarClick(Sender: TObject);
begin
 ControlarBotoes(btnNovo, btnCancelar, btnApagar, btnAlterar, btnGravar, btnNavigator, pgcPrincipal, true);
 ControlarIndiceTab(pgcPrincipal, 0);
 EstadoDoCadastro:=ecNenhum;
end;

procedure TfrmTelaHeranca.btnFecharClick(Sender: TObject);
begin
 close;
end;

procedure TfrmTelaHeranca.btnGravarClick(Sender: TObject);
begin
Try
 ControlarBotoes(btnNovo, btnCancelar, btnApagar, btnAlterar, btnGravar, btnNavigator, pgcPrincipal, true);
 ControlarIndiceTab(pgcPrincipal, 0);
 if (EstadoDoCadastro=ecInserir) then
 showmessage('Inserir')
 else if (EstadoDoCadastro=ecAlterar) then
      showmessage('Alterado')
      else
      showmessage('Nada Aconteceu');
 Finally
  EstadoDoCadastro:=ecNenhum;
  End;
end;

procedure TfrmTelaHeranca.btnNovoClick(Sender: TObject);
begin
 ControlarBotoes(btnNovo, btnCancelar, btnApagar, btnAlterar, btnGravar, btnNavigator, pgcPrincipal, false);
 EstadoDoCadastro:=ecInserir;
end;

procedure TfrmTelaHeranca.FormActivate(Sender: TObject);
begin
  QryListagem.Connection:=dtmPrincipal.ConexaoDB;
  dtsListagem.DataSet:=QryListagem;
  grdListagem.DataSource:=dtsListagem;
end;

end.
