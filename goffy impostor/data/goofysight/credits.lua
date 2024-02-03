function onCreatePost()
  makeLuaText('credits1', 'Sprites: Cooldudecrafter', 0, getProperty('timeBar.x') + 10 , -100);
   addLuaText('credits1')
   setTextSize('credits1', 20);

   makeLuaText('credits2', 'Composer: GamerZone', 0, getProperty('timeBar.x') + 10 , -100);
   addLuaText('credits2')
   setTextSize('credits2', 20);

   makeLuaText('credits3', 'Art: Areseem', 0, getProperty('timeBar.x') + 10 , -100);
   addLuaText('credits3')
   setTextSize('credits3', 20);

   makeLuaText('credits4', 'Charter: Charaster', 0, getProperty('timeBar.x') + 10 , -100);
   addLuaText('credits4')
   setTextSize('credits4', 20);

   setProperty('timeBar.visible', false)
   setProperty('timeBarBG.visible', false)
end
function onUpdate()
    if curStep == 1 then
        doTweenY('credit1', 'credits1', 100, 1, "quartOut")
    end
    if curStep == 2 then
        doTweenY('credit2', 'credits2', 120, 1, "quartOut")
    end
    if curStep == 3 then
        doTweenY('credit3', 'credits3', 140, 1, "quartOut")
    end
    if curStep == 4 then
        doTweenY('credit4', 'credits4', 160, 1, "quartOut")
    end

    if curStep == 32 then
        doTweenY('credit1', 'credits1', -100, 1, "quartIn")
    end
    if curStep == 33 then
        doTweenY('credit2', 'credits2', -100, 1, "quartIn")
    end
    if curStep == 34 then
        doTweenY('credit3', 'credits3', -100, 1, "quartIn")
    end
    if curStep == 35 then
        doTweenY('credit4', 'credits4', -100, 1, "quartIn")
    end
end