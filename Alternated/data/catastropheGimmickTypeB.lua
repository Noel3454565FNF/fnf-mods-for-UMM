간격 = 95
색 = '31b0d1'
상대색 = '2C0051'

next = 5
turn = 0

function onCreatePost()
	setProperty('iconP1.flipX', false);
	setProperty('healthBar.x', 80)
	setProperty('health', 2)

	makeAnimatedLuaSprite('iconP3', nil, 1100, getProperty('healthBar.y') - 80)
	loadGraphic('iconP3', 'icons/'..getProperty('gf.healthIcon'), 150)
	addAnimation('iconP3', 'icon/'..getProperty('gf.healthIcon'), {0, 1}, 0, true)
	setObjectCamera('iconP3', 'camHUD')
	addLuaSprite('iconP3', true)
	setObjectOrder('iconP3', getObjectOrder('iconP2'))
	setProperty('iconP3.flipX', true);

		--makeLuaSprite('line', '', getProperty('healthBar.x') + 630, getProperty('healthBar.y') - 4)
		--makeGraphic('line', 3, 19, '000000')
		--addLuaSprite('line')
		--setObjectCamera('line','hud')



		makeLuaSprite('missbarBG', '', getProperty('healthBar.x') + 630, getProperty('healthBar.y') - 4)
		makeGraphic('missbarBG', 70, 19, '000000')
		addLuaSprite('missbarBG')
		setObjectCamera('missbarBG','hud')
		setObjectOrder('missbarBG' ,getObjectOrder('iconP1') - 3)

		makeLuaSprite('missbarBG2', '', getProperty('missbarBG.x') + 간격, getProperty('healthBar.y') - 4)
		makeGraphic('missbarBG2', 70, 19, '000000')
		addLuaSprite('missbarBG2')
		setObjectCamera('missbarBG2','hud')
		setObjectOrder('missbarBG2' ,getObjectOrder('iconP1') - 3)

		makeLuaSprite('missbarBG3', '', getProperty('missbarBG2.x') + 간격, getProperty('healthBar.y') - 4)
		makeGraphic('missbarBG3', 70, 19, '000000')
		addLuaSprite('missbarBG3')
		setObjectCamera('missbarBG3','hud')
		setObjectOrder('missbarBG3' ,getObjectOrder('iconP1') - 3)

		makeLuaSprite('missbarBG4', '', getProperty('missbarBG3.x') + 간격, getProperty('healthBar.y') - 4)
		makeGraphic('missbarBG4', 70, 19, '000000')
		addLuaSprite('missbarBG4')
		setObjectCamera('missbarBG4','hud')
		setObjectOrder('missbarBG4' ,getObjectOrder('iconP1') - 3)

		makeLuaSprite('missbarBG5', '', getProperty('missbarBG4.x') + 간격, getProperty('healthBar.y') - 4)
		makeGraphic('missbarBG5', 70, 19, '000000')
		addLuaSprite('missbarBG5')
		setObjectCamera('missbarBG5','hud')
		setObjectOrder('missbarBG5' ,getObjectOrder('iconP1') - 3)

		-------------------------------------------------
		makeLuaSprite('missbar1', '', 714, getProperty('healthBar.y') - 0)
		makeGraphic('missbar1', 62, 11, 색)
		addLuaSprite('missbar1')
		setObjectCamera('missbar1', 'hud')
		setObjectOrder('missbar1' ,getObjectOrder('iconP1') - 3)

		makeLuaSprite('missbar2', '', 714 + 간격, getProperty('healthBar.y') - 0)
		makeGraphic('missbar2', 62, 11, 색)
		addLuaSprite('missbar2')
		setObjectCamera('missbar2', 'hud')
		setObjectOrder('missbar2' ,getObjectOrder('iconP1') - 3)

		makeLuaSprite('missbar3', '', 714 + 간격 + 간격, getProperty('healthBar.y') - 0)
		makeGraphic('missbar3', 62, 11, 색)
		addLuaSprite('missbar3')
		setObjectCamera('missbar3', 'hud')
		setObjectOrder('missbar3' ,getObjectOrder('iconP1') - 3)

		makeLuaSprite('missbar4', '', 714 + 간격 + 간격 + 간격, getProperty('healthBar.y') - 0)
		makeGraphic('missbar4', 62, 11, 색)
		addLuaSprite('missbar4')
		setObjectCamera('missbar4', 'hud')
		setObjectOrder('missbar4' ,getObjectOrder('iconP1') - 3)

		makeLuaSprite('missbar5', '', 714 + 간격 + 간격 + 간격 + 간격, getProperty('healthBar.y') - 0)
		makeGraphic('missbar5', 62, 11, 색)
		addLuaSprite('missbar5')
		setObjectCamera('missbar5', 'hud')
		setObjectOrder('missbar5' ,getObjectOrder('iconP1') - 3)



end

function onUpdatePost()
	x = 590 + turn

	setProperty('iconP1.x', x)
	setProperty('iconP2.x', 0)
end

function onUpdate()
setProperty('iconP3.alpha', getProperty('iconP2.alpha'))

setProperty('missbarBG.alpha', getProperty('iconP2.alpha'))

setProperty('missbarBG2.alpha', getProperty('iconP2.alpha'))

setProperty('missbarBG3.alpha', getProperty('iconP2.alpha'))

setProperty('missbarBG4.alpha', getProperty('iconP2.alpha'))

setProperty('missbarBG5.alpha', getProperty('iconP2.alpha'))

setProperty('missbar1.alpha', getProperty('iconP2.alpha'))

setProperty('missbar2.alpha', getProperty('iconP2.alpha'))

setProperty('missbar3.alpha', getProperty('iconP2.alpha'))

setProperty('missbar4.alpha', getProperty('iconP2.alpha'))

setProperty('missbar5.alpha', getProperty('iconP2.alpha'))

	setProperty('iconP3.scale.x', getProperty('iconP2.scale.x'))
	setProperty('iconP3.scale.y', getProperty('iconP2.scale.y'))
	
	if next == 0 then
                    setProperty('health', -1);
                end
end


function opponentNoteHit()
	health = getProperty('health')
		if getProperty('iconP1.flipX') == false then
			setProperty('health', health - .015);
		end
end

function goodNoteHit()
	health = getProperty('health')
		if getProperty('iconP1.flipX') == true then
			setProperty('health', health - .023);
		end
end


function noteMiss(id, noteData, noteType, isSustainNote)
	health = getProperty('health')
		if getProperty('iconP1.flipX') == true then
			if not isSustainNote then
				if next == 5 then
					doTweenColor('missBarCTween5', 'missbar5', 상대색, 0.1);
					next = 4
				elseif next == 4 then
					doTweenColor('missBarCTween4', 'missbar4', 상대색, 0.1);
					next = 3
				elseif next == 3 then
					doTweenColor('missBarCTween3', 'missbar3', 상대색, 0.1);
					next = 2
				elseif next == 2 then
					doTweenColor('missBarCTween2', 'missbar2', 상대색, 0.1);
					next = 1
				elseif next == 1 then
					doTweenColor('missBarCTween1', 'missbar1', 상대색, 0.1);
					next = 0
				elseif next == 0 then
					setProperty('health', 0)
				end
			end

			if getProperty('iconP1.flipX') == true then
				setProperty('health', health + .048);
			end
		end
end







function onEvent(name, value1, value2)
	if name == 'catastropheGimmickTypeB' then
		if getProperty('iconP1.flipX') == true then
			setProperty('iconP1.flipX', false);
			turn = 0
			doTweenAngle('iconP1Tween', 'iconP1', 0, 0.5, 'quintOut');
		elseif getProperty('iconP1.flipX') == false then
			setProperty('iconP1.flipX', true);
			turn = 20
			doTweenAngle('iconP1Tween', 'iconP1', 360, 0.5, 'quintOut');
		end
	end
end



