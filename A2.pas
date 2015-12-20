program A2;

type
  arr_int = array of integer;

var
  a: arr_int;
  n: integer;

procedure read_arr(var a: arr_int; var n: integer);
var i:integer;
begin
  write('Enter the amount of number:', ' ');
  read(n);
  setlength(a, n);
  for i := 0 to n - 1 do
  begin
    readln(a[i]);
  end;
end;

procedure checking(a: arr_int; n: integer);
var 
  i, first, k: integer;
begin
  k := -1;
  first := a[0];
  for i := 1 to trunc(n div 2) do
    if first = a[i] then 
    begin
      k := i;
      break;
    end;
  if k <> -1 then 
  begin
    for i := 0 to n - 1 - k do
      if a[i] <> a[i + k] then 
      begin
        k := -1;
        write(k);
        break;
      end;
  end;
  
  if k = -1 then writeln('Not periodic')
  else writeln('Period:', ' ', k - 1 ); 
end;

begin
  read_arr(a, n);
  checking(a, n);
end.
