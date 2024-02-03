function onCreate()
local bg = 'bg/SNOWDIN'
local debugMode = true;
precacheImage(bg);
makeLuaSprite('bg', bg, -1200, -100);
addLuaSprite('bg');
luaDebugMode = true;

makeAnimatedLuaSprite('S','snow/snowfront',-700,-100)
addAnimationByPrefix('S','dance','snow fall front instance 1',20,true)
setProperty('S.alpha', 0.00001);
scaleObject('S', 1.6, 1.6)
addLuaSprite('S',true)
end

function onStartCountdown()
setbg()
setProperty('healthBar.y', 200);
setProperty('iconP1.y', 120);
setProperty('iconP2.y', 120);
doTweenAlpha('BAR', 'healthBar', 0, 1, 'linear')
doTweenAlpha('iconP1', 'iconP1', 0.510, 1, 'linear')
doTweenAlpha('iconP2', 'iconP2', 0.510, 1, 'linear')
close(true);
end

function onStepHit()
  if curStep == 588 then
    setProperty('S.alpha', 1);
    playAnim('S','dance',true);
  end
  if curStep == 972 then
    setProperty('S.alpha', 0.00001);
    playAnim('S','dance',true);
  end
end

function setbg()
    setProperty('camFollowPos.y', 450);
    setProperty('camFollowPos.x', 200);
end