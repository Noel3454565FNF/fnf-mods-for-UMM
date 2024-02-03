function onCreate()
    precacheImage('stuff/shadowOVER');
    makeLuaSprite('overlay', 'stuff/shadowOVER', 0, 0);
    scaleObject('overlay', 1.05, 1);
    setObjectCamera('overlay', 'hud')
    addLuaSprite('overlay', true);
    setProperty('overlay.alpha', 0);
    StoL()
end

function StoL()
    runTimer('StoL', 6, 1);    
end

function LtoS()
    runTimer('LtoS', 3, 1);
end


function onTimerCompleted(tag, loops, loopsLeft)
    if tag == "StoL" then
        doTweenAlpha('L1', 'overlay', '1', 2, 'linear');
        state = true;
    end

    if tag == "LtoS" then
    doTweenAlpha('L2', 'overlay', '0', 2, 'linear');
    state = false;
    end
end


function onTweenCompleted(tag)
    if state == true then
        LtoS()
    end

    if state == false then
        StoL()
    end
end