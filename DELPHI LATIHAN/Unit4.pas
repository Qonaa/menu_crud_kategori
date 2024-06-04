unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm4 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    dbgrd1: TDBGrid;
    lbl3: TLabel;
    edt3: TEdit;
    btn5: TButton;
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit4_COBA;

{$R *.dfm}

procedure TForm4.btn2Click(Sender: TObject);
begin
DataModule4.zqry2.SQL.Clear;
DataModule4.zqry2.SQL.Add('insert into satuan values(null,"'+edt1.Text+'")');
DataModule4.zqry2.ExecSQL ;

DataModule4.zqry2.SQL.Clear;
DataModule4.zqry2.SQL.Add('SELECT * FROM `satuan`');
DataModule4.zqry2.Open;
ShowMessage('Data Berhasil Disimpan!');
end;

end.
