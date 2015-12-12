program OA1;

const N = 10;

type arr_int = array [1..N] of integer;

var a: arr_int;
    i, num: integer;

function dio_search(var a: arr_int):integer;
var i, lft, rght: integer;
    status: boolean;
begin
  lft := 1;
  rght := N;
  while not status do
  begin
    i := (lft + rght) div 2;
    if (a[i] < num) then
    begin
      rght := i;
    end
    else if (a[i] > num) then
    begin
      lft := i;
    end
    else
    begin
      dio_search := i;
      status := true;
    end;
  end;
  

end;

begin
  for i:= 1 to N do
  begin
    readln(a[i]);
  end;
  read(num);
  writeln(dio_search(a));
end.