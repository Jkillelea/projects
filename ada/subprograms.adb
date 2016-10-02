--Procedures are basically void functions. They can modify variables passed by reference sometimes.
with Ada.text_io, Ada.integer_text_io;
use  Ada.text_io, Ada.integer_text_io; -- note that these names are NOT case-sensitive!

procedure subprograms is
  package io renames Ada.Text_IO;

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
  put(z);          -- default column width is 11 for some reason
  new_line;
  put(minimum(x, z));
end subprograms;
