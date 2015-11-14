program Index_Founding;

uses
  crt;

var
  y, x: array of integer;
  n, m, i, Ind: integer;

function Index(x, y: array of integer): integer;

var
  i, j, k: integer;

begin
  k := -1;
  j := 0;
  i := 0;
  while i < n do 
  begin
    if x[i] = y[j] then 
    begin
      i := i + 1;j := j + 1;       
      if j = m - 1 then 
      begin
        k := i - j;
        i := n;
      end; 
    end 
    else begin
      i := i + 1 - j;
      j := 0;
    end; end;
  Index := k; 
end;

begin
  writeln('Введите длину массива');
  readln(n);
  setlength(y, n);
  writeln('Введите элемента массива');
  for i := 0 to n - 1 do 
    readln(y[i]);
  
  writeln('Введите длину массива');
  readln(m);
  setlength(x, m);
  writeln('Введите элементы массива');
  for i := 0 to m - 1 do 
    readln(x[i]);  
  
  Ind := Index(y, x) + 1;   
  writeln('Начинается с элемента: ', Ind);   
  readkey();
end.