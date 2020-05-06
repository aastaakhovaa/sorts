object Form1: TForm1
  Left = 865
  Top = 213
  Width = 587
  Height = 564
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object inputPnl: TGroupBox
    Left = 0
    Top = 0
    Width = 571
    Height = 153
    Align = alTop
    TabOrder = 0
    object btnPanel: TPanel
      Left = 384
      Top = 15
      Width = 185
      Height = 136
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object SortBtn: TButton
        Left = 24
        Top = 96
        Width = 137
        Height = 33
        Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072
        TabOrder = 0
        OnClick = SortBtnClick
      end
      object InputABtn: TButton
        Left = 24
        Top = 0
        Width = 137
        Height = 41
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1040
        TabOrder = 1
        OnClick = InputABtnClick
      end
      object InputXbtn: TButton
        Left = 24
        Top = 56
        Width = 137
        Height = 33
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1061
        TabOrder = 2
        OnClick = InputXbtnClick
      end
    end
    object memoPnl: TPanel
      Left = 2
      Top = 15
      Width = 382
      Height = 136
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object lbl2: TLabel
        Left = 48
        Top = 16
        Width = 89
        Height = 23
        Caption = #1042#1074#1077#1076#1080#1090#1077' A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl3: TLabel
        Left = 48
        Top = 56
        Width = 89
        Height = 23
        Caption = #1042#1074#1077#1076#1080#1090#1077' X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object AEdt: TEdit
        Left = 168
        Top = 16
        Width = 193
        Height = 21
        TabOrder = 0
        OnKeyPress = AEdtKeyPress
      end
      object XEdt: TEdit
        Left = 168
        Top = 56
        Width = 193
        Height = 21
        TabOrder = 1
        OnKeyPress = XEdtKeyPress
      end
    end
  end
  object resulPnl: TGroupBox
    Left = 0
    Top = 153
    Width = 571
    Height = 372
    Align = alClient
    TabOrder = 1
    object spl1: TSplitter
      Left = 273
      Top = 15
      Width = 296
      Height = 355
      Align = alClient
    end
    object SourceMemo: TMemo
      Left = 2
      Top = 15
      Width = 271
      Height = 355
      Align = alLeft
      Enabled = False
      TabOrder = 0
    end
    object ResStrngrd: TStringGrid
      Left = 272
      Top = 16
      Width = 297
      Height = 313
      ColCount = 2
      DefaultColWidth = 144
      DefaultRowHeight = 25
      Enabled = False
      FixedCols = 0
      RowCount = 12
      FixedRows = 0
      GridLineWidth = 3
      ScrollBars = ssNone
      TabOrder = 1
    end
  end
end
