function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an taco Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'mushroom' then
            setPropertyFromGroup('unspawnNotes', i, 'texture', 'custom-Note/mushroom'); --Change texture
            setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0'); --Default value is: 0.023, health gained on hit
            setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0'); --Default value is: 0.0475, health lost on miss
        end
        if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Lets Opponent's instakill notes get ignored
            setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
        else
            setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
        end
    end
end

local death = false;
local time = 3;
local timeStop = 0;
function goodNoteHit(membersIndex, noteData, noteType, isSustainNote)
    if noteType == 'mushroom' then
        death = true;
        runTimer('STOP', 1, 0);
    end

    if noteType == 'mushroom' and death == true then
        time = time + 1;
    end
end

function onUpdate(elapsed)
    if death == true then
        setProperty('health', getProperty('health') - 0.0025);
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'STOP' then
        timeStop = timeStop + 1
        if timeStop < time then
            runTimer('STOP', 1, 0);
        else
        death = false;
        timeStop = 0
        time = 3;
        end
    end
end