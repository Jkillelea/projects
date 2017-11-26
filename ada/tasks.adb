with Ada.Text_IO;   use Ada.Text_IO;
with Ada.Real_Time; use Ada.Real_Time;

procedure Tasks is

  task My_Task  -- pre declare
    with Priority => 0; -- higher priority (max 256)

  task body My_Task is
    Wait : constant Time_Span := Milliseconds (100);
    Next_Time : Time := clock; -- now
  begin
    loop
      Put_Line ("Task");
      Next_Time := Next_Time + Wait;
      delay until Next_Time;
    end loop;
  end My_Task;

  Wait : constant Time_Span := Milliseconds (200);
  Next_Time : Time := clock; -- now
begin
  loop
    Put_Line ("Main Loop");
    Next_Time := Next_Time + Wait;
    delay until Next_Time;
  end loop;
end Tasks;
