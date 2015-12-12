program OA2;

type massive = array of real;

var n, m, i: integer;
    x, y: massive;

function inclusion(x, y: massive): boolean;

var
  i, j: integer;
  b: boolean;

begin
  j := 0;
  i := 0;
  while i < n do 
  begin
    if x[i] = y[j] then 
    begin
      i := i + 1;
      j := j + 1;
      if j = m - 1 then 
      begin
        b:= true;
        i := n;
      end; 
    end 
    else 
    begin
      i := i + 1 - j;
      j := 0;
    end; 
  end;
  inclusion := b; 
end;

begin
  writeln('Count of array elements');
  readln(n);
  setlength(x, n);
  writeln('Elements of array');
  for i := 0 to n - 1 do 
    readln(x[i]);
  
  writeln('Count of array elements');
  readln(m);
  setlength(y, m);
  writeln('Elements of array');
  for i := 0 to m - 1 do 
    readln(y[i]);  
  
  writeln(inclusion(x, y));   
end.