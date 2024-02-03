function onBeatHit()

        --setProperty('iconP2.y', 580);
    
        doTweenY('bip', 'iconP2', getProperty('healthBar.y') - 75, 0.3,'sineOut');
    
    
        --setProperty('iconP1.y', 580);
    
        doTweenY('bop', 'iconP1', getProperty('healthBar.y') - 75, 0.3,'sineOut');
    
        --script by CB
    end
function onCountdownTick(counter)
    if counter == 3 then
        doTweenAngle('spin15', 'iconP1', 360, 0.5, "circInOut")
        doTweenAngle('spin26', 'iconP2', -360, 0.5, "circInOut")
        characterPlayAnim('boyfriend', 'hey', false);
     end
 end