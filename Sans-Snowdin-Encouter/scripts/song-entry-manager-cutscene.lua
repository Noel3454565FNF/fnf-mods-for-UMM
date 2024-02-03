function onCreate()
    initSaveData('cut');

    sus = getRandomBool(1);
    if gasterSecret == true and sus == true then
        setDataFromSave('cut', 'cutscene', 'test');
        addLuaScript('images/cutscene.lua')
        give()
    end
    if isStoryMode == true and songName == 'lamentabling' and sus == false then
        setDataFromSave('cut', 'cutscene', 'lamentabling');
        addLuaScript('images/cutscene.lua')
    end
end

function give()
addHaxeLibrary('Mine');
runHaxeCode([[
Mine.grantAchievement('debugger');
FlxG.sound.play(Paths.sound('confirmMenu'), 0.7);
]]);
end

function onEndSong()
    if sus == true and gasterSecret == true then
        runHaxeCode([[
            MusicBeatState.switchState(new AchievementsMenuState());
        ]])
	end
end