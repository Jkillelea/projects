with Ada.Text_IO;

-- Base class Person
package body Person is
  procedure Put (O : Object) is
  begin
    Ada.Text_IO.Put (O.Name);
    Ada.Text_IO.Put (" is a ");
    Ada.Text_IO.Put_Line (Gender_Type'Image (O.Gender));
  end Put;
end Person;
