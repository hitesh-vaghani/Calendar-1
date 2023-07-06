object frmCalendar: TfrmCalendar
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Calendar'
  ClientHeight = 215
  ClientWidth = 294
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 13
  object lblMonth: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 288
    Height = 13
    Align = alTop
    Alignment = taCenter
    Caption = 'lblMonth'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 49
  end
  object Panel1: TPanel
    Left = 0
    Top = 19
    Width = 294
    Height = 155
    Align = alClient
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 174
    Width = 294
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btnPrevMonth: TButton
      Left = 15
      Top = 6
      Width = 106
      Height = 29
      Caption = #21069#26376
      TabOrder = 0
      OnClick = btnPrevMonthClick
    end
    object btnNextMonth: TButton
      Left = 162
      Top = 6
      Width = 114
      Height = 29
      Caption = #32716#26376
      TabOrder = 1
      OnClick = btnNextMonthClick
    end
  end
end
