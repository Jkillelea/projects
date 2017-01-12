with Ada.Text_IO;
with Ada.Strings.Unbounded;
with Persons;
use Ada.Text_IO;
use Ada.Strings.Unbounded;
use Persons;

procedure Main is
  Age : Integer        := 20;
  Name: Person_Name    := To_Unbounded_String("Jake");
  Me  : Persons.Person := Persons.Create(Name, 20);
begin
  -- Me.Put_Name;
  -- Ada.Text_IO.Put_Line(To_String(Me.Name));
  Put_Line(Integer'Image(Me.Age));
  Me.Age_Is(21);
  -- null; -- Need to have some operation happen in every procedure, even if operation is just a No-op.
end Main;
