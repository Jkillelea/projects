with Ada.Text_IO; use Ada.Text_IO;


package body String_Utils is

    -- Replace all elements of Input from Start_Idx..Input'Length with ASCII.NUL
    procedure Zero_String (Input: out String; Start_Idx: Natural) is
    begin
        for I in Start_Idx..Input'Length loop
            Input (I) := ASCII.NUL;
        end loop;
    end Zero_String;

    -- Replace all elements of Input with ASCII.NUL
    procedure Zero_String (Input: out String) is
    begin
        Zero_String (Input, Input'First);
    end Zero_String;

end String_Utils;
