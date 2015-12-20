program R4;

type
  enrollee = record
    name: string;
    medal: boolean;
    score: array [1..3] of real;
  end;

function check(enrol: enrollee): boolean;
var
  five: boolean;
  i: integer;
begin
  for i := 1 to 3 do
  begin
    if enrol.score[i] > 74 then
    begin
      five := true;
    end;
  end;
  check := ((enrol.medal) and (five) or ((enrol.score[1] + enrol.score[2] + enrol.score[3]) / 3 > 79));
end;


procedure write_enrol(enrol: enrollee);
var
  i: integer;
begin
  write(enrol.name);
  if enrol.medal then
  begin
    write(' has medal ');
  end;
  for i := 1 to 3 do
  begin
    write(' ', enrol.score[i]);
  end;
  writeln();
end;

procedure enrollment();
var
  f: text;
  enrol: enrollee;

begin
  assign(f, 'Input.txt');
  reset(f);
  while not eof(f) do
  begin
    read(f, enrol.medal, enrol.score[1], enrol.score[2], enrol.score[3], enrol.name);
    readln(f);
    if check(enrol) then
    begin
      write_enrol(enrol);
    end;
  end;
end;

begin
  enrollment();
end.
