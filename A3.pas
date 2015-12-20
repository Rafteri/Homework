program A3;

function longest_step(): integer;
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
  longest_step := max;
end;

begin
  writeln(longest_step());
end.