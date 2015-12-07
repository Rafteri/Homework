program MinlnLines;

type
    matrix = array [1..3, 1..3] of integer;

var
    a:  matrix;

procedure ReadMatrix();
var
    i, j: integer;
begin
    for i := 1 to 3 do
        for j := 1 to 3 do
            readln(a[i, j]);
end;

procedure WriteMinLinMatrix(a: matrix);
var
    i, j, min: integer;
begin
    for i := 1 to 3 do 
    begin
        min := a[i, 1];
        for j := 2 to 3 do 
            if a[i, j] < min then min := a[i, j];
        writeln('Строка', ' ', i, ' :', min);
    end;
end;

begin
    ReadMatrix();
    WriteMinLinMatrix(a);
end.
