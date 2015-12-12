program Arrays;

uses 
  crt;

var 
  y, x: array of real;  
  n, m, i, Ind: integer;

function Index(x, y: array of integer): integer;
var 
  i, j, k: integer;
begin 
  k := -1; 
  for i := 0 to n - 1 do   
    if x[i] = y[0] then    
    begin     
      k := i + 1;      
      for j := 1 to m - 1 do       
        if x[i + j] <> y[j] then        
        begin        
          k := -1;        
          break;        
        end;     
    end;  
  Index := k;  
end;

begin 
  writeln('Ââåäèòå äëèíó ìàññèâà'); 
  readln(n);  
  setlength(y, n); 
  writeln('Ââåäèòå ýëåìåíòû ìàññèâà'); 
  for i := 0 to n - 1 do   
    readln(y[i]);  
  
  writeln('Ââåäèòå äëèíó ìàññèâà'); 
  readln(m);  
  setlength(x, m); 
  writeln('Ââåäèòå ýëåìåíòû ìàññèâà'); 
  for i := 0 to m - 1 do
   readln(x[i]); 
  
  Ind := Index(y, x); 
  if Ind <> -1 then writeln('Íà÷èíàåòñÿ ñ ýëåìåíòà: ', Ind)
  else writeln(Ind);
   readkey();   
end.
