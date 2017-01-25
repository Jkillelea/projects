-- from http://www.cs.uni.edu/~mccormic/AdaEssentials/controlled.htm
with Ada.Text_IO; use Ada.Text_IO;
package body Bombers is
  Next_Number     : Natural := 0;        -- increment in Initialize
  Number_In_Play  : Natural := 0;        -- increment in Initialize,
                                           --  decrement in Finalize
  --------------------------------------------
  procedure Reset_State(B   : in out Bomber;
                        Lat : in Lat_Type;
                        Lon : in Lon_Type;
                        Hdg : in Hdg_Type;
                        Alt : in Alt_Type) is
  begin
    B.Latitude  := Lat;
    B.Longitude := Lon;
    B.Heading   := Hdg;
    B.Altitude  := Alt;
  end Reset_State;
  ------------------------------------------
  procedure Deploy_Weapon(B  : in Bomber) is
  begin
    Put_line("Bomber " & Integer'Image(B.Number) &
             " releases bomb at" &
             " Lat = " & Integer'Image(Integer(B.Latitude)) &
             ", Lon = " & Integer'Image(Integer(B.Longitude)) &
             ", Hdg = " & Integer'Image(Integer(B.Heading)) &
             ", Alt = " & Integer'Image(Integer(B.Altitude)));
  end Deploy_Weapon;
  --------------------------------------------------
  procedure Initialize(B : in out Bomber) is
  begin
    Next_Number    := Next_Number + 1;
    Number_In_Play := Number_In_Play + 1;
    B.Number       := Next_Number;
    Put_Line("Bomber " & Integer'Image(B.Number) &
             " initialized");
  end Initialize;
  --------------------------------------------------
  procedure Finalize(B : in out Bomber) is
  begin
    Number_In_Play := Number_In_Play - 1;
    Put_Line("Bomber " & Integer'Image(B.Number) &
             " finalized" & ", Number_In_Play = " &
             Integer'Image(Number_In_Play));
  end Finalize;
end Bombers;
