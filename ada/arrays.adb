with Ada.Text_IO; use Ada.Text_IO;

procedure Arrays is
  type CharArray is array(Natural range <>) of Character;

  test : CharArray := "test";
  t    : Character := test(0);
  str  : String    := "" & t;

  procedure PutI(i : Integer) is
  begin -- PutI
    Ada.Text_IO.Put_Line(Integer'Image(i));
  end PutI;

  function to_s(c : Character) return String  is
    tmp : String := "" & c;
  begin -- to_s
    return tmp;
  end to_s;

begin -- Arrays
  for i in test'range loop
    PutI(i);
    Put_Line(to_s(test(i)));
  end loop;
end Arrays;
