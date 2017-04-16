with Ada.Numerics.Discrete_Random;
with Ada.Text_IO;

procedure Print_Randoms is
  subtype Random_Type is Integer range 0 .. 10_000;

  package Integer_IO is new Ada.Text_IO.Integer_IO (Random_Type);
  package Random     is new Ada.Numerics.Discrete_Random (Random_Type);
  Seed : Random.Generator;
  Random_Num : Random_Type;

begin -- Print_Randoms
  Random.Reset (Seed);

  Rand_Loop : loop
    Random_Num := Random.Random (Seed);
    Integer_IO.Put (Random_Num);
    Ada.Text_IO.Put_Line ("");
  end loop Rand_Loop;

end Print_Randoms;
