unit kalkulator;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit, FMX.Objects;

type
  TForm1 = class(TForm)
    Kalkulator: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    nil1: TEdit;
    nil2: TEdit;
    h: TEdit;
    tambah: TButton;
    kurang: TButton;
    kali: TButton;
    bagi: TButton;
    hapus: TButton;
    keluar: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Line1: TLine;
    procedure tambahClick(Sender: TObject);
    procedure kurangClick(Sender: TObject);
    procedure kaliClick(Sender: TObject);
    procedure bagiClick(Sender: TObject);
    procedure hapusClick(Sender: TObject);
    procedure keluarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.bagiClick(Sender: TObject);
var  angka1, angka2, hasil : double;
begin
      angka1 := StrToFloat (nil1.Text);
      angka2 := StrToFloat (nil2.Text);
      hasil := angka1 / angka2;
      h.Text := FloatToStr (hasil);
end;

procedure TForm1.hapusClick(Sender: TObject);
begin
nil1.Text := '';
nil2.Text := '';
h.Text := '';
nil1.SetFocus;
end;

procedure TForm1.kaliClick(Sender: TObject);
var  angka1, angka2, hasil : double;
begin
      angka1 := StrToFloat (nil1.Text);
      angka2 := StrToFloat (nil2.Text);
      hasil := angka1 * angka2;
      h.Text := FloatToStr (hasil);

end;

procedure TForm1.keluarClick(Sender: TObject);
begin
close;
end;

procedure TForm1.kurangClick(Sender: TObject);
var  angka1, angka2, hasil : double;
begin
      angka1 := StrToFloat (nil1.Text);
      angka2 := StrToFloat (nil2.Text);
      hasil := angka1 - angka2;
      h.Text := FloatToStr (hasil);
end;

procedure TForm1.tambahClick(Sender: TObject);
var  angka1, angka2, hasil : double;
begin
      angka1 := StrToFloat (nil1.Text);
      angka2 := StrToFloat (nil2.Text);
      hasil := angka1 + angka2;
      h.Text := FloatToStr (hasil);
end;

end.
