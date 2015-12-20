program R1;

const
  N = 5;

type
  numbers = record
    Chislitel: integer;
    Znamenatel: integer;
  end;
  polynomial = array [1..N] of integer;

procedure reading_polynomial(var pol: polynomial);
var
  i: integer;
begin
  writeln('Enter the ', N, ' coefficients of the equation');
  for i := 1 to N do
  begin
    readln(pol[i]);
  end;
end;

procedure reading(var command: string);
begin
  writeln('Enter command "calc" for calculation or "exit" for exit.');
  readln(command);
end;

procedure Gorner(numbs: numbers; pol: polynomial);
var
  i: integer;
  x: real;
begin
  x := pol[1];
  for i := 2 to N do
  begin
    x := (numbs.Chislitel / numbs.Znamenatel) * x + pol[i];
  end;
  writeln('The value of the polynomial at x = ', numbs.Chislitel, '/', numbs.Znamenatel, ' is ', x);
  writeln();
end;

procedure do_command(var command: string; var numbs: numbers; var polynom: polynomial);
var
  x: integer;
begin
  case command of
    'calc': 
      begin
        Writeln('Enter element numerator of x');
        readln(numbs.Chislitel);
        Writeln('Enter element denominator of x');
        readln(x);
        if x = 0 then
          while x = 0 do
          begin
            writeln('Incorrect denominator! Please, enter it again.');
            readln(x);
          end;
        numbs.Znamenatel := x;
        Gorner(numbs, polynom);
      end;
    'exit': ;
  else writeln('Incorrect command!');
  end;
end;

var
  polynom: polynomial;
  command: string;
  numbs: numbers;

begin
  reading_polynomial(polynom);
  while command <> 'exit' do
  begin
    reading(command);
    do_command(command, numbs, polynom);
  end;
end.
