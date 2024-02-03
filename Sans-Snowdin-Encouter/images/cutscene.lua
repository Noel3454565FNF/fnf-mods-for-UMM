function onCreate()
    display = getDataFromSave('cut', 'cutscene');
end


local allowCountdown = false
function onStartCountdown()
    if not allowCountdown and not seenCutscene then
        startVideo(display);
        allowCountdown = true;
        return Function_Stop;
    end
return Function_Continue;
end
