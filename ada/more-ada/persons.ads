with Ada.Unchecked_Deallocation;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package Persons is
  subtype Person_Name is Unbounded_String;
  type Person is tagged record
    Name : Person_Name;
    Age  : Integer;
  end record;

  type Person_ref is access Person;

  function  Create(Name : Person_Name; Age : Integer) return Person;
  procedure Free is new Ada.Unchecked_Deallocation(Object => Person,
                                                    Name  => Person_ref);
  procedure Put_Name(This : Person'Class);
  procedure Put_Age(This : Person'Class);
end Persons;
