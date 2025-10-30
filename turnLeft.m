function turnLeft(brick)
    brick.MoveMotor('B', 43);
    pause(1.3);
    brick.StopMotor('B', 'Coast')
    pause(0.5);

end