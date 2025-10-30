function turnLeft(brick)
    brick.MoveMotor('B', 45);
    brick.MoveMotor('A', -45);
    pause(1);
    brick.StopMotor('AB', 'Coast');
    pause(0.5);

end