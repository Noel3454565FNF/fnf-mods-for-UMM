function onCreate()
	-- background shit
	
	makeLuaSprite('bg','snowdin', 0, 0);
	setLuaSpriteScrollFactor('bg', 1, 1);
	scaleObject('bg', 0.5, 0.5);

	addLuaSprite('bg',false);

	close(true);
end