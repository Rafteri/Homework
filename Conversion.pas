program conversion;

var
  a: array of char;
  i, x, n: integer;
  b: boolean;
  c: char;

function is_digit(c: char): boolean;
begin
  if (c <= '9') and (c >= '0') 
    then 
  begin
    is_digit := true;
  end
    else
  begin
    is_digit := false;
  end;
end;

function conversion(b: boolean; c: char): integer;
begin
  if b = true 
    then 
  begin
    conversion := integer(c) - integer('0');
  end
    else
  begin
    conversion := -1;
  end;
end;

function exponent(a, n: integer): integer;
var
  i, x: integer;
begin
  if n = 0 
    then
  begin
    exponent := 1;
  end
    else
  begin
    x := 1;
    for i := 1 to n do 
    begin
      x := x * a;
    end;
    exponent := x;
  end;
end;

function converting(a: array of char; n: integer): integer;
var
  i, x, e, v: integer;
begin
  x := 0;
  for i := 0 to n - 1 do
  begin
    b := is_digit(a[i]);
    v := conversion(b, a[i]);
    e := exponent(10, n - 1 - i);
    x := x + v * e;
  end;
  converting := x;
end;

begin
  readln(n);
  setlength(a, n);
  for i := 0 to n - 1 do 
  begin
    readln(a[i]);
  end;
  x := converting(a, n);
  writeln(x);
end.