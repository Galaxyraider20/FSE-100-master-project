function armOpen(brick)
    %opening arm
     brick.MoveMotor('C', -11.5);
     pause(0.5);
     brick.StopMotor('C', 'Brake');
    
end