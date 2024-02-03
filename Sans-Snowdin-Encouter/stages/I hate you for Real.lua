function onCreate()
    makeAnimatedLuaSprite('BG', 'backgrounds/IHYBG', -1010, 10);
    addAnimationByPrefix('BG', 'idle', 'idle', 6, true);
    scaleObject('BG', 4, 3);
    addLuaSprite('BG', false);
end