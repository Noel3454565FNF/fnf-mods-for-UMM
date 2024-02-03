--SCRIPT BY Kevin Kuntz#7641


function onCreate()
	if boyfriendName == 'bf-night' then
	makeAnimatedLuaSprite('animatediconBF', 'icons/bf-night')
	addAnimationByPrefix('animatediconBF', 'normal', 'a1', 24, true)
	addAnimationByPrefix('animatediconBF', 'losing', 'a2', 24, true)
	setObjectCamera('animatediconBF', 'hud')
	setObjectOrder('animatediconBF', 6)
    setProperty('animatediconBF.flipX', true)
	end
end

function onUpdate(elapsed)
	if boyfriendName == 'bf-night' then
		addLuaSprite('animatediconBF', true)
		setObjectOrder('healthBarBG', 1)
		setObjectOrder('healthBar', 2)
		setProperty('iconP1.visible', false)
			if getProperty('health') > 1.6 then
				objectPlayAnimation('animatediconBF', 'normal', false)
		setProperty('animatediconBF.y', getProperty('iconP1.y')-700)
			else
				objectPlayAnimation('animatediconBF', 'normal', false)
			end
		setProperty('animatediconBF.x', getProperty('iconP1.x'))
		setProperty('animatediconBF.angle', getProperty('iconP1.angle'))
		setProperty('animatediconBF.y', getProperty('iconP1.y')-70)
		setProperty('animatediconBF.scale.x', getProperty('iconP1.scale.x'))
		setProperty('animatediconBF.scale.y', getProperty('iconP1.scale.y'))
	else
		setProperty('iconP1.visible', true)
		removeLuaSprite('animatediconBF', false)
	end
end