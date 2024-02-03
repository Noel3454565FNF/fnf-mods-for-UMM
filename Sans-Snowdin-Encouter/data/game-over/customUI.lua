function onCreatePost()
    setPropertyFromClass('ClientPrefs', 'scoreZoom', false)

    setProperty('scoreTxt.scale.x', 1)
    setProperty('scoreTxt.scale.y', 1)
    
    makeLuaText("scoretext", "coolswag", -10, getProperty('healthBarBG.x') -150, getProperty('healthBarBG.y') + 7)
    setTextSize("scoretext", 40)
    setTextFont("scoretext", "smb1.ttf");
    setTextBorder("scoretext", 1, '000001')
    addLuaText("scoretext")
end
function onUpdatePost(elapsed)
    setProperty("scoreTxt.y", -100)
    setTextString("scoretext", '' .. getProperty('songScore'))
end
function onCreate()
    setPropertyFromClass('ClientPrefs', 'noteSplashes', false);
    setPropertyFromClass('ClientPrefs', 'middlescroll', false);
end
function onCreatePost()
        setProperty('healthBar.visible', false); --This hides the Healhbar RGB
    setProperty('healthBarBG.visible', false); --This hides the png of Healthbar
    end
function onCreatePost()

	makeLuaText("scoretext", "skill issue", 1000, 140, 670)

	setTextAlignment("scoretext", 'center')
	setTextSize("scoretext", 20)
	setTextFont("scoretext", "smb1.ttf"); -- replacing the font llol
	addLuaText("scoretext")
end
function onUpdatePost()
	setProperty("scoreTxt.y", -100)
	setTextString("scoretext", getProperty("scoreTxt.text"))
end