function onCreate()
	-- background shit
	makeLuaSprite('snowdin_cave', 'snowdin_cave', -500, -200);
	setScrollFactor('snowdin_cave', 0.9, 0.9);
	
	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		
	end

	addLuaSprite('snowdin_cave', false)
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
