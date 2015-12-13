program OF1;


var
  f1, f2: text;

function inclusion(x, y: text): boolean;

var
  c1, c2: char;
  b: boolean;

begin
  read(x, c1);
  read(y, c2);
  while (not eof(x)) and (not eof(y)) do
  begin
    if (c1 = c2) then
    begin
      read(x, c1);
      read(y, c2);
      if eof(y) then
      begin
        b := true;
      end;
    end
    else
    begin
      read(x, c1);
    end;
  end;
  inclusion := b; 
end;

begin
  assign(f1, 'Input1.txt');
  assign(f2, 'Input2.txt');
  reset(f1);
  reset(f2); 
  writeln(inclusion(f1, f2))
end.