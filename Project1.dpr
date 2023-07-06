program Project1;

uses
  Vcl.Forms,
  Calendar in 'Calendar.pas' {frmCalendar},
  MainForm in 'MainForm.pas' {frmMain},
  MyCalendarComp in 'MyCalendarComp.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
