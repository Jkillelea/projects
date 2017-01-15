with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package Persons is
  subtype Person_Name is Unbounded_String;
  type Person is tagged record
    Name : Person_Name;
    Age  : Integer;
  end record;

  function  Create  (Name : Person_Name; Age : Integer) return Person;
  procedure Put_Name(This : Person);
  procedure Put_Age (This : Person);
end Persons;
