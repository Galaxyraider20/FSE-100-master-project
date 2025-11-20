brick.SetColorMode(1,2); % only once at start

while true
    % Read sensors
    front = brick.UltrasonicDist(2);
    side  = brick.UltrasonicDist(3);
    color = brick.ColorCode(1);

    % Check colors first
    switch color
        case 1  % black
            % do nothing
        case 2  % white
            brick.StopAllMotors();
            pause(2);
        case 3  % blue
            brick.StopAllMotors();
            beepTimes(brick,3);
        case 4  % green
            brick.StopAllMotors();
            beepTimes(brick,3);
        case 5  % yellow
            % manual mode (could call your WASD function)
            manualMode(brick);
    end

    % Navigation logic
    if side <= 20
        if front >= 23
            Forward(brick);
        else
            turnRight(brick);
        end
    else
        turnLeft(brick);
        Forward(brick);
    end
end

function beepTimes(brick,n)
    for i = 1:n
        brick.beep();
        pause(0.5);
    end
end
