function onCreate()
  precacheImage('stuff/lavaV2');
  precacheImage('stuff/GF');
  makeAnimatedLuaSprite('GF', 'stuff/GF', -350, -500);
  makeLuaSprite('lava', 'stuff/lavaV2', -1400, 400);
  addCharacterToList('bf-pixel');
  addCharacterToList('luigi');
  makeLuaSprite('hide', 'stuff/hide', -2000, -700);
  makeLuaSprite('BG', 'stuff/IHY', -1300, -700);
  makeLuaSprite('BG2', 'stuff/IHY2', -1300, -700);
  addLuaSprite('hide', true);
  setObjectCamera('hide', 'other');
  scaleObject('hide', 100, 100);
  addLuaSprite('GF', true);
  addAnimationByPrefix('GF', 'idle', 'GF', 5, true);
  playAnim('GF', 'idle', 'true', 'false', 0);
  scaleObject('GF', 0.7, 0.8);
  addLuaSprite('BG', false);
  addLuaSprite('lava', true);
  scaleObject('lava', 8, 3);
  setObjectCamera('lava', 'game');

end

function onCreatePost()
  makeLuaText('TIME', 'LOL', 200, 300, 0);
  addLuaText('TIME');
  scaleObject('dad', 1.5, 1.5)
  runTimer('hideOff', 1.5, 1);
end

function onUpdate(elapsed)
setTextString('TIME', curStep);

if curStep == 400 then
  lavahere()
end

if curStep == 912 then
  lavaUp1()
end

if curStep == 976 then
  lavaUpDown()
  haveto = true;
end

if curStep == 1104 then
  haveto = false
  lavaRiseUp()
end

if curStep == 1236 then
  lavaRiseDown()
end

if curStep == 1360 then
  lavaDownAgain()
end

if curStep == 1236 then
  removeLuaSprite('BG', true);
  addLuaSprite('BG2', false);
end
end

function lavahere()
doTweenY('lavaUp', 'lava', 280, 0.7, 'linear')
end

function lavaUp1()
  doTweenY('lavaUp', 'lava', 100, 0.7, 'linear')
end

function lavaUpDown()
  if haveto == true then
  doTweenY('lavaUp', 'lava', -100, 0.5, 'linear');
  runTimer('changeLavaDown', 0.5, 1);
  end
  if haveto == false then
    return Function_Stop
  end
end

function lavaRiseUp()
  doTweenY('lavaUp', 'lava', -400, 5, 'linear');
end

function lavaRiseDown()
  doTweenY('lavaUp', 'lava', 100, 5, 'linear');
end

function lavaDownAgain()
  doTweenY('lavaUp', 'lava', 280, 5, 'linear');
end


function onTimerCompleted(tag, loops, loopsLeft)
  if tag == 'hideOff' then
    doTweenAlpha('hiding', 'hide', 0, 1, 'linear');
  end

  if tag == "changeLavaDown" then
    doTweenY('lavaDown', 'lava', 100, 0.5, 'linear');
    runTimer('changeLavaUp', 0.5, 1);
  end

  if tag == 'changeLavaUp' then
    lavaUpDown()
  end
end

