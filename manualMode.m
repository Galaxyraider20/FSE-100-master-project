f = figure('Name','EV3 Manual Control','NumberTitle','off');
f.WindowKeyPressFcn = @(src, event) keyHandler(src, event, brick);

% Key handler function
function keyHandler(~, event, brick)
    % define ports
    motorLeft  = 'A';
    motorRight = 'B';
    
    % define speeds
    forwardSpeed = 20;
    turnSpeed   = 30;
    stopSpeed  = 0;
    
    switch event.Key
        case 'uparrow'
            % move forward
            brick.MoveMotor([motorLeft motorRight], forwardSpeed);
        case 'downarrow'
            % move backward
            brick.MoveMotor([motorLeft motorRight], -forwardSpeed);
        case 'leftarrow'
            % turn left: left motor slower/back, right motor forward
            brick.MoveMotor(motorLeft, -turnSpeed);
            brick.MoveMotor(motorRight, turnSpeed);
        case 'rightarrow'
            % turn right: left forward, right slower/back
            brick.MoveMotor(motorLeft, turnSpeed);
            brick.MoveMotor(motorRight, -turnSpeed);
        case 'space'
            % stop both
            brick.StopMotor([motorLeft motorRight], 'Brake');
        case 'z'
            armOpen(brick)
        case 'x'
            armClose(brick)
        otherwise
            fprintf('Unhandled key: %s\n', event.Key);
    end
end
