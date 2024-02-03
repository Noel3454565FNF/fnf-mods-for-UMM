function onCreate()
	-- background shit

	makeLuaSprite('SS_sky', 'mario/EXE1/starman/SS_sky', -1000, -1500);
	scaleObject('SS_sky', 1.2, 1.2);
                addLuaSprite('SS_sky',false)

	makeLuaSprite('SS_castle', 'mario/EXE1/starman/SS_castle', -1200, -900);
	scaleObject('SS_castle', 1.2, 1.2);
                addLuaSprite('SS_castle',false)

                makeAnimatedLuaSprite('Starman_BG_Fire_Assets','mario/EXE1/starman/Starman_BG_Fire_Assets',-1500,-800)
	addAnimationByPrefix('Starman_BG_Fire_Assets','idle','fire anim effect',24,ture)	;
                addLuaSprite('Starman_BG_Fire_Assets',false)

	makeLuaSprite('SS_farplatforms', 'mario/EXE1/starman/SS_farplatforms', -800, -1000);
	scaleObject('SS_farplatforms', 1, 1.2);
                addLuaSprite('SS_farplatforms',false)

	makeLuaSprite('SS_midplatforms', 'mario/EXE1/starman/SS_midplatforms', -1000, -800);
	scaleObject('SS_midplatforms', 1, 1.2);
                addLuaSprite('SS_midplatforms',false)

	makeLuaSprite('SS_floor', 'mario/EXE1/starman/SS_floor', -700, -900);
	scaleObject('SS_floor', 1, 1.2);
                addLuaSprite('SS_floor',false)

	makeLuaSprite('SS_foreground', 'mario/EXE1/starman/SS_foreground', -1200, -500);
	scaleObject('SS_foreground', 0.9, 1);
                addLuaSprite('SS_foreground',true)

                makeAnimatedLuaSprite('SS_GF_scared_Assets','characters/SS_GF_scared_Assets',1900,400)
	addAnimationByPrefix('SS_GF_scared_Assets','idle','GF Dancing Beat',24,ture)	;
                addLuaSprite('SS_GF_scared_Assets',false)

end