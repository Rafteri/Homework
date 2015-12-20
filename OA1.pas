program OA1;

const N = 10;

type arr_int = array [1..N] of integer;

var a: arr_int;
    num: integer;

procedure read_arr_int(var a: arr_int; var num: integer);
var i:integer;
begin
  writeln('Enter ', N, ' elements');
  for i:= 1 to N do
  begin
    readln(a[i]);
  end;
  writeln('Enter the required element');
  readln(num);
end;

function dio_search(var a: arr_int; num: integer):integer;
var i, lft, rght: integer;
    status: boolean;
begin
  lft := 1;
  rght := N;
  while not status do
  begin
    i := (lft + rght) div 2;
    if (a[i] > num) then
    begin
      rght := i;
    end
    else if (a[i] < num) then
    begin
      lft := i;
    end
    else
    begin
      dio_search := i;
      status := true;
    end;
    if abs(lft - rght) = 1 then
    begin
      writeln('Element not found!');
      break;
    end
  end;
  

end;

begin
  read_arr_int(a, num);
  writeln(dio_search(a, num));
end.