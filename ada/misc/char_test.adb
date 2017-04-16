with Ada.Text_IO;
use  Ada.Text_IO;
procedure Char_Test is
  c : Character := 'A';
begin
  Put_Line ("" & c);

  begin
    loop
      c := Character'Succ (c); -- next
      Put_Line ("" & c);
    end loop;
  exception
    when CONSTRAINT_ERROR =>
      exit;
  end;

end Char_Test;
