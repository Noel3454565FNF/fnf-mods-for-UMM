function onCreate()
    close(true)
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

            makeLuaSprite('luigi', 'daback/luigi', -0, 45);
     setLuaSpriteScrollFactor('luigi', 0.9, 0.9);
     scaleObject('luigi', 8, 8.1);
      setProperty('luigi.antialiasing', false);
       setProperty('luigi.visible', false)
        setObjectCamera('luigi','camOther')

     makeLuaSprite('hiddenwall', 'daback/hiddenwall', -500, 200);
     setLuaSpriteScrollFactor('hiddenwall', 0.9, 0.9);
     scaleObject('hiddenwall', 5.4, 5.4);
     setProperty('hiddenwall.antialiasing', false);
     setProperty('hiddenwall.visible', false)
     
    addLuaSprite('goal', false);
     addLuaSprite('hiddenwall', false);
      addLuaSprite('loop', false);
       addLuaSprite('luigi', true);
end