program Intersection;

uses
  crt;

var
  s1, s2: string;
  i, k: integer;

procedure same(s1, s2: string);
var
  i, k: integer;
begin
  k := 1;i := 1;
  while (i <= s1.Length) and (k <= s2.length) do
  begin
    if s1[i] = s2[k] then 
    begin
      write(s1[i], ' ');
      k := k + 1;i := i + 1;
    end
    else if s1[i] > s2[k] then k := k + 1
    else i := i + 1;
  end;
end;

begin 
  k := 1;  
  readln(s1);  
  readln(s2); 
  same(s1,s2);
  readkey();
end.