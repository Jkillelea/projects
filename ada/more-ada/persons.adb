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

  procedure Put_Name(This : Person'Class) is
  begin
    Ada.Text_IO.Put_Line(To_String(This.Name));
  end Put_Name;

  procedure Put_Age(This : Person'Class) is
  begin
    Ada.Text_IO.Put_Line(Integer'Image(This.Age));
  end Put_Age;

end Persons;
