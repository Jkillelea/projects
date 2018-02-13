with Contractual_Procedures;

with Ada.Text_IO;   use Ada.Text_IO;
with Ada.Exceptions;

procedure Main is
  N : Integer := 0;
begin

  Contractual_Procedures.Make_Ten (N); -- fails since it returns 11

exception
  when Error : others =>
    declare
      use Ada.Exceptions;
    begin
      Put ("Exception: ");
      Put_Line (Exception_Name (Error));
      Put (Exception_Message (Error));
    end;
end Main;
