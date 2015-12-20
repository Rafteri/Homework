program OF2;

var
  f1, f2, f3: text;

procedure integration(x, y: text; var z: text);

var
  a, b: integer;
  k: integer;

begin
  read(x, a);
  read(y, b);
  while (not eof(x)) and (not eof(y)) do
  begin
    k := 0;
    if (a = b) then
    begin
      write(z, a, ' ', b, ' ');
      read(x, a);
      read(y, b);
      k := 1;
    end
    else if (a < b) then
    begin
      write(z, a, ' ');
      read(x, a);
      K := 2;
    end
    else
    begin
      write(z, b, ' ');
      read(y, b);
      k := 3;
    end;
  end;
  
  if (k = 1) then    // Gigant crutch
  begin
    if a < b then
      write(z, a, ' ', b, ' ')
    else
      write(z, b, ' ', a, ' ');
  end
  else if (k = 2) then
  begin
    if a < b then 
    begin
      write(z, a, ' ');
    end
    else
      while not eof(y) do
      begin
        if a > b then
        begin
          write(z, b, ' ');
          read(y, b);
        end
        else 
        begin
          write(z, a, ' ', b, ' ')
        end;
      end;
  end
  else if (k = 3) then
  begin
    if b < a then 
    begin
      write(z, b, ' ');
    end
    else
      while not eof(x) do
      begin
        if b > a then
        begin
          write(z, a, ' ');
          read(x, a);
        end
        else 
        begin
          write(z, b, ' ', a, ' ')
        end;
      end;
  end;
  
  if not eof(x) then 
  begin
    while not eof(x) do
    begin
      read(x, a);
      write(z, b, ' ');
    end;
  end
  else if not eof(y) then
  begin
    while not eof(y) do
    begin
      read(y, b);
      write(z, b, ' ');
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