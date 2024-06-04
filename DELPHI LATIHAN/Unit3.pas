unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm3 = class(TForm)
    lbl1: TLabel;
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    lbl2: TLabel;
    edt2: TEdit;
    btn4: TButton;
    dbgrd1: TDBGrid;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a: string;

implementation

uses
  Unit4_COBA;

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
begin
DataModule4.zqry1.SQL.Clear;
DataModule4.zqry1.SQL.Add('insert into kategori values(null,"'+edt1.Text+'")');
DataModule4.zqry1.ExecSQL ;

DataModule4.zqry1.SQL.Clear;
DataModule4.zqry1.SQL.Add('select * form kategori');
DataModule4.zqry1.Open;
ShowMessage('Data Berhasil Disimpan!');
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
DataModule4.zqry1.SQL.Clear;
DataModule4.zqry1.SQL.Add('update kategori set name="'+edt1.Text+'" where id= "'+a+'"');
DataModule4.zqry1.ExecSQL ;

DataModule4.zqry1.SQL.Clear;
DataModule4.zqry1.SQL.Add('select * form kategori');
DataModule4.zqry1.Open;
ShowMessage('Data Berhasil Diupdate!');
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
DataModule4.zqry1.SQL.Clear;
DataModule4.zqry1.SQL.Add('delete form kategori where id= "'+a+'"');
DataModule4.zqry1.ExecSQL ;

DataModule4.zqry1.SQL.Clear;
DataModule4.zqry1.SQL.Add('select * form kategori');
DataModule4.zqry1.Open;
ShowMessage('Data Berhasil Diupdate!');
end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:= DataModule4.zqry1.Fields[1].AsString;
a:= DataModule4.zqry1.Fields[0].AsString;
end;

end.
