function backUp(brick)
        brick.MoveMotor('AB', -40);
        pause(0.4);
        brick.StopMotor('AB', 'Coast');
        brick.MoveMotor('B', -80);
        pause(0.1);
        brick.StopAllMotors();
end