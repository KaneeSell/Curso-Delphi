unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uDTMConexao, uCadCategoria, Enter;

type
  TfrmPrincipal = class(TForm)
    mainPrincipal: TMainMenu;
    Cadastro1: TMenuItem;
    Movimentao1: TMenuItem;
    Relatrios1: TMenuItem;
    Clinte1: TMenuItem;
    N1: TMenuItem;
    Categoria1: TMenuItem;
    Produto1: TMenuItem;
    N2: TMenuItem;
    mnuFechar: TMenuItem;
    Venda1: TMenuItem;
    Cliente1: TMenuItem;
    N3: TMenuItem;
    VendaporData1: TMenuItem;
    procedure mnuFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Categoria1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    TeclaEnter: TMREnter;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.Categoria1Click(Sender: TObject);
begin
 frmCadCategoria:=TfrmCadCategoria.Create(Self);
 frmCadCategoria.ShowModal;   //Mostrar na tela o Modelo do Cadastro de categorias
 frmCadCategoria.Release;  //esvazia a memoria, essa linha � execultada logo ap�s fehar o cadastro de categorias
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FreeAndNil (TeclaEnter);
 FreeAndNil(dtmPrincipal);
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
//Podemos fazer de ambas as formas para fazer a conex�o com banco de dados
{
 dtmPrincipal := TdtmPrincipal.create(Self);
 dtmPrincipal.ConexaoDB.SQLHourGlass:=True;
 dtmPrincipal.ConexaoDB.Protocol:= 'ado';
 dtmPrincipal.ConexaoDB.LibraryLocation:= 'C:\Users\kanee\OneDrive\Documentos\Curso Delphi\ntwdblib.dll';
 dtmPrincipal.ConexaoDB.Database:= 'Provider=SQLOLEDB.1;Password=masterkey;Persist Security Info=True;User ID=sa;Initial Catalog=Vendas;Data Source=ISAAC\SERVERCURSO';
 dtmPrincipal.ConexaoDB.Port:=1433;
 dtmPrincipal.ConexaoDB.User:= 'sa';
 dtmPrincipal.ConexaoDB.Password:= 'masterkey';
 dtmPrincipal.ConexaoDB.Connected:=True;
}
 dtmPrincipal := TdtmPrincipal.create(Self);
 with dtmPrincipal.ConexaoDB do begin
  SQLHourGlass:=True;
  Protocol:= 'ado';
  LibraryLocation:= 'C:\Users\kanee\OneDrive\Documentos\Curso Delphi\ntwdblib.dll';
  Database:= 'Provider=SQLOLEDB.1;Password=masterkey;Persist Security Info=True;User ID=sa;Initial Catalog=Vendas;Data Source=ISAAC\SERVERCURSO';
  Port:=1433;   //Porta padr�o
  User:= 'sa';
  Password:= 'masterkey';
  Connected:=True;
 end;
 TeclaEnter:= TMREnter.Create(Self);
 TeclaEnter.FocusEnabled:=true;
 TeclaEnter.FocusColor:=clInfoBK;

end;

procedure TfrmPrincipal.mnuFecharClick(Sender: TObject);
begin
// Ambas as formas para encerrar a aplica��o
// close;
 Application.Terminate;
end;

end.
