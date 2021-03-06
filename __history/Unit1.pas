unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShellAPI, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    { Private-Declaration }
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;
  a: PChar;

implementation

{$R *.dfm}

procedure TForm1.Image2Click(Sender: TObject);
begin
 a := PChar('http://www.lumpiluk.de.ms');
 ShellExecute(Handle, nil, a, nil, nil, SW_SHOW);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 a := PChar(ExtractFilePath(ParamStr(0))+'SinglePlayer\Project2.exe');
 ShellExecute(Handle, nil, a, nil, nil, SW_SHOW);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 a := PChar(ExtractFilePath(ParamStr(0))+'MultiPlayer\Project2.exe');
 ShellExecute(Handle, nil, a, nil, nil, SW_SHOW);
end;

end.
