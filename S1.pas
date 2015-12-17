program S1;

const
  N = 1000000000;

type
  mass_bool = array [1..N] of boolean;

procedure sieve_of_eratosthenes(var b: mass_bool; max: integer);
var
  i, k: integer;
begin
  for i := 2 to (max + 1) div 2 do 
  begin
    k := i * 2;
    while k <= max do 
    begin
      b[k] := true;
      k := k + i;
    end;
    k := 0;
  end;
end;

procedure output(b: mass_bool; max: integer);
var
  i: integer;
begin
  for i := 1 to max do
  begin
    if b[i] = false then
    begin
      write(i, ' ');
    end;
  end;
end;

var
  max: integer;
  b: mass_bool;

begin
  readln(max);
  sieve_of_eratosthenes(b, max);
  output(b, max);
end.
