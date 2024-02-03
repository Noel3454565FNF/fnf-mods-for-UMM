
function onCreatePost()
setProperty('camHUD.alpha', 0)
setProperty('camGame.alpha', 0)
setProperty('gf.visible', false)

setProperty('dad.color', getColorFromHex('000000'))
setProperty('bg2.color', getColorFromHex('000000'))

makeAnimatedLuaSprite('effcteye', 'idk', 0,0)
addAnimationByPrefix('effcteye', 'idle', 'idle', 13, true)
setProperty('effcteye.alpha', 0.7)
scaleObject('effcteye', 2.5,2.5)
setObjectCamera('effcteye', 'Other')
addLuaSprite('effcteye', true)

addCharacterToList('finn and jake', 'dad')
end

folowcam = false
camX = 580
camY = 300
enablehit = false
function onUpdate()
if folowcam then
setProperty('camFollow.x', camX)
setProperty('camFollow.y', camY)
end
end

function onStepHit()
if curStep == 11 then
doTweenAlpha('1', 'camGame', 1, 7, 'quadInOut')
doTweenAlpha('2', 'camHUD', 1, 7, 'quadInOut')
elseif curStep == 56 then
removeLuaSprite('effcteye', true)

doTweenAlpha('1', 'camGame', 1, 0.01, 'quadInOut')
doTweenAlpha('2', 'camHUD', 1, 0.01, 'quadInOut')

setProperty('dad.color', getColorFromHex('ffffff'))

setProperty('bg2.color', getColorFromHex('ffffff'))

elseif curStep == 375 or curStep == 503 then
folowcam = true

elseif curStep == 495 or curStep == 559 then
folowcam = false

elseif curStep == 567 then
setProperty('gf.visible', true)
setProperty('dad.visible', false)
setProperty('boyfriend.visible', false)
elseif curStep == 695 then
setProperty('dad.visible', true)
setProperty('gf.visible', false)
setProperty('boyfriend.visible', true)
folowcam = true
elseif curStep == 824 then
folowcam = false
setProperty('gf.visible', true)
triggerEvent('Change Character', 'dad', 'finn and jake')

elseif curStep == 951 then

doTweenAlpha('1', 'camGame', 0, 1, 'quadInOut')
doTweenAlpha('2', 'camHUD', 0, 1, 'quadInOut')
elseif curStep == 967 then
doTweenAlpha('2', 'camHUD', 1, 1, 'quadInOut')
folowcam = true
enablehit = true
setProperty('dad.visible', false)
setProperty('bg.visible', false)
setProperty('bg2.visible', false)
setProperty('bg3.visible', false)
elseif curStep == 1005 then
setProperty('dad.visible', true)
setProperty('gf.visible', false)
elseif curStep == 1037 then
setProperty('dad.visible', false)
setProperty('gf.visible', true)
elseif curStep == 1062 then
setProperty('dad.visible', true)
setProperty('gf.visible', false)
folowcam = false
enablehit = false
elseif curStep == 1063 then
doTweenAlpha('1', 'camGame', 1, 1, 'quadInOut')
elseif curStep == 1079 then
setProperty('gf.visible', true)
doTweenAlpha('2', 'camHUD', 1, 0.001, 'quadInOut')
setProperty('bg.visible', true)
setProperty('bg2.visible', true)
setProperty('bg3.visible', true)
elseif curStep == 1463 or curStep == 1711 then
folowcam = true
elseif curStep == 1591 or curStep == 1719 then
folowcam = false


end
end


function opponentNoteHit(id, direction, noteType, isSustainNote)
if enablehit and not isSustainNote then
doTweenAlpha('1', 'camGame', 0, 1, 'quadInOut')
doTweenAlpha('2', 'camHUD', 0, 2, 'quadInOut')
setProperty('camHUD.alpha', 1)
setProperty('camGame.alpha', 1)
triggerEvent('Add Camera Zoom', '0.3', '0.3')
end
end