
function onStepHit()
     if curStep == 768 then
       setProperty('loopalt.visible', true)
         setProperty('goal.visible', false)
    end
    if curStep == 1532 then
         setProperty('luigi.visible', true)
          setObjectCamera('luigi','camOther')
    end
    if curStep == 1536 then
         setProperty('luigi.visible', false)
         setProperty('loopalt.visible', false)
    end
    if curStep == 1254 then
           setProperty('popup.visible', true);
           setObjectCamera('popup', 'hud');
           setProperty('popup.loop', false);
    end
        if curStep == 1279 then
           setProperty('popup.visible', false);
    end

    if curStep == 1536 then
         setProperty('hiddenwall.visible', true);
         setProperty('defaultCamZoom', 0.6)
    end
    if curStep == 2036 then
          setProperty('hiddenwall.visible', false);
    end
    if curStep == 2048 then
           setProperty('loopalt.visible', true)
           setProperty('defaultCamZoom', 1.01);
           setProperty('bflegs.visible', true);
    end
        if curStep == 2345 then
           setProperty('finalframe.visible', true);
           setProperty('loopalt.visible', false);
    end

    if curStep == 511 then
    triggerEvent('Change Character', 'dad', 'funny 2');
    setCharacterX('dad', 700);
    setCharacterY('dad', 460);
    end

      if curStep == 768 then
     triggerEvent('Change Character', 'bf', 'bf-chase');
     setCharacterX('bf', 193);
     setCharacterY('bf', 185);
      end
      if curStep == 768 then
     triggerEvent('Change Character', 'dad', 'funny 3');
     setCharacterX('dad', 700);
     setCharacterY('dad', 180);
     end
      if curStep == 1536 then
      triggerEvent('Change Character', 'bf', 'bf-wall');
      setCharacterX('bf', -170);
      setCharacterY('bf', 0);
      end
      if curStep == 1536 then
      triggerEvent('Change Character', 'dad', 'big funny');
      setCharacterX('dad', -150);
      setCharacterY('dad', -150);
      end
      if curStep == 2036 then
          triggerEvent('Change Character', 'dad', 'invisible');
         setCharacterX('dad', 0):
         setCharacterY('dad', 0);
      end
       if curStep == 2036 then
           triggerEvent('Change Character', 'bf', 'invisible');
            setCharacterX('bf', 0);
             setCharacterY('bf', 0);
      end
      if curStep == 2048 then
      triggerEvent('Change Character', 'bf', 'bf-chase');
      setCharacterX('bf', 193);
      setCharacterY('bf', 187);
      end
      if curStep == 2048 then
       triggerEvent('Change Character', 'dad', 'funny 3');
         setCharacterX('dad', 700);
          setCharacterY('dad', 175);
      end
          if curStep == 2345 then
          triggerEvent('Change Character', 'bf', 'bf-chase');
    setCharacterX('bf', -12344579);
    setCharacterY('bf', 0);
      end

     if curStep == 1 then
       triggerEvent('Camera Follow Pos', '420', '490'); -- This is for adjust the camera position 
     end
     if curStep == 768 then
       triggerEvent('Camera Follow Pos', '', ''); -- Reajusting lol
      end
       if curStep == 500 then
      triggerEvent('Play Animation', 'morb', 'dad');
      end
        if curStep == 754 then
    triggerEvent('Play Animation', 'laugh', 'dad')
    end
end