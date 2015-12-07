program A2;

uses
  crt;

var
  a: array of integer;
  n, i, first, k: integer;

begin
  write('Ââåäèòå êîëè÷åñòâî ýëåìåíòîâ:', ' ');
  read(n);
  setlength(a, n);
  for i := 0 to n - 1 do
    readln(a[i]);
  k := -1;
  first := a[0];
  for i := 1 to trunc(n div 2) do
    if first = a[i] then 
    begin
      k := i;
      break;
    end;
  if k <> -1 then 
  begin
    for i := 0 to n - 1 - k do
      if a[i] <> a[i + k] then 
      begin
        k := -1;
        write(k);
        break;
      end;
  end;
  if k = -1 then writeln('Íå ïåðèîäè÷íà')
  else writeln('Ïåðèîäè÷íà ñ ïåðèîäîì:', ' ', k - 1 ); 
end.
