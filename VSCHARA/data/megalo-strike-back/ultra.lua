local counter = 4;

function onSongStart()
    if difficultyName == 'Hard' then
        close(true);
    else
        debugPrint('you gonna die because the current difficulty is not '..difficultyName..' but something more insane, good luck lmao :>');
    end
end


function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)
    -- triggerEvent("DodgeEvent", 0.12);
    if noteType == '' then
        counter = counter - 1;
        if counter == 0 then
        triggerEvent("DodgeEvent", 0.4);
        addHealth('0.014');
        counter = 4;
        wait(1)
        end    
    end

end
