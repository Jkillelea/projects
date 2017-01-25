-------------------------------------------------------------------
------  Bombers  --------------------------------------------------
-------------------------------------------------------------------
--  This package exports a controlled type, Bomber, that has two
--  visible operations and two private operations. Initialize and
--  Finalize (the private operations) are used to keep track of how
--  many bombers have been created so far and how many are still
--  "in play". Initialize also assigns a number to each bomber.
-------------------------------------------------------------------
-- from http://www.cs.uni.edu/~mccormic/AdaEssentials/controlled.htm
with Ada.Finalization;
package Bombers is
  type Lat_Type is range -90..90;
  type Lon_Type is range -180..180;
  type Hdg_Type is mod 360;
  type Alt_Type is range 0..100000;
  type Bomber is new Ada.Finalization.Controlled with private;

  procedure Reset_State(B   : in out Bomber; -- primitive operation
                        Lat : in Lat_Type;
                        Lon : in Lon_Type;
                        Hdg : in Hdg_Type;
                        Alt : in Alt_Type);
  procedure Deploy_Weapon(B  : in Bomber);   -- primitive operation
private
  type Bomber is new Ada.Finalization.Controlled with
    record
      Number    : Natural  := 0;
      Latitude  : Lat_Type := 0;
      Longitude : Lon_Type := 0;
      Heading   : Hdg_Type := 0;
      Altitude  : Alt_Type := 30000;
    end record;
    procedure Initialize(B : in out Bomber);  -- override operation
    procedure Finalize  (B : in out Bomber);  -- override operation
end Bombers;
