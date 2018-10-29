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
    strgAlternativas: TAdvStringGrid;
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
      dbNombre,dbUsuario,dbPass,cxTipo,cxNombre,cxServidor,cxProtocolo,cxCarpeta:String;
    { Public declarations }
  end;

var
  frmArticulosComplementarios: TfrmArticulosComplementarios;

implementation
USES
  uDataBase, uQuery;
var
  dbConectar:TdmDataBase;
{$R *.dfm}

//Se Conecta con la base de datos origen usando los parametros de entrada
function ConexionADB:Boolean;
begin
  Result := False;
  dbConectar:= TdmDataBase.Create(nil);
  if frmArticulosComplementarios.cxTipo ='1' then//Es local
        dbConectar.idbDataBase.DatabaseName := 'localhost:'+ frmArticulosComplementarios.cxCarpeta + frmArticulosComplementarios.dbNombre + '.fdb'
  else if frmArticulosComplementarios.cxProtocolo ='0'
    then dbConectar.idbDataBase.DatabaseName := frmArticulosComplementarios.cxServidor+':'+frmArticulosComplementarios.cxCarpeta+frmArticulosComplementarios.dbNombre + '.fdb'
  else if frmArticulosComplementarios.cxProtocolo ='1'
    then dbConectar.idbDataBase.DatabaseName := '\\'+frmArticulosComplementarios.cxServidor+'\'+frmArticulosComplementarios.cxCarpeta+frmArticulosComplementarios.dbNombre + '.fdb'
  else if frmArticulosComplementarios.cxProtocolo ='2'
    then dbConectar.idbDataBase.DatabaseName := frmArticulosComplementarios.cxServidor+'@'+frmArticulosComplementarios.cxCarpeta+frmArticulosComplementarios.dbNombre + '.fdb';
  dbConectar.idbDataBase.DBParams.Clear;
  dbConectar.idbDataBase.DBParams.Add('user_name=' + frmArticulosComplementarios.dbUsuario);
  dbConectar.idbDataBase.DBParams.Add('password=' + frmArticulosComplementarios.dbPass);
  dbConectar.idbDataBase.DBParams.Add('sql_role_name=');
     try dbConectar.idbDataBase.Connected := True;
        Result := True;
     except
        MessageDlg('El nombre de usuario o la contraseï¿½a no son vï¿½lidos para el Servidor de la conexión "' + frmArticulosComplementarios.cxNombre +
           '".' + #13#10 + 'Escriba los datos correctamente o consulte al Administrador del sistema.',mtError,[mbOK],0);
        result:=false;
     end;//try
end;



procedure TfrmArticulosComplementarios.FormShow(Sender: TObject);
begin
  dbNombre   :=ParamStr(1);//
  dbUsuario  :=ParamStr(2);//
  dbPass     :=ParamStr(3);//
  cxTipo     :=ParamStr(4);//
  cxNombre   :=ParamStr(5);//
  cxServidor :=ParamStr(6);//
  cxProtocolo:=ParamStr(7);//
  cxCarpeta  :=ParamStr(8);//
  if ConexionADB then strgAlternativas.HideColumn(3);
end;

end.
