program F2;

var f: text;
    sum: integer;

function is_digit(c: char): boolean;
begin
  is_digit := (c <= '9') and (c >= '0');
end;

function conversion(c: char): integer;
begin
  conversion := (is_digit(c) ? integer(c) - integer('0') : -1);
end;

function converting(a: string; n: integer): integer;
var  i, x, exp: integer;
begin
  x := 0; 
  exp := 1;
  for i := n downto 1 do
    begin
      x := x + conversion(a[i]) * exp;
      exp := exp * 10;
    end;
  converting := x;
end;

function sum_of_int(f: text): integer;
var i, sum: integer;
    s: string;
    c: char;
begin
  sum := 0;
  i := 0; 
  s := '';
  while not eof(f) do
  begin
    read(f, c);
    if (is_digit(c)) 
    then
    begin
      i := i + 1;
      s := s + c;
    end
    else 
    begin
      sum := sum + converting(s, i);
      i := 0;
      s := '';
    end;
  end;
  if (s <> '') then
  begin
      sum := sum + converting(s, i);
  end;
  sum_of_int := sum;
end;


begin
  assign(f, 'Input.txt');
  reset(f);
  sum := sum_of_int(f);
  rewrite(f, 'Output.txt');
  write(f, 'Sum of numbers: ', sum);
  close(f);
end.
