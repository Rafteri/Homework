program OF3;

type
  freal = file of real;

procedure difference(x, y: freal; var z: freal);

var
  a, b: real;
  k : integer;

begin
  read(x, a);
  read(y, b);
  k:= 0;
  while (not eof(x)) and (not eof(y)) do
  begin
    if (a = b) then
    begin
      read(x, a);
      read(y, b);
      k:=0;
    end
    else
    begin
      write(z, a);
      read(x, a);
      k:=1;
    end;
  end;
  
  if k = 0 then  
  begin
    if (a < b) then
    begin
      write(z, a);
      write(z, b);
    end
    else if (a<>b) then
    begin
      write(z, b);
      write(z, a);
    end;
  end
  else
  begin
    while not eof(y) do
    begin
      if (b < a) then
      begin
        write(z, b);
        read(y, b);
      end
      else if (a < b) then
      begin
        write(z, a);
        write(z, b);
        break;
      end;
     end;  
  end;
  
  if not eof(x) then 
  begin
    while not eof(x) do
    begin
      read(x, a);
      write(z, a);
    end;
  end
  else if not eof(y) then
  begin
    while not eof(y) do
    begin
      read(y, b);
      write(z, b);
    end;
  end;
end;

var
  f1, f2, f3: freal;

begin
  assign(f1, 'Input1.dat');
  assign(f2, 'Input2.dat');
  assign(f3, 'Output.dat');
  reset(f1);
  reset(f2);
  rewrite(f3);
  difference(f1, f2, f3);
  close(f1);
  close(f2);
  close(f3);
end.