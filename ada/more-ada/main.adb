with Ada.Text_IO, Hello;
use  Ada.Text_IO, Hello;

procedure Main is
  result : boolean;
begin
  put_line("function say_hello:");
  result := say_hello;
  put_line("returns " & boolean'image(result));
  put_line("procedure say_hello:");
  say_hello("potato");
  put_line("Procedures don't return values");

  null;
end Main;
