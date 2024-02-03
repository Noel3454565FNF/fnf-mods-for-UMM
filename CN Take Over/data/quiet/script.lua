function OnCreate()
	precacheImage('black');
end

function opponentNoteHit()
       health = getProperty('health')
    if getProperty('health') > 0.02 then
       setProperty('health', health- 0.02);
	end
end

function onStepHit()

	if curStep == 1920 then
		makeLuaSprite('image', 'blinds', -860, -480);
		setScrollFactor('image', 10000, 10000);
		setProperty('image.alpha', 0);
		addLuaSprite('image', true);

		doTweenAlpha('fade', 'image', 1, 2);
	end
end