program M1;

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

procedure WriteTransposeMatrix(a: matrix);
var
    i, j: integer;
begin
    for i := 1 to 3 do begin
        for j := 1 to 3 do
            write(a[j, i]);
        writeln();
    end;
end;

begin
    ReadMatrix();
    WriteTransposeMatrix(a);
end.
