function checkColor(brick)
    % Function to monitor the EV3 color sensor and react accordingly.
    
    % Start moving forward
    color = brick.ColorCode(1);
    fprintf('Color  %.2f\n', color);

    if color == 5   % Red
        brick.StopAllMotors();
        pause(1);
        Forward(brick); % resume forward movement
    elseif color == 2 || color == 3   % Blue OR Green
        brick.StopAllMotors();
        manualMode(brick); % switch to manual mode
        Forward(brick);
    end
end
