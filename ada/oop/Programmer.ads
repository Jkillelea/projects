-- inherit from the base class, Person
with Person;
package Programmer is
  type Object is new Person.Object with private;

  -- we don't have to redefine Person.Put on our new type,
  -- but we'll need to if we want to implement new functionality
  overriding -- optional keyword
  procedure Put (O : Object);

private
  type Object is new Person.Object with
    record
      Skilled_In : Language_List;
    end record;
end Person;

-- A main program might look like this:
--
-- with Programmer
-- procedure Main is
--   Me : Programmer.Object;
-- begin
--   Programmer.Put (Me);
-- end Main;
