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

   makeLuaText('credits4', 'Charter: Charaster + Cooldudecrafter', 0, getProperty('timeBar.x') + 10 , -100);
   addLuaText('credits4')
   setTextSize('credits4', 20);

   makeLuaSprite('moment', 'Sus/monotone/cant', 180, 0)
   setObjectCamera('moment', 'other')
   scaleObject('moment', 1.2, 1.2)
   addLuaSprite('moment', false)

   setProperty('timeBar.visible', false)
   setProperty('timeBarBG.visible', false)
end
function onUpdate()
    if curStep == 32 then
        doTweenAlpha('wah', 'moment', 0, 1, "linear")
    end
    if curStep == 260 then
        doTweenY('credit1', 'credits1', 100, 1, "quartOut")
    end
    if curStep == 261 then
        doTweenY('credit2', 'credits2', 120, 1, "quartOut")
    end
    if curStep == 262 then
        doTweenY('credit3', 'credits3', 140, 1, "quartOut")
    end
    if curStep == 263 then
        doTweenY('credit4', 'credits4', 160, 1, "quartOut")
    end

    if curStep == 292 then
        doTweenY('credit1', 'credits1', -100, 1, "quartIn")
    end
    if curStep == 293 then
        doTweenY('credit2', 'credits2', -100, 1, "quartIn")
    end
    if curStep == 294 then
        doTweenY('credit3', 'credits3', -100, 1, "quartIn")
    end
    if curStep == 295 then
        doTweenY('credit4', 'credits4', -100, 1, "quartIn")
    end
end