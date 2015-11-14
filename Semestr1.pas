program Task_1z_2b_3d;

uses
  crt;

var
  a: array [1..3] of real;
  n, j, i: integer;
  h, b, y, min, max: real;

function func_z(a, x: real): real;
begin
  if (a < 0) then func_z := Sqr(Sin(a + x))
  else func_z := Sqr(Sin(1 + a * x - Sqr(x)));
end;

begin
  
  readln(h, b, n);      // ��������� ������
  for i := 1 to 3 do    // ��������� �������� � � ������
    readln(a[i]);
  
  for j := 1 to 3 do    // ��������� 3 ��������� �����
  begin
    min := abs(func_z(a[j], b + h));max := min; // ����������� max � min ��� ������� �������� ������� �������� �����
    for i := 2 to n do  // ��������� ��� �������� � (����� �������) � ����� �����
    begin
      y := abs(func_z(a[j], b + i * h)); // ������� �������� �, ����� ������� ��� ������, �.�. ��� ���������� ������ min � max
      if (y < min) then min := y          // �������� ��� ������ min � max
      else if (y > max) then max := y;
    end;  
    writeln('�����: ', j, '   ��: ', min, '    �����: ', max);   // �����
  end; 
  
  readkey();
end.
