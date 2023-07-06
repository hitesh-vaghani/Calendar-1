unit MyCalendarComp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Grids, Vcl.Samples.Calendar, Vcl.WinXCalendars, Vcl.StdCtrls, DateUtils,
  Vcl.ExtCtrls;

  type
    TMyCalendar = class(TCalendar)
    private
      bWeekendBGColor: Boolean;
    protected
      procedure DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState); override;
    public
      function GetMonthName: string;
      property WeekendBGColor: Boolean read bWeekendBGColor write bWeekendBGColor;
  end;

implementation

function TMyCalendar.GetMonthName: string;
var
  dtTemp: TDatetime;
begin
  dtTemp := EncodeDate(YearOf(Date), Month, 1);
  Result := FormatDateTime('mmmm', dtTemp);
end;

procedure TMyCalendar.DrawCell(ACol, ARow: Longint; ARect: TRect;  AState: TGridDrawState);
var
  sCellText: string;
  sDay: string;
begin

  if ARow = 0 then
    Canvas.Font.Style := [fsBold];

  if (ACol=0) then
    Canvas.Font.Color := clRed;

  if (ACol=6) then
    Canvas.Font.Color := clBlue;

  if WeekendBGColor then
  begin
    if (ACol=0) then
      Canvas.Brush.Color := $00DFDFFF;

    if (ACol=6) then
      Canvas.Brush.Color := $00FFFFB9;

    sCellText := CellText[ACol, ARow];
    sDay := FormatDateTime('d', Date);
    if (Month=MonthOf(Date)) and (sCellText=sDay) then
      Canvas.Brush.Color := clLime;
  end;
  inherited;
end;

end.
