{Есть некий измерительный прибор, работа которого зависит от входных
параметров a и x, а результат определяется следующей формулой
y = a * sin (a*x) * cos^2 (x / a). Проводится серия опытов для значений
x 1  , x 2  ,…, x n  , ? = const. Вывести результат в виде таблицы,
упорядоченной по убыванию значений показаний прибора, полученных в ходе опытов.}

unit Uex17;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Usort, Grids;

type
  TForm1 = class(TForm)
    inputPnl: TGroupBox;
    btnPanel: TPanel;
    memoPnl: TPanel;
    SortBtn: TButton;
    resulPnl: TGroupBox;
    SourceMemo: TMemo;
    InputABtn: TButton;
    AEdt: TEdit;
    XEdt: TEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    spl1: TSplitter;
    InputXbtn: TButton;
    ResStrngrd: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure ApplicationIdle(Sender: TObject; var done: Boolean);
    procedure AEdtKeyPress(Sender: TObject; var Key: Char);
    procedure XEdtKeyPress(Sender: TObject; var Key: Char);
    procedure InputABtnClick(Sender: TObject);
    procedure SortBtnClick(Sender: TObject);
    procedure InputXbtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Arr:TMas;
  A:integer;
  count:Integer;

implementation

{$R *.dfm}

// создание формы
procedure TForm1.FormCreate(Sender: TObject);
begin
  Application.OnIdle:=ApplicationIdle;
  SourceMemo.Lines.Add('Дано:');
  ResStrngrd.Cells[0, 0]:='Результат';
  ResStrngrd.Cells[1, 0]:='X';
end;

procedure  TForm1.ApplicationIdle(Sender: TObject; var done: Boolean);
var isNotEmpty, ItemsNotEmpty: Boolean;
begin
  ItemsNotEmpty:=((Arr[0].x <> 0) and (Arr[0].res <> 0) and (not AEdt.Enabled));
  InputABtn.Enabled:=(AEdt.Text<>'');
  InputXbtn.Enabled:=(XEdt.Text<>'') and (a <> 0);
  SortBtn.Enabled:=ItemsNotEmpty;
end;

procedure TForm1.AEdtKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9']) and (Ord(Key)<>8) then
     Key:=#0;
end;

procedure TForm1.XEdtKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9']) and (Ord(Key)<>8) then
     Key:=#0;
end;

procedure TForm1.InputABtnClick(Sender: TObject);
begin
  A:=StrToInt(AEdt.Text);
  SourceMemo.Lines.Add('A = ' + AEdt.Text);
  AEdt.Clear;
  aedt.Enabled:=False;
end;

procedure TForm1.SortBtnClick(Sender: TObject);
var
  i:Integer;
begin
  QuickSort(Arr,count);
  for i:=0 to count-1 do
    with Arr[i] do
      begin
        ResStrngrd.Cells[0,i+1]:=FloatToStr(Res);
        ResStrngrd.Cells[1,i+1]:=IntTostr(x);
      end;
end;

function Experiment(a,x:integer):Real;
begin
  Result :=a*sin(a*x)*Sqr(cos(x/a));
end;

procedure TForm1.InputXbtnClick(Sender: TObject);
begin
  with Arr[count] do
    begin
      x:=StrToInt(XEdt.text);
      res:=Experiment(a,x);
      SourceMemo.Lines.Add('X: ' + IntToStr(x) + ' Результат: ' + FloatToStr(res) )
    end;
  XEdt.Clear;
  Inc(count);
end;

end.
