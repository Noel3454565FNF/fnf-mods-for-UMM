function onCreate()
	Dodged = false;
	canDodge = false;
end
function onEvent(name,value1,value2)
	if name == "GB" then
		playSound('blaster');
		makeAnimatedLuaSprite('GB', 'GB', -400, -100);
		luaSpriteAddAnimationByPrefix('GB', 'GB', 'GB', 24, true)
		setObjectCamera('GB','game')
		objectPlayAnimation('GB', 'GB');
		addLuaSprite('GB',true);
		runTimer('stopgaster',2);
		runTimer('dodgeit',0.5);
		function onTimerCompleted(tag)
			if tag == 'stopgaster' then
				removeLuaSprite('GB',false);
			end
			if tag == 'dodgeit' then
				runTimer('yourdedcheck',0.4);
				canDodge = true;
			end
			if tag == 'yourdedcheck' then
				if Dodged == false then
					health = getProperty('health')
					health = setProperty('health',health-1.5)
				end
			end
			if tag == 'stopthedodge' then	
				canDodge = false;
				Dodged = false;
			end
		end
	end
end
function onUpdate()
	if canDodge == true then
		if keyJustPressed('space') then
			characterPlayAnim('boyfriend','dodge down',true);
			Dodged = true;
			runTimer('stopthedodge',1.5);
		end
	end
end	