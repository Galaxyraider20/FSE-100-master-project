function armClose(brick)
    %closing arm
    brick.MoveMotor('C', 11.5);
    pause(5);
    brick.StopMotor('C', 'Brake');

    %opening arm
     brick.MoveMotor('C', 11.5);
     pause(0.67);
     brick.StopMotor('C', 'Brake');
    
end