program OF1;


var
  f1, f2: text;

function inclusion(x, y: text): boolean;

var
  a, b: integer;
  include: boolean;

begin
  read(x, a);
  read(y, b);
  while (not eof(x)) and (not eof(y)) do
  begin
    if (a = b) then
    begin
      read(x, a);
      read(y, b);
      if eof(y) then
      begin
        include := true;
      end;
    end
    else
    begin
      read(x, a);
    end;
  end;
  inclusion := include; 
end;

begin
  assign(f1, 'Input1.txt');
  assign(f2, 'Input2.txt');
  reset(f1);
  reset(f2); 
  writeln(inclusion(f1, f2))
end.