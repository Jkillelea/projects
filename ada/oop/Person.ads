-- a base class for people, where the actual person data is stored
-- in the Object type
package Person is
  type Object is tagged private; -- hide the data from outside view
                                 -- the tag identifies the object type at runtime
                                 -- and lets us inherit and extend it

  procedure Put (O : Object); -- a generic procedure

private -- private data
  type Object is tagged
    record
      Name : String (1 .. 10);
      Gender : Gender_Type;
    end record;
end Person;
