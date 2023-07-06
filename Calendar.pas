unit Calendar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.Samples.Calendar, Vcl.WinXCalendars,
  Vcl.StdCtrls, DateUtils, Vcl.ExtCtrls, MyCalendarComp;

type
  TfrmCalendar = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnPrevMonth: TButton;
    btnNextMonth: TButton;
    lblMonth: TLabel;
    procedure btnPrevMonthClick(Sender: TObject);
    procedure btnNextMonthClick(Sender: TObject);
  private
    { Private declarations }
    calTest: TMyCalendar;
    procedure SetCaption;
  public
    { Public declarations }
    constructor MyCreate(AOwner: TComponent; ShowCalBGColor: Boolean=True);
  end;

var
  frmCalendar: TfrmCalendar;

implementation

{$R *.dfm}


procedure TfrmCalendar.btnNextMonthClick(Sender: TObject);
begin
  calTest.Month := calTest.Month+1;
  lblMonth.Caption := calTest.GetMonthName;
  SetCaption;
end;

procedure TfrmCalendar.btnPrevMonthClick(Sender: TObject);
begin
  calTest.Month := calTest.Month-1;
  lblMonth.Caption := calTest.GetMonthName;
  SetCaption;
end;

constructor TfrmCalendar.MyCreate(AOwner: TComponent; ShowCalBGColor: Boolean);
begin
  inherited Create(AOwner);

  calTest := TMyCalendar.Create(Self);
  with calTest do
  begin
    Parent := Panel1;
    Align := alClient;
    WeekendBGColor := ShowCalBGColor;
  end;
  lblMonth.Caption := calTest.GetMonthName;
  SetCaption;
end;

procedure TfrmCalendar.SetCaption;
begin
  self.Caption := 'カレンダー' + IntToStr(calTest.Year) + '/' + IntToStr(calTest.Month);
end;

end.
