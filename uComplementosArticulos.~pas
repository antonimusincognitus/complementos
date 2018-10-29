unit uComplementosArticulos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, AdvObj, BaseGrid, AdvGrid, AdvPageControl, ComCtrls,
  StdCtrls, AdvEdit, AdvEdBtn, AdvCombo, AdvToolBar, AdvToolBarStylers,
  ActnList, ImgList;

type
  TfrmArticulosComplementarios = class(TForm)
    PGCArticulos: TAdvPageControl;
    tabGeneral: TAdvTabSheet;
    tabAlternativas: TAdvTabSheet;
    tabComplementos: TAdvTabSheet;
    sstrgAlternativas: TAdvStringGrid;
    strgComplementos: TAdvStringGrid;
    cbxLineas: TAdvComboBox;
    cbxUnidadMedida: TAdvComboBox;
    cbxEstatus: TAdvComboBox;
    edtNombre: TAdvEditBtn;
    edtClave: TAdvEditBtn;
    cbAlmacenable: TCheckBox;
    cbJuego: TCheckBox;
    cbPesarEnBascula: TCheckBox;
    AdvEdit1: TAdvEdit;
    AdvDockPanel1: TAdvDockPanel;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvToolBar1: TAdvToolBar;
    AdvToolBar2: TAdvToolBar;
    AdvToolBarMenuButton1: TAdvToolBarMenuButton;
    AdvToolBarMenuButton2: TAdvToolBarMenuButton;
    AdvToolBarMenuButton3: TAdvToolBarMenuButton;
    ActionList1: TActionList;
    Guardar: TAction;
    GuardarCerrar: TAction;
    GuardarNuevo: TAction;
    Modificar: TAction;
    Eliminar: TAction;
    NuevaAlternativa: TAction;
    NuevoComplemento: TAction;
    Nuevo: TAction;
    EliminarAlternativa: TAction;
    EliminarComplemento: TAction;
    ImgLstgrdArticulos: TImageList;
    AdvToolBarButton1: TAdvToolBarButton;
    imgMenus: TImageList;
    AdvToolBarButton2: TAdvToolBarButton;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarButton3: TAdvToolBarButton;
    AdvToolBarButton4: TAdvToolBarButton;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmArticulosComplementarios: TfrmArticulosComplementarios;

implementation
USES
  uDataBase, uQuery;

{$R *.dfm}

//Se Conecta con la base de datos origen usando los parametros de entrada
function ConexionADB:Boolean;
begin
  Result := False;
  dbConectar:= TdmDataBase.Create(nil);
  if frmCopiarCotizacion.cxTipo ='1' then//Es local
        dbConectar.idbDataBase.DatabaseName := 'localhost:'+ frmCopiarCotizacion.cxCarpeta + frmCopiarCotizacion.dbNombre + '.fdb'
  else if frmCopiarCotizacion.cxProtocolo ='0'
    then dbConectar.idbDataBase.DatabaseName := frmCopiarCotizacion.cxServidor+':'+frmCopiarCotizacion.cxCarpeta+frmCopiarCotizacion.dbNombre + '.fdb'
  else if frmCopiarCotizacion.cxProtocolo ='1'
    then dbConectar.idbDataBase.DatabaseName := '\\'+frmCopiarCotizacion.cxServidor+'\'+frmCopiarCotizacion.cxCarpeta+frmCopiarCotizacion.dbNombre + '.fdb'
  else if frmCopiarCotizacion.cxProtocolo ='2'
    then dbConectar.idbDataBase.DatabaseName := frmCopiarCotizacion.cxServidor+'@'+frmCopiarCotizacion.cxCarpeta+frmCopiarCotizacion.dbNombre + '.fdb';
  dbConectar.idbDataBase.DBParams.Clear;
  dbConectar.idbDataBase.DBParams.Add('user_name=' + frmCopiarCotizacion.dbUsuario);
  dbConectar.idbDataBase.DBParams.Add('password=' + frmCopiarCotizacion.dbPass);
  dbConectar.idbDataBase.DBParams.Add('sql_role_name=');
     try dbConectar.idbDataBase.Connected := True;
        Result := True;
     except
        MessageDlg('El nombre de usuario o la contrase�a no son v�lidos para el Servidor de la conexi�n "' + frmCopiarCotizacion.cxNombre +
           '".' + #13#10 + 'Escriba los datos correctamente o consulte al Administrador del sistema.',mtError,[mbOK],0);
        result:=false;
     end;//try
end;



procedure TfrmArticulosComplementarios.FormShow(Sender: TObject);
begin

  if not ConexionADB then ShowMessage('no se pudo conectar');
end;

end.
