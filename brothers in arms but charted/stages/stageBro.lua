
function onCreate()
		makeLuaSprite('ipairs', nil, -1000, 0)
makeGraphic('ipairs', 5000, 5000, 'ffffff')
scaleObject('ipairs', 5, 5)
setProperty('ipairs.alpha', 0.01)
		addLuaSprite('ipairs', true);

	makeLuaSprite('bg', 'Bgs/fondoQM', -900, -600);
setProperty('bg.alpha', 1)
	addLuaSprite('bg', false);



makeAnimatedLuaSprite('bg2','Bgs/chicos_asustaos',100,150)
addAnimationByPrefix('bg2','chicos_asustaos','chicos asustaos',24,true)
addLuaSprite('bg2',false)


makeAnimatedLuaSprite('bg3', 'Bgs/DULCE PRINCESA FONDO', 700, -365);
addAnimationByPrefix('bg3', 'JAKE FONDO', 'Dulce princesa fondo', 24, true);
addLuaSprite('bg3', false);

makeAnimatedLuaSprite('cred', 'Bgs/credits song', 410, 290);
addAnimationByPrefix('cred', 'play', 'BROTHERS IN ARMS', 24, false);
setProperty('cred.visible', false)
setObjectCamera('cred', 'hud')
addLuaSprite('cred', true)

end

function onSongStart()
objectPlayAnimation('cred', 'play', true)
setProperty('cred.visible', true)
runTimer('delete', 2)

end

function onTimerCompleted(tag)
if tag == 'delete' then
removeLuaSprite('cred', true)
close()
end
end