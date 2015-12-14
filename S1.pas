program S1;

var
  n, i, k: integer; 
  a: array[1..100000000] of integer;

begin
  readln(n);
  for i := 2 to (n + 1) div 2 do 
  begin
    k := i * 2;
    while k <= n do 
    begin
      a[k] := 1;
      k := k + i;
    end;
    k := 0;
  end;
  for i := 1 to n do
    if a[i] = 0 then write(i, ' ');
end.