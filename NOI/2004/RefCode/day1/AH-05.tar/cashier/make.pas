Const
    OutFile    = 'cashier.in';
    N          = 30000;

Var
    i , p      : longint;

Begin
    randomize;
    assign(OUTPUT , OutFile); ReWrite(OUTPUT);
      writeln(N , ' ' , 10);
      for i := 1 to N do
        begin
            p := random(200);
            if p <= 10
              then if p < 6
                     then writeln('A ' , random(100))
                     else writeln('S ' , random(100))
              else if p <= 100
                     then writeln('I ' , random(1000))
                     else writeln('F ' , random(100) + 1);
        end;
    Close(OUTPUT);
End.
