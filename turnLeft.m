function turnLeft(brick)
%turn
        pause(0.3);
        brick.MoveMotor('A', -20);
        brick.MoveMotor('B', 20);
        pause(1);
        brick.StopMotor('AB', 'Coast');
        %move
        brick.MoveMotor('AB', 30);
        pause(0.3);
        brick.StopMotor('AB', 'Coast');
%turn
        brick.MoveMotor('A', -20);
        brick.MoveMotor('B', 20);
        pause(1.5);
        brick.StopMotor('AB', 'Coast');
end