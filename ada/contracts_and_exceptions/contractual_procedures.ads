pragma Assertion_Policy (Check);

package Contractual_Procedures is

  procedure Make_Ten(N : in out Integer)
  with pre  => N < 10,
       post => N = 10;

end Contractual_Procedures;
