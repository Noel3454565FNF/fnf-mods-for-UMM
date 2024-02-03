function onCreate()
	--this makes the rating object
	
	makeAnimatedLuaSprite("rankings", "pixelUI/rankings", 1020, 630);
	setObjectCamera('rankings', 'hud');
	setObjectOrder('rankings', '999')
	addLuaSprite("rankings", true);
	setScrollFactor('rankings', 0., 0);
	scaleObject('rankings', 8.5, 8.5);
     setProperty('rankings.antialiasing',  false);
	
	--animations,  this adds animations to the rating object so it can actually change rankings
	
	addAnimationByPrefix('rankings', 'crown', 'crown', 24, false);
	addAnimationByPrefix('rankings', 'star', 'star', 24, false);
	addAnimationByPrefix('rankings', 'fireflower', 'fireflower', 24, false);
	addAnimationByPrefix('rankings', 'mushroom', 'mushroom', 24, false);
	addAnimationByPrefix('rankings', 'brownmushroom', 'brownmushroom', 24, false);
	addAnimationByPrefix('rankings', 'X', 'X', 24, false);
	
	objectPlayAnimation('rankings', 'X', false)
	
end

function onUpdate()
    if rating >= 1 then
		function onBeatHit()
			if curBeat % 2 == 0 then
				objectPlayAnimation('rankings', 'crown', false)
		end
	end
    elseif rating >= 0.95 then
		function onBeatHit()
			if curBeat % 2 == 0 then
				objectPlayAnimation('rankings', 'star', false)
		end
	end
    elseif rating >= 0.90 then
		function onBeatHit()
			if curBeat % 2 == 0 then
				objectPlayAnimation('rankings', 'fireflower', false)
		end
	end
	
    elseif rating >= 0.85 then
		function onBeatHit()
			if curBeat % 2 == 0 then
				objectPlayAnimation('rankings', 'mushroom', false)
		end
	end
    elseif rating >= 0.80 then
		function onBeatHit()
			if curBeat % 2 == 0 then
				objectPlayAnimation('rankings', 'brownmushroom', false)
		end
	end
    elseif rating >= 0.50 then
		function onBeatHit()
			if curBeat % 2 == 0 then
				objectPlayAnimation('rankings', 'brownmushroom', false)
		end
	end
    elseif rating >= 0.21 then
		function onBeatHit()
			if curBeat % 2 == 0 then
				objectPlayAnimation('rankings', 'X', false)
		end
	end
    elseif rating <= 0.20 and rankings.animation ~= 'X' then
		function onBeatHit()
			if curBeat % 2 == 0 then
				objectPlayAnimation('rankings', 'X', false)
		end
	end
end
end
