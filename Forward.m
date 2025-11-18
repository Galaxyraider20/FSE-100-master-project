function Forward(brick)
    brick.MoveMotor('AB', 60);

    pause(1);% before first turn
    brick.StopMotor('AB', 'Brake');
end