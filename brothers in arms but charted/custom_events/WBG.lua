function onCreate()
makeLuaSprite('WBG', nil, -1500, -1200)
makeGraphic('WBG',5000,5000,'ffffff')
addLuaSprite('WBG', false)
scaleObject('WBG', 5, 5);
setScrollFactor('WBG', 0, 0)
setProperty('WBG.alpha',0)
end

function onEvent(name,value1,value2)
if name == 'WBG' then 
if value1 == 'on' then

setProperty('boyfriend.color', getColorFromHex('000000'))
setProperty('dad.color', getColorFromHex('000000'))
setProperty('gf.color', getColorFromHex('000000'))
setProperty('WBG.alpha', 1)
setProperty('iconP1.alpha', 0)
setProperty('healthBar.alpha', 0)
setProperty('iconP2.alpha', 0)
setProperty('timeTxt.alpha', 0)
setProperty('timeBar.alpha', 0)
setProperty('scoreTxt.alpha', 0)

end
if value1 == 'off' then
setProperty('boyfriend.color', getColorFromHex('ffffff'))
setProperty('dad.color', getColorFromHex('ffffff'))
setProperty('gf.color', getColorFromHex('ffffff'))
setProperty('WBG.alpha', 0)
setProperty('iconP1.alpha', 1)
setProperty('healthBar.alpha', 1)
setProperty('iconP2.alpha', 1)
setProperty('timeTxt.alpha', 1)
setProperty('timeBar.alpha', 1)
setProperty('scoreTxt.alpha', 1)
end
end
end