unit uCadastroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Buttons;

type
  TfrmCadastroCliente = class(TForm)
    btnGravar: TButton;
    btnProximo_dado: TButton;
    btnAnterior_dado: TButton;
    DBGrid1: TDBGrid;
    btnExcluir: TButton;
    DataSource1: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBNavigator1: TDBNavigator;
    DBLookupComboBox1: TDBLookupComboBox;
    edtQuantidadeCliente: TLabeledEdit;
    btnNovo: TButton;
    btnCancelar: TBitBtn;
    procedure FormShow(Sender: TObject);
    //procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure DataSource1StateChange(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnAnterior_dadoClick(Sender: TObject);
    procedure btnProximo_dadoClick(Sender: TObject);
  private
    { Private declarations }
    procedure QuantidadeCliente;
  public
    { Public declarations }
  end;

var
  frmCadastroCliente: TfrmCadastroCliente;

implementation

{$R *.dfm}

uses uBancoDados, uCadastroCidades;


//buttons
procedure TfrmCadastroCliente.btnAnterior_dadoClick(Sender: TObject);
begin
  DataModule2.FDTable_clientes.Prior;
end;

procedure TfrmCadastroCliente.btnCancelarClick(Sender: TObject);
begin
   DataSource1.DataSet.Cancel;
end;

procedure TfrmCadastroCliente.btnExcluirClick(Sender: TObject);
begin
if (Application.MessageBox('Deseja excluir?','Aviso',MB_ICONQUESTION+MB_YESNO)= idNo) then
    Exit;

  DataSource1. DataSet.Delete;
end;

procedure TfrmCadastroCliente.btnGravarClick(Sender: TObject);
begin
  DataSource1.DataSet.Post;
end;

procedure TfrmCadastroCliente.btnNovoClick(Sender: TObject);
begin
  DataSource1.DataSet.Append;
  DBEdit1.SetFocus;
end;
procedure TfrmCadastroCliente.btnProximo_dadoClick(Sender: TObject);
begin
  //n�o est� funcionando o bot�o next
  DataModule2.FDQuery_clientes.Next;
end;

//buttons


//atualiza a quantidade
procedure TfrmCadastroCliente.DataSource1StateChange(Sender: TObject);
begin
if DataSource1.State in [dsBrowse] then
    QuantidadeCliente;

end;


//executa a procedure quando o form � criado
procedure TfrmCadastroCliente.FormShow(Sender: TObject);
begin
QuantidadeCliente; //aqui est� funcionando
end;

//mostra no edit a quantidade de cliente
procedure TfrmCadastroCliente.QuantidadeCliente;
begin
  edtQuantidadeCliente.Text:=IntToStr(DataModule2.QuantidadeClientes);
end;

end.
