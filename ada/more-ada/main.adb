with Ada.Text_IO;
with Ada.Strings.Unbounded;
with Persons;
use Ada.Text_IO;
use Ada.Strings.Unbounded;
use Persons;

procedure Main is
  Age  : Integer             := 20;
  Name : Persons.Person_Name := To_Unbounded_String("Jake");
  Me   : Persons.Person      := Persons.Create(Name, 20);
begin
  -- Me.Put_Name;
  Put_Line("Age: " & Integer'Image(Me.Age));
  --Me.Put_Age;
  --Me.Age := 21;
  Put_Line("Name: " & To_String(Me.Name));
  --Me.Put_Name;
  -- null; -- Need to have some operation happen in every procedure, even if operation is just a No-op.
end Main;
