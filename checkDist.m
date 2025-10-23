function [front, side] = checkDist(brick)
    front = brick.UltrasonicDist(3);
    side  = brick.UltrasonicDist(2);
    fprintf('Ultrasonic Sensor 2 Distance: %.2f cm\n', front);
    fprintf('Ultrasonic Sensor 3 Distance: %.2f cm\n', side);
end
