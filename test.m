brick.SetColorMode(1, 2);
color = brick.ColorCode(1);
while(true)
    color = brick.ColorCode(1);
    disp(color);
    pause(0.5);
end