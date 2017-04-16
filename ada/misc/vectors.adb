with Ada.Containers.Vectors;
with Ada.Text_IO;
with Ada.Strings.Unbounded;

procedure Vectors is
  package Int_IO is new Ada.Text_IO.Integer_IO (Integer);
  package VecPkg is new Ada.Containers.Vectors (Natural, Integer);
  Vec : VecPkg.Vector;
begin -- Vectors
  Vec.Append (0);
  Vec.Append (1);
  Vec.Append (1);

  -- Ada.Text_IO.Put_Line (Vec.Length'Img);

  for val in Vec.First_Index .. Vec.Last_Index loop
    Int_IO.Put (val);
    Ada.Text_IO.Put_Line ("");
    -- Ada.Text_IO.Put_Line (val'Img);
    Ada.Text_IO.Put_Line (Vec.Element (val)'Img);
    Ada.Text_IO.Put_Line ("");
  end loop;

end Vectors;
