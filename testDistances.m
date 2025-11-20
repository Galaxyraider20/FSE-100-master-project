function testDistances(brick)

    disp('Starting distance test... Press CTRL+C to stop.');

    while true
        % Call your distance function
        [front, side, side1] = checkDist(brick);

        % Display again just to confirm assignment order
        fprintf('[TEST] Front=%.2f  Left=%.2f  Right=%.2f\n', front, side, side1);

        pause(1); % adjust speed of testing
    end

end
