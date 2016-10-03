with Ada.Text_IO; use Ada.Text_IO;
procedure hello is

  procedure subproc (S : String) is
  begin -- subproc
    put(S);
  end subproc;

begin
  subproc("test");
end hello;
