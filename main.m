brick.SetColorMode(1, 4);

color = brick.ColorRGB(1); %array of the color values

%fprintf('Color Sensor RGB: R=%d, G=%d, B=%d\n', color(1), color(2), color(3));

distance = brick.UltrasonicDist(2); % front distance to anything straight ahead
distance2 = brick.UltrasonicDist(3); % side distance to anysthing straight ahead

fprintf('Ultrasonic Sensor 2 Distance: %.2f cm\n', distance);
fprintf('Ultrasonic Sensor 3 Distance: %.2f cm\n', distance2);

%brick.MoveMotor('A', 62);
%brick.MoveMotor('B', 50);
%pause(5);% before first turn
%brick.StopMotor('AB', 'Brake');
while(color(3) < 90)
    distance = brick.UltrasonicDist(2);
    distance2 = brick.UltrasonicDist(3);
    if (distance >= 25.00)
        if(distance2 <= 25.00)
            brick.MoveMotor('A', 60);
            brick.MoveMotor('B', 50);
            pause(4);% before first turn
            brick.StopMotor('AB', 'Brake');
            distance = brick.UltrasonicDist(2);
            distance2 = brick.UltrasonicDist(3);
        end
        if (distance2 > 25)
            brick.MoveMotor('B', 50);
            pause(1.2);
            brick.StopMotor('B', 'Brake')
        end
    end 
    if(distance < 25)
        if(distance2 < 25)
            brick.MoveMotor('A', 50)
            pause(1.5);
            brick.StopMotor('A', 'Brake')
        end
    end
    distance = brick.UltrasonicDist(2);
    distance2 = brick.UltrasonicDist(3);
    color =  brick.ColorRGB(1);
end
fprintf('Color Sensor RGB: R=%d, G=%d, B=%d\n', color(1), color(2), color(3));
%Color Sensor RGB: R=160, G=73, B=33 --> yellow -> manual mode
%Color Sensor RGB: R=37, G=46, B=52 --> white line stop for 5 seconds
%Color Sensor RGB: , G=44, B=97 --> blue -> open claw
%Color Sensor RGB: R=17, G=63, B=46 --> green -> start point

% Your robot stops for one second when it sees white line.
% Your robot stops and beeps two times when it sees blue.
% Your robot stops and beeps three times when it sees green.



