local display = 0;
function onCreate()
    time()
    makeLuaText('curl', display, 700, 0, 0);
    setObjectCamera('curl', 'hud');
    makeAnimatedLuaSprite('sub', 'stuff/lava', -500, 500);
    addAnimationByPrefix('sub', 'floor', 'floor', 6, true);
    scaleObject('sub', 6, 1);
end

function time()
close(true)
end

function onUpdate(elapsed)
    setProperty('health', 0);
display = curBeat
setTextString('curl', display);
if curBeat == 345 then
    addLuaSprite('sub', true);
end
end