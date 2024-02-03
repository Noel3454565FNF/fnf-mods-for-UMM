local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('themurderer');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and isStoryMode and not seenCutscene then
		setProperty('inCutscene', false);
		runTimer('startDialogue', 0.8);
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue', 'breakfast');
	end
end

local allowEnd = false
function onEndSong()
	if not allowEnd and isStoryMode then --Block the next song lol
		startVideo('themurderer2');
		allowEnd = true;
		return Function_Stop;
	end
	return Function_Continue;
end