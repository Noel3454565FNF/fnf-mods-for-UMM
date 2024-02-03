function onEvent(name, value1, value2)

if name == "Image Appearance" then

makeLuaSprite('image', value1, 0, -200);

addLuaSprite('image', true);

doTweenColor('hello', 'image', 'FFFFFFFF', 0.5, 'quartIn');

setObjectCamera('image','camHud')

scaleObject('image', 0.53, 0.69);

runTimer('wait', value2);

end

end

function onTimerCompleted(tag, loops, loopsleft)

if tag == 'wait' then

doTweenAlpha('byebye', 'image', 0, 0.3, 'linear');

end

end

function onTweenCompleted(tag)

if tag == 'byebye' then

removeLuaSprite('image', true, name);

end

end