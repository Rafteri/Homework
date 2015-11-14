program task3;

uses
  crt;

var
  n, a, max, k: integer;

begin
  read(a);
  n := a;
  k := 1;
  while a > 0 do 
  begin
    read(a);
    if a > n  
      then k := k + 1 
    else begin
      if max < k then max := k; 
      k := 1; 
    end;
    n := a;
  end;
  writeln(max);
  
end.


{
program task3;

uses
  crt;

var
  x: array of integer;
  n, max, k, i: integer;

begin
  write('Введите колиество элементов:', ' ');
  read(n);
  setlength(x, n);
  for i := 0 to n - 1 do
    readln(x[i]);
  max := 0;
  k := 1;
  for i := 0 to n - 2 do
    if x[i] < x[i + 1]  
      then k := k + 1 
    else begin
      if max < k then max := k; 
      k := 1; 
    end;
  writeln(max);
  
end.
}