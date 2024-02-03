local accuracy = 0.00
local totalNotesHit = 0
function onCreatePost()
        setProperty('totalNotesHit', 0)
	setProperty('scoreTxt.visible', false)
	setProperty('timeBar.visible', false)
	setProperty('timeBarBG.visible', false)
	setProperty('timeTxt.visible', false)
	if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
	setProperty('botplayTxt.y', 536)
	elseif getPropertyFromClass('ClientPrefs', 'downScroll') == true then
	setProperty('botplayTxt.y', 126)
	setPropertyFromClass('androidc', 'visible', false);
	end
end

function onCreate()
        setProperty('totalNotesHit', 0)
	makeLuaText('oldScore', 'Score:' .. score .. ' | Combo Breaks:' .. misses .. ' | Accuracy:' .. truncateFloat(getProperty('ratingPercent'), 2) .. '% ' .. ' | ' .. getProperty('ratingName'), getProperty('healthBarBG.width'), 430, 300)
	makeLuaText('funnikade', getPropertyFromClass('PlayState', 'SONG.song') .. ' ' .. getProperty('hard') .. ' - PE 0.5.2h',getProperty('healthBarBG.width'), 0 ,700)
	setTextSize('oldScore', 16)
	setTextSize('funnikade', 16)
	addLuaText('oldScore')
	addLuaText('funnikade')
	if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
	setProperty('oldScore.y', 670)
	elseif getPropertyFromClass('ClientPrefs', 'downScroll') == true then
	setProperty('oldScore.y', 106)
	end
end

function onRecalculateRating()
        setTextString('oldScore', 'Score:' .. score .. ' | Combo Breaks:' .. misses .. ' | Accuracy:' .. truncateFloat(getProperty('ratingPercent'), 2) .. '% ' .. ' | ' .. getProperty('ratingName'))
        setProperty('oldScore.y', 700)
end


function truncateFloat(number, precision)
    num = number
    num = num * math.pow(10, precision)
    return num
end

local totalPlayed = 1

function updateAccuracy()
    totalPlayed = totalPlayed + 1
    setProperty(getProperty('ratingPercent'), Math.max(0, getProperty('totalNotesHit') / totalPlayed * 100))
end
