with Ada.Text_IO;
procedure hello is
  package IO renames Ada.Text_IO; use IO;

  procedure subproc (S : String) is
  begin -- subproc
    put(S);
  end subproc;

begin
  subproc("test");
end hello;
