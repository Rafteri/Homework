program OA4;

type
  massive = array of real;

var
  n, m: integer;
  a1, a2, a3: massive;


procedure read_arr(var x, y: massive; var n, m: integer);
var
  i: integer;
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
end;

procedure association(x: massive; n: integer; y: massive; m: integer; var z: massive);

var
  i, j, k: integer;

begin
  j := 0;
  i := 0;
  k := 0;
  while (i < n) and (j < m) do 
  begin
    if x[i] = y[j] then 
    begin
      k := k + 2;
      setlength(a3, k);
      a3[k - 2] := x[i];
      a3[k - 1] := y[j];
      i := i + 1;
      j := j + 1;
    end 
    else if x[i] < y[j] then
    begin
      k := k + 1;
      setlength(a3, k);
      a3[k - 1] := x[i];
      i := i + 1;
    end
    else
    begin
      k := k + 1;
      setlength(a3, k);
      a3[k - 1] := y[j];
      j := j + 1;
    end;
  end;
  if (j < m) then
  begin
    for i := j to m - 1 do
    begin
      k := k + 1;
      setlength(a3, k);
      a3[k - 1] := y[i];
    end;
  end;
end;

procedure output_association(a3: massive);
var i:integer;
begin
  writeln('Association:');
  for i:= 0 to length(a3) - 1 do
  begin
    writeln(a3[i]);
  end;
end;

begin
  read_arr(a1, a2, n, m);  
  
  if (a1[n - 1] < a2[m - 1]) then
  begin
    association(a1, n, a2, m, a3);
  end
  else
  begin
    association(a2, m, a1, n, a3);
  end;
  
  output_association(a3);
end.