program F3;

const
  N = 5;

type
  arr = array [1..N] of integer;

var
  f: text;
  a: arr;
  s: string;

procedure read_array_int();
var
  i: integer;
begin
  for i := 1 to N do
  begin
    readln(a[i]);
  end;
end;

function int_to_str(a: integer): string;
var
  i, exp: integer;
  s: string;
  c: char;
begin
  if a < 0 then 
  begin
    s := '-';
    a := -a;
  end
  else
  begin
    s := '';
  end;
  exp := 1000;
  for i := 1 to 4 do
  begin
    c := Chr(integer('0') + (a div exp));
    if not ((c = '0') and ((s = '') or (s = '-'))) then
    begin
      s := s + c;
      a := a mod exp;
    end;
    exp := exp div 10;
  end;
  if (s = '') then
  begin
    s := '0';
  end;
  int_to_str := s;
end;

function converting(a: arr): string;
var
  i: integer;
  s: string;

begin
  s := '';
  for i := 1 to N do
  begin
    s := s + int_to_str(a[i]) + ' ';
  end;
  converting := s;
end;

begin
  read_array_int();
  assign(f, 'R:\PABCWork.NET\Output.txt');
  rewrite(f);
  s := converting(a);
  write(f, s);
  close(f);
end.