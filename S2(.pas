program S2;

const nMax = 1000;

type boolmass = array [1..nMax] of boolean;

procedure reading(var command:string);
begin
    writeln('Enter command. (add/delete/check)');
    readln(command);
end;
procedure add(var b: boolmass; num: integer);
begin
    a[num]:= true;
end;

procedure delete(var b:boolmass; num: integer)
begin
    a[num]:= false;
end;

function check(b:boolmass; num: integer):boolean;
begin
    check:= a[num];
end;

procedure do_command(command: string);
begin
    case commad of
    'add':
end;
var b: boolmass; 
    num, count: integer;
    command:= string;
    
begin
    while count = 1 do
    begin
        reading(command);
        
end.
