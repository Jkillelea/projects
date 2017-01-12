with Ada.Text_IO;

package body Persons is

  -----------------
  -- Constructor --
  -----------------
  function Create(Name : Unbounded_String; Age : Integer) return Person is
    tmp : Person;
  begin
    tmp.Name := Name;
    tmp.Age := Age;
    return tmp;
  end Create;

  procedure Put_Name(P : Person) is
  begin
    Ada.Text_IO.Put_Line(To_String(P.Name));
  end Put_Name;

  procedure Put_Age(P : Person) is
  begin
    Ada.Text_IO.Put_Line(Integer'Image(P.Age));
  end Put_Age;

  function Age(P : Person) return Integer is
  begin
    return P.Age;
  end Age;

  function Name(P : Person) return Person_Name is
  begin
    return P.Name;
  end Name;
end Persons;
