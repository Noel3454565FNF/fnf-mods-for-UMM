function onCreate()
	makeLuaSprite('bgskypink', 'Sus/overfart/fartingSky', -1468, -995)
	setScrollFactor('bgskypink', 0.3, 0.3)
	addLuaSprite('bgskypink', false)
    setProperty('bgskypink.active', false)

	makeLuaSprite('cloud5', 'Sus/overfart/backSkyyellow', -1125, 284)
	setScrollFactor('cloud5', 0.4, 0.7)
	addLuaSprite('cloud5', false)
    setProperty('cloud5.active', false)

	makeLuaSprite('cloud6', 'Sus/overfart/yellow cloud 3', 1330, 283)
	setScrollFactor('cloud6', 0.5, 0.8)
	addLuaSprite('cloud6', false)
    setProperty('cloud6.active', false)

	makeLuaSprite('cloud7', 'Sus/overfart/yellow could 2', -837, 304)
	setScrollFactor('cloud7', 0.6, 0.9)
	addLuaSprite('cloud7', false)
    setProperty('cloud7.active', false)

	makeLuaSprite('glasses', 'Sus/overfart/window', -1387, -1231)
	addLuaSprite('glasses', false)
    setProperty('glasses.active', false)

	makeLuaSprite('cloud4', 'Sus/overfart/cloudYellow 1', -1541, 242)
	setScrollFactor('cloud4', 0.8, 0.8)
	addLuaSprite('cloud4', false)
    setProperty('cloud4.active', false)

	makeLuaSprite('lmao2', 'Sus/overfart/backDlowFloor', -642, 325)
	addLuaSprite('lmao2', false)
    setProperty('lmao2.active', false)

	makeLuaSprite('lmao', 'Sus/overfart/DlowFloor', -2440, 336)
	addLuaSprite('lmao', false)
    setProperty('lmao.active', false)

	makeLuaSprite('glow', 'Sus/overfart/glowYellow', -1113, -1009)
	setBlendMode('glow', 'add')
	addLuaSprite('glow', false)
    setProperty('glow.active', false)

    makeLuaSprite('burns', 'Sus/overfart/burns', -700, -396)
    scaleObject('burns', 1.4, 1.4);
    addLuaSprite('burns', false)
    setProperty('burns.visible', false)

    makeAnimatedLuaSprite('pbo','Sus/overfart/pbo', -500, 20)
	addAnimationByPrefix('pbo','pibby','pbo pibby', 24, false)
    addAnimationByPrefix('pbo','bluey','pbo bluey', 24, false)
    addAnimationByPrefix('pbo','ohio','pbo ohio', 24, false)
    addAnimationByPrefix('pbo','bowserfart','pbo bowser', 24, false)
    addAnimationByPrefix('pbo','peppino','pbo peppino', 24, false)
    addAnimationByPrefix('pbo','chungus','pbo chungus', 24, false)
    addAnimationByPrefix('pbo','mogus','pbo mogus', 24, false)
    addAnimationByPrefix('pbo','jumbojosh','pbo jumbojosh', 24, false)
    addAnimationByPrefix('pbo','skibiditoilet','pbo skibidi', 24, false)
    addAnimationByPrefix('pbo','ghettosmosh','pbo ghettosmosh', 24, false)
    addAnimationByPrefix('pbo','4chan','pbo 4chan', 24, false)
    addAnimationByPrefix('pbo','canny','pbo uncanny', 24, false)
    addAnimationByPrefix('pbo','redditgold','pbo reddit', 24, false)
    addAnimationByPrefix('pbo','freddyfnaf','pbo freddy', 24, false)
    addAnimationByPrefix('pbo','soretro','pbo mario', 24, false)
    addAnimationByPrefix('pbo','picklerick','pbo picklerick', 24, false)
    addAnimationByPrefix('pbo','smg4','pbo smg4', 24, false)
    addAnimationByPrefix('pbo','rizz','pbo end', 24, false)
    addLuaSprite('pbo', true)
    setProperty('pbo.visible', false)

    makeLuaSprite('bald2', 'bald 2', 170, 20)
	setObjectCamera('bald2', 'camHUD')
	scaleObject('bald2', 1.3, 1.3)
    setProperty('bald2.alpha', 0)
    addLuaSprite('bald2', true)
end

local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx = 300;
local yy = 500;
local xx2 = 700;
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
            setProperty('defaultCamZoom',0.6)
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
            setProperty('defaultCamZoom',0.6)
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
    if songName == "goofysight" then
    if curBeat == 32 then
        setProperty('bald2.alpha', 1)
    end
    if curBeat == 33 then
        doTweenAlpha('bald2', 'bald2', 0, 1, 'linear');
    end
    if curBeat == 192 then
        setProperty('burns.visible', true)
        setProperty('gf.visible', false)
        setProperty('dad.visible', false)
    end
    if curStep == 768 then
        setProperty('pbo.visible', true)
        objectPlayAnimation('pbo','pibby', false)
    end
    if curStep == 772 then
        objectPlayAnimation('pbo','bluey', false)
    end
    if curStep == 776 then
        objectPlayAnimation('pbo','ohio', false)
    end
    if curStep == 784 then
        objectPlayAnimation('pbo','bowserfart', false)
    end
    if curStep == 792 then
        objectPlayAnimation('pbo','peppino', false)
    end
    if curStep == 800 then
        objectPlayAnimation('pbo','chungus', false)
    end
    if curStep == 804 then
        objectPlayAnimation('pbo','mogus', false)
    end
    if curStep == 808 then
        objectPlayAnimation('pbo','jumbojosh', false)
    end
    if curStep == 816 then
        objectPlayAnimation('pbo','skibiditoilet', false)
    end
    if curStep == 824 then
        objectPlayAnimation('pbo','ghettosmosh', false)
    end
    if curStep == 832 then
        objectPlayAnimation('pbo','4chan', false)
    end
    if curStep == 836 then
        objectPlayAnimation('pbo','canny', false)
    end
    if curStep == 840 then
        objectPlayAnimation('pbo','redditgold', false)
    end
    if curStep == 848 then
        objectPlayAnimation('pbo','freddyfnaf', false)
    end
    if curStep == 855 then
        objectPlayAnimation('pbo','soretro', false)
    end
    if curStep == 864 then
        objectPlayAnimation('pbo','picklerick', false)
    end
    if curStep == 870 then
        objectPlayAnimation('pbo','smg4', false)
    end
    if curStep == 880 then
        objectPlayAnimation('pbo','rizz', false)
    end
    if curBeat == 224 then
        setProperty('pbo.visible', false)
        setProperty('burns.visible', false)
        setProperty('gf.visible', true)
        setProperty('dad.visible', true)
    end
    if curStep == 956 then
        doTweenX('stretch', 'dad.scale', 3, 0.01, 'linear')
    end
    if curStep == 960 then
         doTweenX('stretch', 'dad.scale', 1, 0.01, 'linear')
    end
    end
end