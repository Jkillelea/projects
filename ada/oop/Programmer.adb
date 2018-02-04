-- Override Person.Put
package body Programmer is
   procedure Put (O : Object) is
   begin
      Person.Put (Person.Object (O)); -- view conversion to the ancestor type
      Put (O.Skilled_In); -- presumably declared in the same package as Language_List
   end Put;
end Programmer;
