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
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    dbNombre,   //  'Prueba_Diagonal';
    dbUsuario,  //  '16ANTONIOG';
    dbPass,     //  '123456';
    cxTipo,     //  '1 local; 0 remoto';
    cxNombre,   //  'Local,16Lumi, conexion, etc';
    cxCarpeta,  //  ''C:\Microsip datos\';
    cxServidor, //  '192.168.3.6; cualquiera que sea el servidor microsip';
    cxProtocolo //  0: tcp/ip 1: net/bieu   2: spx
    : string;
  end;

var
  frmArticulosComplementarios: TfrmArticulosComplementarios;

implementation

{$R *.dfm}

procedure TfrmArticulosComplementarios.FormCreate(Sender: TObject);
begin
//.
end;

end.
