program OA5;

type
  massive = array of real;
  
var
  a, b: massive;
  n, m: integer;

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
  
procedure intersection(s1, s2: massive);
var
  i, k: integer;
begin
  writeln('Intersection:');
  k := 1;i := 1;
  while (i < s1.Length) and (k < s2.length) do
  begin
    if s1[i] = s2[k] then 
    begin
      writeln(s1[i]);
      k := k + 1;i := i + 1;
    end
    else if s1[i] > s2[k] then k := k + 1
    else i := i + 1;
  end;
end;

begin 
  read_arr(a, b, n, m); 
    
  intersection(a,b);
end.