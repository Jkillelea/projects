with Ada.Text_IO, Ada.Command_Line, Ada.Strings.Unbounded, Ada.Text_IO.Unbounded_IO;
use  Ada.Text_IO; --Make available w/o specifying package

procedure command_line is
    package SU  renames Ada.Strings.Unbounded;
    package UIO renames Ada.Text_IO.Unbounded_IO;
    package CL  renames Ada.Command_Line;

    Cur_Argument : SU.Unbounded_String; -- arbitrary and variable length
    i            : Integer := 1;
begin
    Put_Line(Integer'Image(CL.Argument_Count)); --procedure is from

    --For all the given arguments
    while i <= CL.Argument_Count loop --Argument_Count is from Ada.Command_Line
        Cur_Argument := SU.To_Unbounded_String(CL.Argument(i)); --so is Argument()
        UIO.Put_Line(Cur_Argument);
        i := i+1;
    end loop;

end command_line;
