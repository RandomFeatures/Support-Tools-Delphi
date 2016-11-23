unit main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TfrmMain = class(TForm)
    mmOrig: TMemo;
    mmDest: TMemo;
    edtLead: TEdit;
    edtTrail: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnGo: TButton;
    Label3: TLabel;
    Label4: TLabel;
    cbDefaults: TComboBox;
    Label5: TLabel;
    btnClose: TButton;
    Button1: TButton;
    Label6: TLabel;
    Label7: TLabel;
    edtStart: TEdit;
    edtEnd: TEdit;
    chkLast: TCheckBox;
    chkReLine: TCheckBox;
    procedure btnGoClick(Sender: TObject);
    procedure cbDefaultsChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mmDestEnter(Sender: TObject);
    procedure mmOrigEnter(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.DFM}

procedure TfrmMain.btnGoClick(Sender: TObject);
var
   iLoop: integer;
begin
     if chkLast.Checked then
     begin
         for iLoop := 0 to mmOrig.Lines.Count -1 do
         begin
              if (chkReLine.Checked) and (Trim(mmOrig.Lines.Strings[iLoop]) = '') then continue;
              mmDest.Lines.Add(edtLead.text + mmOrig.Lines.Strings[iLoop] + edtTrail.text)
         end;
     end
     else
     begin
         for iLoop := 0 to mmOrig.Lines.Count -2 do
         begin
              if (chkReLine.Checked) and (Trim(mmOrig.Lines.Strings[iLoop]) = '') then continue;
              mmDest.Lines.Add(edtLead.text + mmOrig.Lines.Strings[iLoop] + edtTrail.text)
         end;
              mmDest.Lines.Add(edtLead.text + mmOrig.Lines.Strings[mmOrig.Lines.Count -1])
     end;
     if edtStart.text <> '' then
          mmDest.Text := edtStart.text + mmDest.Text;

     if edtEnd.text <> '' then
        mmDest.Text := TrimRight(mmDest.Text) + edtEnd.text;

end;

procedure TfrmMain.cbDefaultsChange(Sender: TObject);
begin
    case cbDefaults.ItemIndex of
    0: begin edtLead.text := ''; edtTrail.text := ',';  end;
    1: begin edtLead.text := #39; edtTrail.text := #39 + ',';  end;
    2: begin edtLead.text := #39; edtTrail.text := #39;  end;
    3: begin edtLead.text := ''; edtTrail.text := #13#10;  end;
    4: begin edtLead.text := ''; edtTrail.text :=  #13#10 +'GO';  end;
    5: begin
            edtLead.text := '';
            edtTrail.text := ',';
            edtStart.text := '(';
            edtEnd.text := ')';
            chkLast.Checked := false;
       end;
    6: begin
            edtLead.text := #39;
            edtTrail.text :=  #39 + ',';
            edtStart.text := '(';
            edtEnd.text := #39+')';
            chkLast.Checked := false;
       end;
    end;

end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
     cbDefaults.ItemIndex :=0;
end;

procedure TfrmMain.mmDestEnter(Sender: TObject);
begin
   mmDest.SelectAll;
end;

procedure TfrmMain.mmOrigEnter(Sender: TObject);
begin
     mmOrig.SelectAll;
end;

procedure TfrmMain.btnCloseClick(Sender: TObject);
begin
     close;
end;

procedure TfrmMain.Button1Click(Sender: TObject);
begin
     mmDest.clear;
     mmOrig.Clear;
end;

end.
