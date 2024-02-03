function onCreate()
	-- background shit
	makeLuaSprite('Allyway', 'Allyway', -600, -300);
	setScrollFactor('Allyway', 0.9, 0.9);

	addLuaSprite('Allyway', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end