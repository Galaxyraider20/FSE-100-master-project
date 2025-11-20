function [front, side, side1] = checkDist(brick)
    front = brick.UltrasonicDist(3);
    side  = brick.UltrasonicDist(2);
    side1 = brick.UltrasonicDist(4);
    fprintf('Front Distance: %.2f cm\n', front);
    fprintf('Left Distance: %.2f cm\n', side); %left
    fprintf('Right Distance: %.2f cm\n', side1); %right
end