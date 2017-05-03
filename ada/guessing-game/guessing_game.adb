with Ada.Text_IO;                  -- Put_Line
with Ada.Numerics.Discrete_Random; -- Random numbers

procedure Guessing_Game is
  use Ada.Text_IO;

  subtype Small_Number is Integer range 1 .. 1_000; -- our guess will be in this range

  package Random_Secret is new Ada.Numerics.Discrete_Random (Small_Number); -- new pkg from generic
  Seed          : Random_Secret.Generator;
  Secret_Number : Small_Number;

begin
  Random_Secret.Reset (Seed); -- create a seed
  Secret_Number := Random_Secret.Random (Seed); -- use it to generate a radom Small_Number

  Put_Line ("Guess the number...");

  Put_Line ("The number is in the range" & Small_Number'First'Img 
                                 & " to" & Small_Number'Last'Img);

  Game : loop -- this loop has a name
    Put_Line ("Input your guess.");

    begin
      declare
        Input : constant String       := Get_Line; -- get a guess
        Guess : constant Small_Number := Small_Number'Value (Input);
      begin
        Put_Line ("You guessed: " & Small_Number'Image (Guess));

        if Guess < Secret_Number then -- compare guesses
          Put_Line ("Too low.");
        elsif Guess > Secret_Number then
          Put_Line ("Too high");
        else
          Put_Line ("Correct!");
          exit Game; -- break, in other languages. We also specify which loop to exit
        end if;

      end;
    exception
      when CONSTRAINT_ERROR =>
        Put_Line ("Constraint Error: Was your guess a number between 0 and " & Small_Number'Image (Small_Number'Last) & "?");
        null; -- we'll ask again
    end;

  end loop Game;

  Put_Line ("The secret number was: " & Small_Number'Image(Secret_Number));
end Guessing_Game;
