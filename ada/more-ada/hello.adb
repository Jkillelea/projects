with Ada.Text_IO; use Ada.Text_IO;

package body Hello is

  function say_hello return boolean is
  begin
    put_line("Hello");
    return true;
  end say_hello;

  procedure say_hello(s : string) is
  begin
    put_line("Hello " & s);
  end say_hello;

end Hello;
