function onCreate()
close(true);
end

function onCreate()
    close(true)
         makeLuaSprite('bg', 'pixelUI/bg', 0, 610);
     setLuaSpriteScrollFactor('bg', 0.9, 0.9);
     scaleObject('bg', 7.5, 7.5);
     setProperty('bg.antialiasing', false);
      setProperty('bg.visible', true);
        setObjectCamera('bg','hud');

     makeLuaSprite('goal', 'daback/goal', -0, 300);
     setLuaSpriteScrollFactor('goal', 0.9, 0.9);
     scaleObject('goal', 5.4, 5.4);
     setProperty('goal.antialiasing', false);
      setProperty('goal.visible', true)

    makeAnimatedLuaSprite('loop', 'daback/loop',110, 310);
     setScrollFactor('loop', 0.9, 0.9);
      scaleObject('loop', 5, 5);
       addAnimationByPrefix('loop','animation','loop' ,15,true)
         objectPlayAnimation('loop','animation' ,false)
          setProperty('loop.antialiasing', false);
           setProperty('loop.visible', false)

     makeAnimatedLuaSprite('loopalt', 'daback/loopalt',110, 310);
     setScrollFactor('loopalt', 0.9, 0.9);

      scaleObject('loopalt', 5, 5);
       addAnimationByPrefix('loopalt','animation','loopalt' ,15,true)
         objectPlayAnimation('loopalt','animation' ,false)
          setProperty('loopalt.antialiasing', false);
           setProperty('loopalt.visible', false)

            makeLuaSprite('luigi', 'daback/luigi', -0, 65);
     setLuaSpriteScrollFactor('luigi', 0.9, 0.9);
     scaleObject('luigi', 8.01, 8.01);
      setProperty('luigi.antialiasing', false);
       setProperty('luigi.visible', false)
        setObjectCamera('luigi','camOther')

     makeLuaSprite('hiddenwall', 'daback/hiddenwall', -500, 200);
     setLuaSpriteScrollFactor('hiddenwall', 0.9, 0.9);
     scaleObject('hiddenwall', 5.4, 5.4);
     setProperty('hiddenwall.antialiasing', false);
     setProperty('hiddenwall.visible', false)

     makeAnimatedLuaSprite('popup', 'daback/popup', 0, 65);
     setScrollFactor('popup', 0.9, 0.9);
      scaleObject('popup', 8.02, 8.02);
       addAnimationByPrefix('popup','animation', 'popup', 3, true);
         objectPlayAnimation('popup','animation' ,false)
          setProperty('popup.antialiasing', false);
           setProperty('popup.visible', false)

          makeLuaSprite('finalframe', 'daback/finalframe', -0, 300);
     setLuaSpriteScrollFactor('finalframe', 0.9, 0.9);
     scaleObject('finalframe', 5.4, 5.4);
     setProperty('finalframe.antialiasing', false);
      setProperty('finalframe.visible', false);

     
    addLuaSprite('goal', false);
     addLuaSprite('popup', false);
      addLuaSprite('hiddenwall', false);
       addLuaSprite('loopalt', false);
        addLuaSprite('luigi', true);
         addLuaSprite('finalframe', false);
          addLuaSprite('bg', false)
end