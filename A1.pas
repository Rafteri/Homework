program A1;

var
  c: array of char;
  a, b: string;
  longest, i: integer;

procedure sum(x, y: string; var c: array of char);

var
  i, k: integer;
begin
  for i := longest downto 1 do
  begin
    c[i] := char(ord(c[i]) + ord(x[i]) - 48);
    c[i - 1] := char(((ord(c[i]) - 48) div 10) + 48);
    c[i] := char(((ord(c[i]) - 48) mod 10) + 48);
  end;
  for i := longest downto longest - y.Length + 1 do
  begin
    c[i] := char(ord(c[i]) + ord(y[i - longest + y.Length]) - 48);
    c[i - 1] := char(ord(c[i - 1]) + ((ord(c[i]) - 48) div 10));
    c[i] := char(((ord(c[i]) - 48) mod 10) + 48);
  end;
  if c[0] <> '0' then
  begin
    k := 0;
  end
  else 
  begin
    k := 1;
  end;
  for i := k to longest do
    write(c[i]);  
end;

begin
  readln(a);
  readln(b);
  if a.Length > b.length then
  begin
    longest := a.Length;
    setlength(c, longest + 1);
    for i := 0 to longest do
      c[i] := '0';
    sum(a, b, c);
  end
  else 
  begin
    longest := b.Length;
    setlength(c, longest + 1);
    for i := 0 to longest do
      c[i] := '0';
    sum(b, a, c); 
  end;
end.
