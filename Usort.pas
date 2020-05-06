unit USort;

interface

  const
    N = 100;

  type
    TExperiment = record
                    X:Integer;
                    res:Real;
                  end;
    TMas = Array[0 .. N-1] Of TExperiment;

  procedure sort(var ar: TMas; m, l:integer);
  procedure QuickSort(var ar: TMas; cnt:integer);
  
implementation

procedure sort(var ar: TMas; m, l: Integer);
var
    i, j, k:Integer;
    x, tmp: TExperiment;
    s:string;
begin
    i := m;
    j := l;
    x := ar[(m+l) div 2];
    repeat
      while ar[i].res < x.res  Do
        Inc(i);
      while ar[j].res > x.res Do
        Dec(j);
      if i <= j then
        begin
          tmp := ar[i];
          ar[i] := ar[j];
          ar[j] := tmp;
          Inc(i);
          Dec(j)
        end
    until i > j;
    if m < j then
      sort(ar, m, j);
    if i < l then
      sort(ar, i, l)
end;

procedure QuickSort(var ar: Tmas; cnt:integer);
begin
  sort(ar, 0, cnt-1);
end;

function CountStep(j: integer): integer; //ф-я для вычисления шага 2^k-1
var i, st: integer;
begin
    st:= 1;
    for i:= 1 to j do

        st:= 2*st;
    CountStep:= st - 1;
end;

var i, j, step, p, l, T: integer;
      el: TElem;
begin
    T:= Trunc(Ln(n) / Ln(2)); // определяем кол-во шагов
    for j:= T downto 1 do
       begin
           step:= CountStep(j); //вычисляем очередной шаг
           for p := 1 to step do //применяем сортировку вставками для всех групп
            begin
                 i:= step + p;
                           while i <= N do
                      begin
                          el:= FMas[i];
                          l:= i - step;
                          while (l >= 1) and (el < FMas[l]) do
                            begin
                                FMas[l + step]:= FMas[l];
                                l:= l - step;
                            end;
                          FMas[l + step]:= el;
                          i:= i + step;
                       end; //while
               end; //for
        end; //for

 end;
end.
