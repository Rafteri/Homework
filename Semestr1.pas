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
  
  readln(h, b, n);      // Считываем данные
  for i := 1 to 3 do    // Считываем значения а в массив
    readln(a[i]);
  
  for j := 1 to 3 do    // Прогоняем 3 различных серий
  begin
    min := abs(func_z(a[j], b + h));max := min; // Присваиваем max и min под модулем значение первого элемента серии
    for i := 2 to n do  // Прогоняем все значения у (кроме первого) в одной серии
    begin
      y := abs(func_z(a[j], b + i * h)); // Находим значение у, сразу находим его модуль, т.к. нас интересует только min и max
      if (y < min) then min := y          // Алгоритм для поиска min и max
      else if (y > max) then max := y;
    end;  
    writeln('Серия: ', j, '   Фи: ', min, '    Омега: ', max);   // Вывод
  end; 
  
  readkey();
end.
