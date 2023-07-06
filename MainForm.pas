unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    brnCalender: TButton;
    Button2: TButton;
    procedure brnCalenderClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses Calendar;

procedure TfrmMain.brnCalenderClick(Sender: TObject);
begin
  frmCalendar := TfrmCalendar.MyCreate(Self, False);
  frmCalendar.ShowModal;
  frmCalendar.Free;
end;

procedure TfrmMain.Button2Click(Sender: TObject);
begin
  frmCalendar := TfrmCalendar.MyCreate(Self, True);
  frmCalendar.ShowModal;
  frmCalendar.Free;
end;

end.
