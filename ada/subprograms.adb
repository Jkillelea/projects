--Procedures are basically void functions. They can modify variables passed by reference sometimes.
with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO; -- note that these names are NOT case-sensitive!

procedure subprograms is
--  package IO    renames Ada.Text_IO;
--  package IT_IO renames Ada.Integer_Text_IO;

  procedure A_Test (A, B: in Integer; C: out Integer) is -- subprocedure
  begin
    C := A + B;
  end A_Test;

  --Functions need to have returns. Ada is weird.
  function Minimum (A, B: Integer) return Integer is
  begin
    if A <= B then
      return A;
    else
      return B;
    end if;
  end Minimum;

  -- Declare variables here
  y, x : integer := 4;
  z    : integer;

begin
  A_Test(x, y, z); -- x, y are input-only. z is output-only, and modified similar to a pass-by-reference function, a-la C
  put(z, 1);          -- default column width is 11 for some reason
  new_line;
  z := minimum(x, z);
  put(z, 1);
end subprograms;
