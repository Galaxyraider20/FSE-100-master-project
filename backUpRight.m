function backUp(brick)
        brick.MoveMotor('AB', -40);
        pause(0.4);
        brick.StopMotor('AB', 'Coast');
        brick.MoveMotor('A', -80);
        pause(0.4);
        brick.StopAllMotors();
end