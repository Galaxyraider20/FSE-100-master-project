function turnRight(brick)
        brick.MoveMotor('A', -400);
        brick.MoveMotor('B', 400);
        pause(0.68);
        brick.StopMotor('AB', 'Brake');
        pause(2);
end