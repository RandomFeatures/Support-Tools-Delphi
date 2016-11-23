unit main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
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

procedure TForm1.Button1Click(Sender: TObject);
var
  FileHandle : Integer;
begin

     if OpenDialog1.Execute then
     begin

          FileHandle := FileOpen(OpenDialog1.FileName, fmOpenWrite or fmShareDenyNone);
          if FileHandle > 0 then
          begin
          DateTimePicker1.time := DateTimePicker2.Time;
             FileSetDate(FileHandle,DateTimeToFileDate(DateTimePicker1.DateTime));
             FileClose(FileHandle);
          end;

     end;


end;

end.
