program fitur_member;

uses
  Forms,
  fiture_member in 'fiture_member.pas' {kustomer},
  Unit1 in 'Unit1.pas' {dmkustomer: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tkustomer, kustomer);
  Application.CreateForm(Tdmkustomer, dmkustomer);
  Application.Run;
end.
