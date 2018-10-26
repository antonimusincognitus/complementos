program pComplementos;

uses
  Forms,
  uComplementosArticulos in 'uComplementosArticulos.pas' {frmArticulosComplementarios};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmArticulosComplementarios, frmArticulosComplementarios);
  Application.Run;
end.
