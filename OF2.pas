program OF2;


var
  f1, f2, f3: text;

procedure integration(x, y: text; var z: text);

var
  c1, c2: char;
  k : integer;

begin
  read(x, c1);
  read(y, c2);
  while (not eof(x)) and (not eof(y)) do
  begin
    k:= 0;
    if (c1 = c2) then
    begin
      write(z, c1, c2);
      read(x, c1);
      read(y, c2);
      k := 1;
    end
    else if (c1 < c2) then
    begin
      write(z, c1);
      read(x, c1);
      K := 2;
    end
    else
    begin
      write(z, c2);
      read(y, c2);
      k := 3;
    end;
  end;
  
  if (k = 1) then    // Gigant crutch
  begin
    if c1 < c2 then
    write(z, c1, c2)
    else
    write(z, c2, c1);
  end
  else if (k = 2)then
  begin
    write(z, c1);
  end
  else if k = 3 then
  begin
    write(z, c2);
  end;
  
  if not eof(x) then 
  begin
    while not eof(x) do
    begin
      read(x, c1);
      write(z, c1);
    end;
  end
  else if not eof(y) then
  begin
    while not eof(y) do
    begin
      read(y, c2);
      write(z, c2);
    end;
  end;
end;

begin
  assign(f1, 'Input1.txt');
  assign(f2, 'Input2.txt');
  assign(f3, 'Output.txt');
  reset(f1);
  reset(f2);
  rewrite(f3);
  integration(f1, f2, f3);
  close(f1);
  close(f2);
  close(f3);
end.