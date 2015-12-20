program O1;

const
  N = 10;

type
  arr_int = array [1..N] of integer;

var
  a: arr_int;

procedure read_arr(var a: arr_int);
var
  i: integer;
begin
  writeln('Enter elements of array:');
  for i := 1 to N do
  begin
    readln(a[i]);
  end;
end;

procedure write_arr(var a: arr_int);
var
  i: integer;
begin
  writeln('Sorted elements of array:');
  for i := 1 to N do
  begin
    writeln(a[i]);
  end;
end;

procedure bubble_sort(var a: arr_int);
var
  i, j: integer;
begin
  for i := 1 to N - 1 do
  begin
    for j := 1 to N - i do
    begin
      if (a[j] > a[j + 1]) then
      begin
        a[j] := a[j] + a[j + 1];
        a[j + 1] := a[j] - a[j + 1];
        a[j] := a[j] - a[j + 1];
      end;
    end;
  end;
end;

begin
  read_arr(a);
  bubble_sort(a);
  write_arr(a);
end.