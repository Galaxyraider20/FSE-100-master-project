function manualMode(brick)
    global exitManual;
    exitManual = false;   % reset flag
    
    f = figure('Name','Manual Mode','NumberTitle','off');
    f.WindowKeyPressFcn = @(src, event) keyHandler(src, event, brick);

    % Manual control loop
    while ~exitManual
        pause(0.05); % allow keypress events to be processed
    end

    close(f); % close manual control UI
end
