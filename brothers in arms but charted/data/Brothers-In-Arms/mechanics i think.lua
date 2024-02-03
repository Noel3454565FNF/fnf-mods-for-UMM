--note glitch thing
function onCreate()
addLuaScript('data/Brothers-In-Arms/CA')
end
youcanshake = true


function onStepHit()
if curStep == 973 then
youcanshake = false
elseif curStep == 1080 then
youcanshake = true

end
end


function opponentNoteHit(id, direction, noteType, isSustainNote)

if getProperty('dad.animation.curAnim.name') == 'singUP-alt' or getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' or getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' or getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' or getProperty('gf.animation.curAnim.name') == 'singUP-alt' or getProperty('gf.animation.curAnim.name') == 'singLEFT-alt' or getProperty('gf.animation.curAnim.name') == 'singDOWN-alt' or getProperty('gf.animation.curAnim.name') == 'singRIGHT-alt' then
triggerEvent('Add Camera Zoom', '0.02', '0.02')
triggerEvent('glitchy', '0,0,1,0.5', '0.1')
end


if getProperty('health') > 0.1 then
setProperty('health', getProperty('health')- 0.013);
end

if youcanshake then
Shake = getRandomInt(0,30)
ShakeAMT = getRandomFloat(0.0001,1)
ShakeSPEED = getRandomFloat(0.0001,1)
if Shake <= 3 then

triggerEvent('glitchy', ShakeAMT..','..ShakeSPEED..',0,0.5', '0.05')
cameraShake('game', 0.02, 0.03);
cameraShake('hud', 0.02, 0.03);
end
end
end