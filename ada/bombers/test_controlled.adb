------------------------------------------------------------------
-------- Test_Controlled ------------------------------------------
-------------------------------------------------------------------
--  This procedure tests the controlled type, Bomber, using two
--  loops. One uses a local access type and the other uses a global
--  access type.
-------------------------------------------------------------------
-- from http://www.cs.uni.edu/~mccormic/AdaEssentials/controlled.htm
with Bombers, Ada.Text_IO, Ada.Integer_Text_IO;
use  Bombers, Ada.Text_IO, Ada.Integer_Text_IO;

procedure Test_Controlled is
  Ch    : Character; Data  : Integer;
  B_Lat : Lat_Type;  B_Lon : Lon_Type;
  B_Hdg : Hdg_Type;  B_Alt : Alt_Type;

  Num_Bombers : Natural range 1..20;

  type Bptr1_Type is access all Bomber;      -- global access type
  Bptr1 : array (1..20) of Bptr1_Type;
  ---------------------------------------
  procedure Bomb_With_Local_Objects is
    type Bptr2_Type is access all Bomber;    -- local access type
    Bptr2 : Bptr2_Type;
  begin
    Bptr2 := new Bomber;                     -- auto initialization
    Reset_State(Bptr2.all, B_Lat, B_Lon, B_Hdg, B_Alt);
    Deploy_Weapon(Bptr2.all);
  end Bomb_With_Local_Objects;               -- auto finalization
  ---------------------------------------
begin
  Put("Enter number of bombers > ");
  Get(Data); Num_Bombers := Natural(Data);
  Put("Enter bombing latitude (-90..90) > ");
  Get(Data); B_Lat := Lat_Type(Data);
  Put("Enter bombing longitude (-90..90) > ");
  Get(Data); B_Lon := Lon_Type(Data);
  Put("Enter bombing heading (0..359) > ");
  Get(Data); B_Hdg := Hdg_Type(Data);
  Put("Enter bombing altitude (5000..40000) > ");
  Get(Data); B_Alt := Alt_Type(Data);
  New_Line;

  for I in 1..Num_Bombers loop               -- first bombing loop
    Bptr1(I) := new Bomber;                  -- auto initialization
    Reset_State(Bptr1(I).all, B_Lat, B_Lon, B_Hdg, B_Alt);
    Deploy_Weapon(Bptr1(I).all);
  end loop;                                  -- no finalization

  Put("Enter bombing heading (0..359) > ");
  Get(Data); B_Hdg := Hdg_Type(Data);

  loop                                       -- second bombing loop
    Put("Enter b or q (Bomb or Quit) > ");
    Get(Ch);
    exit when Ch = 'q';
    if Ch = 'b' then
      Bomb_With_Local_Objects;
    else
      Put_Line("Invalid input");
    end if;
  end loop;
end Test_Controlled;      -- finalization for bombers in first loop
