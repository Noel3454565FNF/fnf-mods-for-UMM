function onCreate()
	-- background shit
	makeLuaSprite('bg', 'bg', -500, -200);
	setScrollFactor('bg', 0.9, 0.9);
	
	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		
	end

	addLuaSprite('bg', false)
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
