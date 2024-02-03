function onCreate()
	-- background shit

	makeLuaSprite('Castillo fondo de hasta atras', 'mario/EXE1/Castillo fondo de hasta atras', -1300, -1100);
	scaleObject('Castillo fondo de hasta atras', 1.1, 1.2);
                addLuaSprite('Castillo fondo de hasta atras',false)

                makeAnimatedLuaSprite('Starman_BG_Fire_Assets','mario/EXE1/starman/Starman_BG_Fire_Assets',-1300,-700)
	addAnimationByPrefix('Starman_BG_Fire_Assets','idle','fire anim effect',24,ture)	;
                addLuaSprite('Starman_BG_Fire_Assets',false)

	makeLuaSprite('Suelo y brillo atmosferico', 'mario/EXE1/Suelo y brillo atmosferico', -1000, -900);
	scaleObject('Suelo y brillo atmosferico', 1, 1);
                addLuaSprite('Suelo y brillo atmosferico',false)

	makeLuaSprite('Arboles y sombra', 'mario/EXE1/Arboles y sombra', -1000, -900);
	scaleObject('Arboles y sombra', 1, 1);
                addLuaSprite('Arboles y sombra',false)

	makeLuaSprite('CLadrillosPapus', 'mario/EXE1/CLadrillosPapus', -1000, -820);
	scaleObject('CLadrillosPapus', 1, 0.8);
                addLuaSprite('CLadrillosPapus',false)

	makeLuaSprite('dark', 'mario/EXE1/dark', -1000, -500);
	scaleObject('dark', 3, 3);
                addLuaSprite('dark',true)

	makeLuaSprite('smoke', 'mario/EXE1/smoke', -1000, -500);
	scaleObject('smoke', 3, 3);
                addLuaSprite('smoke',true)

    setProperty('Starman_BG_Fire_Assets.visible', false)
    setProperty('smoke.visible', false)

end
function onStepHit()
                if curStep == 2127 then
    setProperty('Starman_BG_Fire_Assets.visible', true)
    setProperty('smoke.visible', true)
    setProperty('dark.visible', false)

end
end