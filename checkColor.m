brick.SetColorMode(1, 2);
color = brick.ColorCode(1);
brick.MoveMotor('AB', 50);
brk = true;
while (brk)
    color = brick.ColorCode(1);
    disp(color);
    if(color == 5)
        brick.StopAllMotors();
        pause(1);
        brick.MoveMotor('AB', 50);
        brk = false;
    elseif(color == 2)
        pause(2);
        brick.StopAllMotors();
        brick.beep();
        pause(0.5);
        brick.beep();
        brk = false;
    elseif(color == 3)
        pause(2);
        brick.StopAllMotors();
        brick.beep();
        pause(0.5);
        brick.beep();
        pause(0.5);
        brick.beep();
        brk = false;
    end
end

