uses crt;

procedure q;
begin
  writeln('Приблизительное значение - 1');
  writeln('Точное значение - 2');
  writeln('Абсолютная погрешность - 3');
  writeln('Относительная погрешность - 4');
  writeln('Очистить экран - 5');
  writeln('Выход - 6');
end;

function f(x: real): real;
begin
  f := (1 * (x * x * x) + ((-2) * (x * x)) + ((-3) * x) + 3);                  
end;

function f1(x: real): real;
begin
  f1 := (1 / 4) * (x * x * x * x) + (-2 / 3) * (x * x * x) + (-3/ 2) * (x * x) + (3 * x);         
end;

begin
  var a, b, s, y: real;
  var n, g: integer;
  repeat
    write('Введите левую границу интервала от -5 до 5 a=');
    readln(a);
  until (a >= -5) and (a <= 5);
  repeat
    write('Введите правую границу интервала от a или от 0 до 10 b=');
    readln(b);
  until (b >= 0) and (b > a) and (b <= 10);
  repeat
    write('Введите число промежутков от 20 до 1000 n=');
    readln(n);
  until (n >= 20) and (n <= 1000);
  s := (f(a) + f(b)) / 2;  
  for var i := 1 to n - 1 do
  begin
    s := s + f(a + i * ((b - a) / n));
  end; 
  s *= (b - a) / n;
  y := f1(b) - f1(a);
  begin
    repeat
      q;
      read(g);
      case g of
        1: begin writeln('Приблизительное значение = ', Abs(s):1:7) end;
        2: begin writeln('Точное значение = ', abs(y):1:7) end;
        3: begin writeln('Абсолютная погрешность = ', abs(y - s):1:7) end;
        4: begin writeln('Относительная погрешность = ', abs(y - s) / y) end;
        5: begin ClrScr end;
        6: begin Exit end;
      end;
    until g >= 6;
  end;
end.