function turnLeft(brick)
    brick.MoveMotor('B', 40);
    pause(1.4);
    brick.StopMotor('B', 'Coast')

end