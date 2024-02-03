local attacked = 0;
local genocide = false;
local canattack = True
function onUpdate(elapsed)
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ALT') then
		playSound('attack');
		if canattack == True then	
			local canattack = False;
			characterPlayAnim('boyfriend', 'attack', true);
			attacked = attacked + 1
			runTimer("attacktimer", 5);
			function onTimerCompleted(tag)
				if tag == 'attacktimer' then
					canattack = True;
				end
			end
		end
	end
	if attacked >= 5 then
		genocide = true;
	end
end
function onStepHit()
	--Please add the step next to end of the song in "addsongstep". To lazydrip :)
	if curStep == addsongstep then
		if genocide == true then
			loadSong('heartless', 'heartless', true);
		else
			--Please add non-genocide song name in "songnamehere". To Lazydrip :)
			loadSong('good-enough','good-enough',true);
		end
	end
end