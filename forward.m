function Forward(brick)
    brick.MoveMotor('AB', 50);
    brick.MoveMotor('B',60);
    pause(0.75);% before first turn
    brick.StopMotor('AB', 'Brake');
end