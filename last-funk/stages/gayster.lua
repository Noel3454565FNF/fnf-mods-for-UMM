function onCreate()
	-- background shit
	
	makeLuaSprite('bg','experiment_bg', 0, 0);
	setLuaSpriteScrollFactor('bg', 1, 1);
	scaleObject('bg', 0.9, 0.9);

	addLuaSprite('bg',false);

	close(true);
end