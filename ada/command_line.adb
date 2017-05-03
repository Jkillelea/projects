--Simple program to echo pack whatever args its passed at the command line
--Worth noting is the tremendous file size of un-optimized Ada code. This example is 32KB when just calling it with `gnatmake command_line.adb`.
--The source file is only 1KB
with Ada.Text_IO, Ada.Command_Line;
use  Ada.Text_IO; --Make available w/o specifying package

procedure Command_Line is
    package CL  renames Ada.Command_Line;

--    i : Integer := 1;
begin
  Put_Line (CL.Argument_Count'Img); -- Cast integer to string like this

  for I in 1 .. CL.Argument_Count loop
    declare
      Arg : String := String (CL.Argument (I));
    begin
      Put_Line (Arg);
    end;
  end loop;

end Command_Line;
