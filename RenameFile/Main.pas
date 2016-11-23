unit Main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FileScanner, strFunctions, StdCtrls;

type
  TForm1 = class(TForm)
    FileScanner1: TFileScanner;
    Button1: TButton;
    edtStart: TEdit;
    edtNew: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtOld: TEdit;
    Label3: TLabel;
    procedure FileScanner1FoundFile(Filename: String);
    procedure Button1Click(Sender: TObject);
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
var
newfile : string;
begin

     newfile := ChangeFileExt(FileName, '.'+edtNew.text);
     renamefile(FileName, newfile);
     AppendTextToFile(ExtractFilePath(Application.exename) + 'Rename.dat',FileName + '|' + NewFile);
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
   FileScanner1.FileExtension := edtOld.text;
   FileScanner1.ProcessDirectory(edtstart.text );
   screen.cursor := crDefault;
   ShowMEssage('Finished');
except
end;
end;

end.
