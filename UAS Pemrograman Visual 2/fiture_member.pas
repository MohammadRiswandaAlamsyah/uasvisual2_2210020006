unit fiture_member;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ZAbstractConnection, ZConnection, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tkustomer = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    cbb1: TComboBox;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    lbl8: TLabel;
    edt5: TEdit;
    dbgrdkustomer: TDBGrid;
    lbl9: TLabel;
    edt6: TEdit;
    btn6: TButton;
    procedure setawal;
    procedure bersih;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure dbgrdkustomerCellClick(Column: TColumn);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure edt6Change(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  kustomer: Tkustomer;
  a: string;

implementation

uses Unit1;

{$R *.dfm}

procedure Tkustomer.setawal;
begin
  btn1.Enabled:= True;
  btn2.Enabled:= False;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= True;
  btn6.Enabled:= True;
  edt1.Enabled:= False;
  edt2.Enabled:= False;
  edt3.Enabled:= False;
  edt4.Enabled:= False;
  edt5.Enabled:= False;
  cbb1.Enabled:= False;

  dbgrdkustomer.Columns[0].Visible:= False;
  dbgrdkustomer.Columns[1].Width:= 155;
  dbgrdkustomer.Columns[2].Width:= 140;
  dbgrdkustomer.Columns[3].Width:= 125;
  dbgrdkustomer.Columns[4].Width:= 200;
  dbgrdkustomer.Columns[5].Width:= 140;
  dbgrdkustomer.Columns[6].Width:= 50;
end;

procedure Tkustomer.FormCreate(Sender: TObject);
begin
  setawal;
end;

procedure Tkustomer.btn1Click(Sender: TObject);
begin
  btn1.Enabled:= False;
  btn2.Enabled:= True;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= True;
  btn6.Enabled:= False;
  edt1.Enabled:= True;
  edt2.Enabled:= True;
  edt3.Enabled:= True;
  edt4.Enabled:= True;
  edt5.Enabled:= True;
  cbb1.Enabled:= True;
end;

procedure Tkustomer.btn5Click(Sender: TObject);
begin
  setawal;
  bersih;
end;

procedure Tkustomer.dbgrdkustomerCellClick(Column: TColumn);
begin
  btn1.Enabled:= False;
  btn2.Enabled:= False;
  btn3.Enabled:= True;
  btn4.Enabled:= True;
  btn5.Enabled:= True;
  btn6.Enabled:= False;
  edt1.Enabled:= True;
  edt2.Enabled:= True;
  edt3.Enabled:= True;
  edt4.Enabled:= True;
  edt5.Enabled:= True;
  cbb1.Enabled:= True;
  if dmkustomer.zqrykustomer.Fields[6].AsString='Yes' then
  begin
    lbl7.Caption:='10%';
  end else if dmkustomer.zqrykustomer.Fields[6].AsString='No' then
  begin
    lbl7.Caption:='5%';
  end else
  begin
    setawal;
    bersih;
  end;
  a:= dmkustomer.zqrykustomer.Fields[0].AsString;
  edt1.Text:= dmkustomer.zqrykustomer.Fields[1].AsString;
  edt2.Text:= dmkustomer.zqrykustomer.Fields[2].AsString;
  edt3.Text:= dmkustomer.zqrykustomer.Fields[3].AsString;
  edt4.Text:= dmkustomer.zqrykustomer.Fields[4].AsString;
  edt5.Text:= dmkustomer.zqrykustomer.Fields[5].AsString;
  cbb1.Text:= dmkustomer.zqrykustomer.Fields[6 ].AsString;
end;

procedure Tkustomer.btn2Click(Sender: TObject);
begin
  if edt1.text='' then
  begin
    ShowMessage('Isi NIK Terlebih Dahulu!');
  end else if edt2.Text='' then
  begin
    ShowMessage('Isi Nama Terlebih Dahulu!');
  end else if edt3.Text='' then
  begin
    ShowMessage('Isi No. Telepon Terlebih Dahulu!');
  end else if edt4.Text='' then
  begin
    ShowMessage('Isi Email Terlebih Dahulu!');
  end else if edt5.Text='' then
  begin
    ShowMessage('Isi Alamat Terlebih Dahulu!');
  end else if cbb1.Text='-- Pilih --' then
  begin
    ShowMessage('Isi Member Terlebih Dahulu!');
  end else if dmkustomer.zqrykustomer.locate('nik',edt1.Text,[]) then
  begin
    ShowMessage('NIK Sudah Ada!');
  end else if dmkustomer.zqrykustomer.locate('telp',edt3.Text,[]) then
  begin
    ShowMessage('Telp Sudah Ada!');
  end else if dmkustomer.zqrykustomer.locate('email',edt4.Text,[]) then
  begin
    ShowMessage('Email Sudah Ada!');
  end else
  begin
    //memasukkan data/simpan
    dmkustomer.zqrykustomer.SQL.Clear;
    dmkustomer.zqrykustomer.SQL.Add('insert into kustomer values(null, "'+edt1.text+'", "'+edt2.text+'", "'+edt3.text+'", "'+edt4.text+'", "'+edt5.text+'", "'+cbb1.text+'")');
    dmkustomer.zqrykustomer.ExecSQL;
    //menampilkan data/view
    dmkustomer.zqrykustomer.SQL.Clear;
    dmkustomer.zqrykustomer.SQL.Add('select * from kustomer');
    dmkustomer.zqrykustomer.Open;
    setawal;
    bersih;
    ShowMessage('Data Berhasil Disimpan!');
  end;
  if dmkustomer.zqrykustomer.Fields[6].AsString='Yes' then
  begin
    lbl7.Caption:='10%';
  end else if dmkustomer.zqrykustomer.Fields[6].AsString='No' then
  begin
    lbl7.Caption:='5%';
  end else
  begin
    setawal;
    bersih;
  end;
end;

procedure Tkustomer.btn3Click(Sender: TObject);
begin
  if (dmkustomer.zqrykustomer.Fields[1].AsString<>edt1.Text)or(dmkustomer.zqrykustomer.Fields[2].AsString<>edt2.Text)or(dmkustomer.zqrykustomer.Fields[3].AsString<>edt3.Text)or
     (dmkustomer.zqrykustomer.Fields[4].AsString<>edt4.Text)or(dmkustomer.zqrykustomer.Fields[5].AsString<>edt5.Text)or(dmkustomer.zqrykustomer.Fields[6].AsString<>cbb1.Text) then
  begin
    //memperbarui data/update
    dmkustomer.zqrykustomer.SQL.Clear;
    dmkustomer.zqrykustomer.SQL.Add('update kustomer set nik="'+edt1.Text+'", nama="'+edt2.Text+'", telp="'+edt3.Text+'", email="'+edt4.Text+'", alamat="'+edt5.Text+'", member="'+cbb1.Text+'" where id = "'+a+'"');
    dmkustomer.zqrykustomer.ExecSQL;
    //menampilkan data/view
    dmkustomer.zqrykustomer.SQL.Clear;
    dmkustomer.zqrykustomer.SQL.Add('select * from kustomer');
    dmkustomer.zqrykustomer.Open;
    setawal;
    bersih;
    ShowMessage('Data Berhasil Diupdate!');
  end else
  begin
    ShowMessage('Data Tidak Ada Perubahann');
    setawal;
    bersih;
  end;
end;

procedure Tkustomer.btn4Click(Sender: TObject);
begin
  if MessageDlg('Apakah Anda Ingin Menghapus Data Ini ?', mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    //menghapus data/delete
    dmkustomer.zqrykustomer.SQL.Clear;
    dmkustomer.zqrykustomer.SQL.Add('delete from kustomer where id = "'+a+'"');
    dmkustomer.zqrykustomer.ExecSQL;
    //menampilkan data/view
    dmkustomer.zqrykustomer.SQL.Clear;
    dmkustomer.zqrykustomer.SQL.Add('select * from kustomer');
    dmkustomer.zqrykustomer.Open;
    setawal;
    bersih;
    ShowMessage('Data Berhasil Dihapus!');
  end else
  begin
    ShowMessage('Data Batal Dihapus!');
    setawal;
    bersih;
  end;

end;

procedure Tkustomer.bersih;
begin
  edt1.Text:='';
  edt2.Text:='';
  edt3.Text:='';
  edt4.Text:='';
  edt5.Text:='';
  cbb1.Text:='-- Pilih --';
  lbl7.Caption:='Terisi Otomatis';
end;

procedure Tkustomer.edt6Change(Sender: TObject);
begin
  with dmkustomer.zqrykustomer do
  begin
    SQL.Clear;
    SQL.Add('select * from kustomer where nama like "%'+edt6.Text+'%"');
    Open;
  end;
end;

procedure Tkustomer.btn6Click(Sender: TObject);
begin
  dmkustomer.frxrprtkustomer.ShowReport();
end;

end.
