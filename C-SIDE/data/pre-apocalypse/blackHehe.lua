function onStartCountdown()
    makeLuaSprite('heheBlackBG', '', 0, 0);
    makeGraphic('heheBlackBG',1920,1080,'000000')
    setLuaSpriteScrollFactor('heheBlackBG',0,0)
    setProperty('heheBlackBG.scale.x',5)
    setProperty('heheBlackBG.scale.y',5)
    setProperty('heheBlackBG.alpha',1)
    screenCenter('heheBlackBG', 'xy')
    addLuaSprite('heheBlackBG', true);
end

function onSongStart()
    doTweenAlpha('blackGoByebye', 'heheBlackBG', 0, 2, 'quadInOut')
end
function onTweenCompleted(t)
    if t == 'blackGoByebye' then
        removeLuaSprite('heheBlackBG', false)
    end
end