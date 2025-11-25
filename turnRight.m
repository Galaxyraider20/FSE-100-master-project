function turnRight(brick)
%turn
        brick.MoveMotor('A', 20);
        brick.MoveMotor('B', -20);
        pause(1);
        brick.StopMotor('AB', 'Coast');
        %move
        brick.MoveMotor('AB', 30);
        pause(0.7);
        brick.StopMotor('AB', 'Coast');
%turn
        brick.MoveMotor('A', 20);
        brick.MoveMotor('B', -20);
        pause(1.5);
        brick.StopMotor('AB', 'Coast');
end