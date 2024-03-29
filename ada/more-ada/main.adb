with Ada.Text_IO, Ada.Strings.Unbounded, Ada.Unchecked_Deallocation, Persons;
use Ada.Text_IO, Persons;

procedure Main is
  package US renames Ada.Strings.Unbounded;

  Age  : Integer     := 20;
  Name : Person_Name := US.To_Unbounded_String("Jake");
  Me   : Person_ref  := new Person'(Name, Age);

begin
  Put_Line("Age: " & Integer'Image(Me.Age));
  Put_Line("Name: " & US.To_String(Me.Name));

  Free(Me); -- deallocate
  -- null; -- Need to have some operation happen in every procedure, even if operation is just a No-op.
end Main;
