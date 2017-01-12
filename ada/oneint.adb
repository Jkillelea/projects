-- Chapter 3 - Program 1
with Ada.Text_IO,  Ada.Integer_Text_IO, Ada.Command_Line;
--use  Ada.Text_IO,   Ada.Integer_Text_IO;

procedure OneInt is
  package cl renames Ada.Command_Line;
  package io renames Ada.Text_IO;
  package integer_text renames Ada.Integer_Text_IO;
  use io, integer_text;

  index : Integer;           -- A simple Integer type

begin
  index := 23;
  put_line("The value of index is" & Integer'Image(index));
  index := index + 12;
  put_line("The value of index is" & Integer'Image(index));

end OneInt;

-- Result of execution

-- The value of Index is      23
-- The value of Index is      35
