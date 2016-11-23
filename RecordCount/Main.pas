unit Main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    OpenDialog1: TOpenDialog;
    Label2: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure CountGEOFile(fileName: string);
    procedure CountAnyFile(fileName: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
begin
     if OpenDialog1.Execute then
     begin
       if UpperCase(ExtractFileExt(OpenDialog1.FileName)) = '.GEO' then
          CountGEOFile(OpenDialog1.FileName)
       else
         CountAnyFile(OpenDialog1.FileName)
     end;

end;

procedure TForm1.CountGEOFile(fileName: string);
var
ofdFile: TextFile;
count: integer;
iLoop: integer;
Ch: Char;
sLoanID: string;
begin
     count := 0;
     AssignFile(ofdFile, FileName);   //create the handle to the file
     Reset(ofdFile); //open the file and get ready
     while not(EOF(ofdFile))  do
     begin

          for iLoop := 0 to 288 do
          Read(ofdFile, Ch); //read through the first 46 characters of the next line
          sLoanID := '';

          for iLoop := 0 to 6 do
          begin //these 7 characters should be the historyID
            Read(ofdFile, Ch);
          end;

          for iLoop := 0 to 2 do
          begin //these 9 characters should be the LoanID
            Read(ofdFile, Ch);
            sLoanID := sLoanID + ch
          end;

          if sLoanID = '021' then
             inc(count); //keep track of how many we have done

          //finish out this line so we are read for the next
          while not(EOF(ofdFile))  do
          begin
             Read(ofdFile, Ch);
             if Ch = #10  then
             break;
          end;

          Label1.Caption := IntToStr(count);
          Application.ProcessMessages;
     end;
     memo1.Lines.Add(IntTostr(count));
     closefile(ofdFile);

end;

Procedure TForm1.CountAnyFile(fileName: string);
var
ofdFile: TextFile;
count: integer;
begin
     count := 0;
     AssignFile(ofdFile, FileName);   //create the handle to the file
     Reset(ofdFile); //open the file and get ready
     while not(EOF(ofdFile))  do
     begin
          Readln(ofdFile);  //read one line and igore it
          inc(count); //keep track of how many we have done
          Label1.Caption := IntToStr(count) + ' records';
          Application.ProcessMessages;
     end;
         memo1.Lines.Add(IntToStr(count));
     closefile(ofdFile);

end;


end.
