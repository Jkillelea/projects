with Ada.Text_IO; use Ada.Text_IO;
with Ada.Command_Line;

procedure ReadLines is
  File_Name : String := Ada.Command_Line.Argument(1);
  File      : File_Type;
begin -- ReadLines
  Open (File, In_File, File_Name);

  while not End_Of_File (File) loop
    Put_Line (Get_Line (File));
  end loop;

  if Is_Open (File) then
    Close (File);
  end if;
end ReadLines;
