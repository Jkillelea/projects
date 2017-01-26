with Ada.Finalization;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

procedure Test is
  type Object_Type is new Ada.Finalization.Controlled with
    record
      str : Unbounded_String;
    end record;

  procedure Initialize(O : in out Object_Type);
  procedure Finalize(O : in out Object_Type);

  type Object_ref is access Object_Type;
  obj : Object_ref;

  NumObjs : Natural := 0;

  procedure Initialize(O : in out Object_Type) is
  begin
    O.str := To_Unbounded_String("potato!");
    NumObjs := NumObjs + 1;
  end Initialize;

  procedure Finalize(O : in out Object_Type) is -- doesn't free
  begin
    NumObjs := NumObjs - 1;
    Put_Line("Finalized!");
  end Finalize;

begin

  for i in 0..100 loop
    obj := new Object_Type;
    Put_Line(To_String(obj.all.str));
  end loop;

  Put_Line("Done!");

end Test;
