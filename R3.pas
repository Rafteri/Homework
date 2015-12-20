program R3;

type
  points = record
    x: real;
    y: real;
  end;
  coordinates = array of points;

procedure read_r(var r: real);
begin
  writeln('Enter the r of circle');
  readln(r);
end;

function reading(): coordinates;
var i, n:integer;
    coord: coordinates;
    
begin
  writeln('Enter the amount of points');
  readln(n);
  setlength(coord, n);
  for i:= 0 to n - 1 do
  begin
    write('Enter the x: ');
    readln(coord[i].x);
    write('Enter the y: ');
    readln(coord[i].y)
  end;
  reading:= coord;
end;

procedure output(belonging: boolean);
begin
  if belonging then
  begin
    writeln('They all lie on a given circle');
  end
  else
  begin
    writeln('Not all lie on a given circle');
  end;
end;

function belong(x, y, r: real): boolean;
begin
  belong := (x*x + y*y = r*r);
end;

procedure belongs();
var
  coord: coordinates;
  belonging: boolean;
  r: real;
  i:integer;

begin
  belonging := true;
  read_r(r);
  coord:= reading();
  while (i < length(coord)) and belonging do
  begin
    belonging := belong(coord[i].x, coord[i].y, r);
    i:= i + 1
  end;
  output(belonging);
end;

begin
  belongs();
end.