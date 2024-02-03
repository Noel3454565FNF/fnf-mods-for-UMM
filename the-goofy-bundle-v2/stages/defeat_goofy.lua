
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "stagelight_left" and "stagelight_right", i can use "scaleObject('stagelight_left', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	-- background shit
	makeLuaSprite('goofy', 'defeatgoofy', -800, -900);
	setScrollFactor('goofy', 0.9, 0.9);
	scaleObject('goofy', 1.1, 1.1)

    makeLuaSprite('polus', 'bg/Polus', -800, -400);
	setScrollFactor('polus', 1, 1);
    setProperty('polus.alpha', 0)
    scaleObject('polus', 2.7, 2.7)

    makeLuaSprite('bald', 'bald', 120, -150)
	setObjectCamera('bald', 'camHUD')
	scaleObject('bald', 1.2, 1.2)
    setProperty('bald.alpha', 0)

	addLuaSprite('goofy', false);
    addLuaSprite('polus', false);
    addLuaSprite('bald', false);

	addLuaScript('data/CameraMove.lua')
    setGlobalFromScript('data/CameraMove','CamNoteMove',20)
    setGlobalFromScript('data/CameraMove','ForceCamPos',true)
    setGlobalFromScript('data/CameraMove','ManualPos',{750,500})
    addCharacterToList('black','dad')
    addCharacterToList('blackold','dad')
    addCharacterToList('bf-defeat-normal','boyfriend')
    addCharacterToList('bf-defeat-scared','boyfriend')
    addCharacterToList('bf','boyfriend')
    precacheSound('amongkill')

	setProperty('healthBar.alpha',0)
    setProperty('timeTxt.visible',false)

	if curBeat == 10 then
        setGlobalFromScript('data/CameraMove','ForceCamPos',false)
    end
end
function onGameOver()
    removeLuaScript('data/CameraMove.lua')
end
function onCountdownStarted()
    for i=0,3 do
        --setPropertyFromGroup('opponentStrums',i,'x',-200)
        --setPropertyFromGroup('playerStrums',i,'x',-278+(160*0.7)*i+50+(screenWidth/2))
    end
end

local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0
local xx = 750;
local yy = 500;
local xx2 = 750;
local yy2 = 500;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;




function onUpdate()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    if curBeat == 16 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 32 then
        setProperty('defaultCamZoom',0.7)
        setProperty('bald.alpha', 1)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 33 then
        doTweenAlpha('bald', 'bald', 0, 1, 'linear');
    end
    if curBeat == 48 then
        setProperty('defaultCamZoom',0.8)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 64 then
        doTweenAngle('bfspin','boyfriend', 1080, 0.75, 'linear')
    end
    if curStep == 270 then
        doTweenX('bfrun','boyfriend', -1000, 0.5, 'easeOut')
    end
    if curBeat == 68 then
        setProperty('defaultCamZoom',0.5)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 70 then
        setProperty('boyfriend.alpha', 0)
        doTweenX('bfrun','boyfriend', 1000, 0.5, 'easeOut')
    end
    if curBeat == 74 then
        doTweenAlpha('bfappear', 'boyfriend', 1, 1, 'linear');
    end
    if curBeat == 98 then
        setProperty('bald.alpha', 1)
    end
    if curBeat == 99 then
        doTweenAlpha('bald', 'bald', 0, 1, 'linear');
    end
    if curBeat == 100 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 500
        yy = 500
        xx2 = 900
        yy2 = 500
    end
    if curStep == 448 then
        doTweenY('bfScaleTweenY', 'boyfriend.scale', 1.5, 0.01, 'easeOut')
    end
    if curStep == 449 then
        doTweenY('bfScaleTweenY', 'boyfriend.scale', 1, 0.1, 'easeOut')
    end
    if curStep == 452 then
        doTweenY('bfScaleTweenY', 'boyfriend.scale', 1.5, 0.01, 'easeOut')
    end
    if curStep == 453 then
        doTweenY('bfScaleTweenY', 'boyfriend.scale', 1, 0.1, 'easeOut')
    end
    if curStep == 456 then
        doTweenY('bfScaleTweenY', 'boyfriend.scale', 1.5, 0.01, 'easeOut')
    end
    if curStep == 457 then
        doTweenY('bfScaleTweenY', 'boyfriend.scale', 1, 0.1, 'easeOut')
    end
    if curStep == 460 then
        doTweenY('bfScaleTweenY', 'boyfriend.scale', 1.5, 0.01, 'easeOut')
    end
    if curStep == 461 then
        doTweenY('bfScaleTweenY', 'boyfriend.scale', 1, 0.1, 'easeOut')
    end
    if curStep == 543 then
        doTweenX('blacScaleTweenX', 'dad.scale', 1.5, 0.1, 'easeOut')
    end
    if curStep == 559 then
        doTweenX('blackScaleTweenX', 'dad.scale', 1, 0.1, 'easeOut')
    end
    if curStep == 588 then
        doTweenY('blacScaleTweenX', 'dad.scale', 3, 0.01, 'easeOut')
    end
    if curStep == 592 then
        doTweenY('blacScaleTweenX', 'dad.scale', 1, 0.01, 'easeOut')
    end
    if curStep == 622 then
        doTweenX('bfScaleTweenX', 'boyfriend.scale', 1.5, 0.01, 'easeOut')
    end
    if curStep == 624 then
        doTweenX('bfScaleTweenX', 'boyfriend.scale', 1, 0.1, 'easeOut')
    end
    if curStep == 680 then
        doTweenY('blacScaleTweenX', 'dad.scale', 1.5, 0.5, 'easeOut')
    end
    if curStep == 704 then
        doTweenY('blacScaleTweenX', 'dad.scale', 1, 0.5, 'easeOut')
    end
    if curStep == 712 then
        doTweenX('blacScaleTweenX', 'dad.scale', 2, 0.3, 'easeOut')
    end
    if curStep == 720 then
        doTweenX('blacScaleTweenX', 'dad.scale', 1, 0.1, 'easeOut')
    end
    if curStep == 1680 then
        doTweenY('bfScaleTweenX', 'boyfriend.scale', 5, 0.7, 'easeOut')
    end
    if curStep == 1696 then
        doTweenY('bfScaleTweenX', 'boyfriend.scale', 1, 0.2, 'easeOut')
    end
    if curStep == 1920 then
        triggerEvent('Play Animation','reset', 'dad')
    end
    if curBeat == 164 then
        setProperty('defaultCamZoom',0.5)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 184 then
        doTweenAlpha('bruh', 'dad', 0, 1, 'linear');
    end
    if curBeat == 189 then
        setProperty('dad.alpha', 1)
    end
    if curBeat == 194 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 196 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 212 then
        setProperty('defaultCamZoom',0.7)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 228 then
        setProperty('defaultCamZoom',0.8)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 244 then
        setProperty('defaultCamZoom',0.85)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 260 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 292 then
        setProperty('defaultCamZoom',0.75)
        setProperty('polus.alpha', 1)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 356 then
        setProperty('polus.alpha', 0)
    end
    if curBeat == 360 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 500
        yy = 500
        xx2 = 900
        yy2 = 500
    end
    if curBeat == 424 then
        setProperty('defaultCamZoom',0.7)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 456 then
        setProperty('defaultCamZoom',0.8)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 472 then
        setProperty('defaultCamZoom',0.9)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    if curBeat == 488 then
        setProperty('defaultCamZoom',0.1)
		followchars = true
        xx = 750
        yy = 500
        xx2 = 750
        yy2 = 500
    end
    
end
