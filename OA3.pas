program OA3;

type massive = array of real;

var n, m, i: integer;
    a1, a2, a3: massive;

procedure difference(x: massive; n:integer; y: massive; m:integer; var z: massive);

var
  i, j, k: integer;

begin
  j := 0;
  i := 0;
  k := 0;
  while i < n do 
  begin
    if x[i] = y[j] then 
    begin
      i := i + 1;
      j := j + 1;
    end 
    else 
    begin
      k:= k + 1;
      setlength(a3, k);
      a3[k - 1] := x[i];
      i:= i + 1;
    end; 
  end;
  if (j < m) then
  begin
    for i:= j to m - 1 do
    begin
      k:= k + 1;
      setlength(a3, k);
      a3[k - 1] := y[i];
    end;
  end;
end;

begin
  writeln('Count of array elements');
  readln(n);
  setlength(a1, n);
  writeln('Elements of array');
  for i := 0 to n - 1 do 
    readln(a1[i]);
  
  writeln('Count of array elements');
  readln(m);
  setlength(a2, m);
  writeln('Elements of array');
  for i := 0 to m - 1 do 
    readln(a2[i]);  
    
  if (a1[0] < a2[0]) then
  begin
    difference(a1, n, a2, m, a3);
  end
  else
  begin
    difference (a2, m, a1, n, a3);
  end;
end.