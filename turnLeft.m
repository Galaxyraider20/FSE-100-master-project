function turnRight(brick)
        brick.MoveMotor('A', -300);
        brick.MoveMotor('B', 300);
        pause(0.33);
        brick.StopMotor('AB', 'Coast');
        pause(2);
end