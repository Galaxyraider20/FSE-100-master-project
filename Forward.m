function Forward(brick)
    brick.MoveMotor('AB', 50);
    brick.MoveMotor('B', 56.5);
    pause(0.75);% before first turn
    brick.StopMotor('AB', 'Brake');
end