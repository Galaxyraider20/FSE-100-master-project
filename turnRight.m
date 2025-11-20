function turnRight(brick)
        brick.MoveMotor('A', 400);
        brick.MoveMotor('B', -400);
        pause(0.54);
        brick.StopMotor('AB', 'Coast');
        pause(2);
end