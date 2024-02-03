function onCreate()
     makeAnimatedLuaSprite('bflegs', 'daback/bflegs', 90, 400);
     setScrollFactor('bflegs', 0.9, 0.9);
      scaleObject('bflegs', 6, 6);
      addAnimationByPrefix('bflegs','animation','runfire' ,30 , true)
       objectPlayAnimation('rankings', 'X', false)
          setProperty('bflegs.antialiasing', false);
           setProperty('bflegs.visible', false);
           
           addLuaSprite('bflegs', false);
    end

function onStepHit()
        if curStep == 768 then
         setProperty('bflegs.visible', true);
        end
        if curStep == 1536 then
         setProperty('bflegs.visible', false);
        end
        if curStep == 2048 then
           setProperty('bflegs.visible', true);
        end   
        if curStep == 2345 then
            setProperty('bflegs.visible', false);
    end
end