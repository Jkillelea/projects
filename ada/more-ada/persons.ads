with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package Persons is
  subtype Person_Name is Unbounded_String;
  type Person is tagged record
    Name : Unbounded_String;
    Age : Integer;
  end record;

  function Create(Name : Unbounded_String; Age : Integer) return Person;
  function Age(P : in Person) return Integer;
  procedure Age_Is(P : in out Person; A : Integer);
  function Name(P : in Person) return Unbounded_String;
  procedure Put_Name(P : in Person);
end Persons;
