function turnRight(brick)
    brick.MoveMotor('A', 40)
    pause(1.4);
    brick.StopMotor('A', 'Coast')
end