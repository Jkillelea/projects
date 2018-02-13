with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Exceptions;      use Ada.Exceptions;
-- with Ada.Real_Time;      use Ada.Real_Time;

procedure Custom_Types is
  type Byte is mod 256; -- unsigned integer, range [0..256)
  -- for Byte'Size use 8; Gnat is smart enough to pack this into 
  -- 1 byte without us being specific

  package Byte_IO is new Ada.Text_IO.Modular_IO (Byte); -- print out Byte type
  use Byte_IO;

  Simple_Exception : exception; -- just a basic exception object

begin
  -- Ada.Text_IO.Put_Line ("Hi");
  for I in 0 .. Byte'Last loop
    Byte_IO.Put (I);
    New_Line;
    -- delay 1.0; -- can specify seconds as a float, converted to Standar.Duration type
  end loop;

  Put ("Type Byte has size" & Byte'Size'Img &  " bits.");
  New_Line;
  Flush;

  raise Simple_Exception with "This is a basic exception";
exception
  when Error : others =>
    Put ("Exception: ");
    Put_Line (Exception_Name        (Error));
    Put_Line (Exception_Message     (Error));
    Put_Line (Exception_Information (Error));
end Custom_Types;
