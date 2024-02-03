function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Attack' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'AttackNote'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'BendyNotesplashes'); -- change splash
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '2'); --Default value is: 0.023, health gained on hit
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0'); --Default value is: 0.0475, health lost on miss
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Attack' then
		characterPlayAnim('bf', 'attack', true)
	end
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Attack' then
		makeLuaSprite('image', 'Attack', -500, -200);
		addLuaSprite('image', true);
		doTweenColor('hello', 'image', 'FFFFFFFF', 0.1, 'quartIn');
    		setObjectCamera('image', 'other');
   		runTimer('wait', 1);
		bruh = getProperty('health');
		setProperty('health', bruh - 0);

	end
end

function onTimerCompleted(tag, loops, loopsleft)
    if tag == 'wait' then
    doTweenAlpha('byebye', 'image', 0, 0.1, 'linear');
    end
end

function onTweenCompleted(tag)
    if tag == 'byebye' then
    removeLuaSprite('image', true);
    end
end