program A1;

uses
  crt;

var
  c: array of char;
  a, b: string;
  lol, i, test: integer;

procedure sum(x, y: string; var c: array of char);

var
  i, k: integer;
begin
  for i := lol downto 1 do
  begin
     //writeln(i);
    // writeln(c[i]);
    // writeln(x[i]);
    c[i] := char(ord(c[i]) + ord(x[i]) - 48);
    c[i - 1] := char(((ord(c[i]) - 48) div 10) + 48);
    c[i] := char(((ord(c[i]) - 48) mod 10) + 48);
  end;
  for i := lol downto lol - y.Length + 1 do
  begin
    c[i] := char(ord(c[i]) + ord(y[i - lol + y.Length]) - 48);
    c[i - 1] := char(ord(c[i - 1]) + ((ord(c[i]) - 48) div 10));
    c[i] := char(((ord(c[i]) - 48) mod 10) + 48);
  end;
  if test > 9 then k := 0 else k := 1;
  for i := k to lol do
    write(c[i]);  
end;

begin
  readln(a);
  readln(b);
  test := ord(a[1]) + ord(b[1]) - 96;
  if a.Length > b.length then
  begin
    lol := a.Length;
    setlength(c, lol + 1);
    for i := 0 to lol do
      c[i] := '0';
    sum(a, b, c);
  end
  else 
  begin
    lol := b.Length;
    setlength(c, lol + 1);
    for i := 0 to lol do
      c[i] := '0';
    sum(b, a, c); 
  end;
  
end.
