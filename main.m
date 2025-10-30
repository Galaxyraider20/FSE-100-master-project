
%fprintf('Color Sensor RGB: R=%d, G=%d, B=%d\n', color(1), color(2), color(3));
front = brick.UltrasonicDist(2);
side = brick.UltrasonicDist(3);

fprintf('first Ultrasonic Sensor 2 Distance: %.2f cm\n', front);
fprintf('first Ultrasonic Sensor 3 Distance: %.2f cm\n', side);


pause(3);

front = brick.UltrasonicDist(2); % front distance to anything straight ahead
side = brick.UltrasonicDist(3); 




fprintf('Ultrasonic Sensor 2 Distance: %.2f cm\n', front);
fprintf('Ultrasonic Sensor 3 Distance: %.2f cm\n', side);

%brick.MoveMotor('A', 62);
%brick.MoveMotor('B', 50);
%pause(5);% before first turn
%brick.StopMotor('AB', 'Brake');
while(true)
    if (side<=20)
        if(front>=23)
            disp('Moving Forward');
            Forward(brick);
            [front, side] = checkDist(brick);
        else
            disp('Turning Right');
            turnRight(brick);
            [front, side] = checkDist(brick);
        end
    else
        disp('Turning left and Forward');
        turnLeft(brick);
        Forward(brick);
        Forward(brick);


        [front, side] = checkDist(brick);
    end
end
%fprintf('Color Sensor RGB: R=%d, G=%d, B=%d\n', color(1), color(2), color(3));
%Color Sensor RGB: R=160, G=73, B=33 --> yellow -> manual mode
%Color Sensor RGB: R=37, G=46, B=52 --> white line stop for 5 seconds
%Color Sensor RGB: , G=44, B=97 --> blue -> open claw
%Color Sensor RGB: R=17, G=63, B=46 --> green -> start point

% Your robot stops for one second when it sees white line.
% Your robot stops and beeps two times when it sees blue.
% Your robot stops and beeps three times when it sees green.


