program S2;

const
  nMax = 1000;

type
  boolmass = array [1..nMax] of boolean;

procedure reading(var command: string; var num: integer);
begin
  writeln('Enter command (add/delete/check) or "exit" for exit.');
  readln(command);
end;

procedure add(var b: boolmass; num: integer);
begin
  b[num] := true;
end;

procedure del(var b: boolmass; num: integer);
begin
  b[num] := false;
end;

function check(b: boolmass; num: integer): boolean;
begin
  check := b[num];
end;

procedure do_command(command: string; var b: boolmass; num: integer);
begin
  case command of
    'add': 
    begin
      Writeln('Enter element   0 <= x <= ', nMax);
      readln(num);
      add(b, num);
    end;
    'delete':
    begin
      Writeln('Enter element   0 <= x <= ', nMax);
      readln(num);
      del(b, num);
    end;
    'check':
    begin
      Writeln('Enter element   0 <= x <= ', nMax);
      readln(num);
      writeln(check(b, num));
    end;
    'exit':;
  else writeln('Incorrect command!');
  end;
end;

var
  b: boolmass; 
  num: integer;
  command: string;

begin
  while command <> 'exit' do
  begin
    reading(command, num);
    do_command(command, b, num);
  end;     
end.
