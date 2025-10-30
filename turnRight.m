function turnRight(brick)
    brick.GyroCalibrate(4);
    pause(1);
    angle = brick.GyroAngle(4);
    angle = 0;  % Get the current Gyro angle
    display(angle);
    while(abs(angle) <= 80)
        brick.MoveMotor('A', 60);
        brick.MoveMotor('B', -60);
        pause(0.1);
        brick.StopMotor('AB', 'Brake');
        pause(2);
        angle = brick.GyroAngle(4);
        display(angle);
    end
end