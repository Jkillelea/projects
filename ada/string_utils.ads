package String_Utils is
    pragma Assertion_Policy (Check);

    -- Replace all elements of Input from Start_Idx..Input'Length with ASCII.NUL
    procedure Zero_String (Input: out String; Start_Idx: Natural)
        with pre => (Start_Idx <= Input'Length);

    -- Replace all elements of Input with ASCII.NUL
    procedure Zero_String (Input: out String);

end String_Utils;
