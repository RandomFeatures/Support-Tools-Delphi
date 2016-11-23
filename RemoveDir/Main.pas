unit Main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FileScanner, strFunctions, StdCtrls, ShellAPI;;

type
  TForm1 = class(TForm)
    FileScanner1: TFileScanner;
    Button1: TButton;
    edtStart: TEdit;
    edtNew: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Button2: TButton;
    procedure FileScanner1FoundFile(Filename: String);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.FileScanner1FoundFile(Filename: String);
begin
     if FileExists(FileName) then
     DeleteFile(fileName);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
if edtstart.text = '' then exit;
try
   screen.cursor := crHourGlass;
   if strLastCh(edtstart.text) <> '\' then
   begin
       edtstart.text := edtstart.text + '\';
   end;
   {FileScanner1.FileExtension := edtNew.text;}
   {FileScanner1.ProcessDirectory(edtstart.text );}
   RemoveDirectory(edtstart.text );
   screen.cursor := crDefault;
except
end;
end;

function TForm1.RemoveDirectory(const Path: string): Boolean;
var
  SHFileOpStruct: TSHFileOpStruct;
  DirBuf: array[0..255] of Char;
begin
  if DirectoryExists(Path) then
  try
    FillChar(SHFileOpStruct, Sizeof(SHFileOpStruct), 0);
    FillChar(DirBuf, Sizeof(DirBuf), 0);
    StrPCopy(DirBuf, Path);
    with SHFileOpStruct do
    begin
      Wnd := 0;
      pFrom := @DirBuf;
      wFunc := FO_DELETE;
      fFlags := FOF_NOCONFIRMATION or FOF_SILENT;
    end;
    Result := SHFileOperation(SHFileOpStruct) = 0;
  except
    Result := False;
  end;
end;


procedure TForm1.Button2Click(Sender: TObject);
begin
close;
end;

end.
