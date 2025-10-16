brick.SetColorMode(1, 4);

color = brick.ColorRGB(1); 

fprintf('Color Sensor RGB: R=%d, G=%d, B=%d\n', color(1), color(2), color(3));

distance = brick.UltrasonicDist(2);
distance2 = brick.UltrasonicDist(3);

fprintf('Ultrasonic Sensor 2 Distance: %.2f cm\n', distance);
fprintf('Ultrasonic Sensor 3 Distance: %.2f cm\n', distance2);


%Color Sensor RGB: R=160, G=73, B=33 --> yellow -> manual mode
%Color Sensor RGB: R=37, G=46, B=52 --> white line stop for 5 seconds
%Color Sensor RGB: R=14, G=44, B=97 --> blue -> open claw
%Color Sensor RGB: R=17, G=63, B=46 --> green -> start point

% Your robot stops for one second when it sees white line.
% Your robot stops and beeps two times when it sees blue.
% Your robot stops and beeps three times when it sees green.



