local allowCountdown = false
function onStartCountdown()
    if not allowCountdown and not seenCutscene and isStoryMode == true and inChartEditor == false then
        startVideo('cutscene_first');
        allowCountdown = true;
        return Function_Stop;
    end
return Function_Continue;
end