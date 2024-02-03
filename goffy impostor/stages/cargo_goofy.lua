--if you're reading this i love you - cooldudecrafter
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx = 1950;
local yy = 1050;
local xx2 = 2300;
local yy2 = 1050;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;
local showDlowDK = false;
local cargoDarken = false;
local cargoReadyKill = false;

function onCreate()

    makeLuaSprite('fllor', 'sus/dk/cargofloor', 0, 1000)
    setProperty('fllor.active', false)
    addLuaSprite('fllor')

    makeLuaSprite('bg', 'sus/dk/cargo', 0, 0)
    setProperty('bg.active', false)
    addLuaSprite('bg')

    makeLuaSprite('cargoAirsip', 'sus/dk/airshipFlashback', 2100, 800) -- i sip the air in the car go
    scaleObject('cargoAirsip', 1.3, 1.3)
    setProperty('cargoAirsip.alpha', 0.001)
    addLuaSprite('cargoAirsip')
    setObjectOrder('cargoAirsip', getObjectOrder('boyfriendGroup')-0.1)

    makeLuaSprite('lightoverlayDK', 'sus/dk/scavd', 0, 0)
    setProperty('lightoverlayDK.alpha', 0.51)
    setProperty('lightoverlayDK.active', false)
    setBlendMode('lightoverlayDK', 'add')
    addLuaSprite('lightoverlayDK', true)

    makeLuaSprite('mainoverlayDK', 'sus/dk/overlay ass dk', -100, 0)
    setProperty('mainoverlayDK.alpha', 0.6)
    setProperty('mainoverlayDK.active', false)
    setBlendMode('mainoverlayDK', 'add')


    makeLuaSprite('defeatDKoverlay', 'sus/dk/iluminao omaga', 900, 350)
    setProperty('defeatDKoverlay.alpha', 0.001)
    setProperty('defeatDKoverlay.active', false)
    setBlendMode('defeatDKoverlay', 'add')
    addLuaSprite('defeatDKoverlay', true)

    makeLuaSprite('defeatend', 'sus/dk/the_feet', 0, 0)
    addLuaSprite('defeatend')
    scaleObject('defeatend', 500, 500)
    setProperty('defeatend.alpha', 0)

    makeLuaSprite('cargoDarkFG', nil, -1000, -1000)
    makeGraphic('cargoDarkFG', screenWidth*3, screenHeight*3, '000000')
    setScrollFactor('cargoDarkFG', 0, 0)
    addLuaSprite('cargoDarkFG', true)

    setProperty('camHUD.visible', false)


    -- TO ANYONE WONDERING WHY I DIDNT JUST USE A VIDEO PLAYER FOR PSYCH V0.7h, PLEASE KNOW THAT I PREFER TO USE PSYCH 0.6.3 -cooldudcrooftar


    --eggman's annoucement stuff
    makeAnimatedLuaSprite('egg1','sus/dk/eggman1', 350, 1000)
    setObjectCamera('egg1','hud')
	scaleObject('egg1', 1, 1);
    addLuaSprite('egg1', true)

    makeAnimatedLuaSprite('egg2','sus/dk/eggman3', 350, 1000)
    setObjectCamera('egg2','hud')
	scaleObject('egg2', 1, 1);
    addLuaSprite('egg2', true)

    makeLuaSprite('frame','sus/dk/eggmanvideoframe', 350, 880)
    setObjectCamera('frame','hud')
    scaleObject('frame', 1, 1)
    addLuaSprite('frame', true)

    --tbh
    makeAnimatedLuaSprite('tbh','sus/dk/tbh_memory', 2410, 580)
    addAnimationByPrefix('tbh','left','TbhHonest Left', 24, false)
    addAnimationByPrefix('tbh','up','TbhHonest Up', 24, false)
    addAnimationByPrefix('tbh','right','TbhHonest Right', 24, false)
    addAnimationByPrefix('tbh','down','TbhHonest Down', 24, false)
    setProperty('tbh.flipX', true) 
    addLuaSprite('tbh', true)
    scaleObject('tbh', 0.9, 0.9);
    setProperty('tbh.alpha', 0)

    --misc memes
    makeLuaSprite('soda','SODA!!!!!!!!!!!',1225, 950)
    addLuaSprite('soda')
    setProperty('soda.alpha', 0)
    setObjectOrder('soda', getObjectOrder('dadGroup')+0.1)

    makeLuaSprite('obamna','obamna',1225, 950)
    addLuaSprite('obamna')
    setProperty('obamna.alpha', 0)
    setObjectOrder('obamna', getObjectOrder('dadGroup')+0.2)

    makeAnimatedLuaSprite('king','sus/dk/hehehe', 450, 100)
    setObjectCamera('king','hud')
    addAnimationByPrefix('king','hehehehaw','hehehe haw', 20, true)
    addLuaSprite('king')
    setProperty('king.alpha', 0)

    makeLuaSprite('hamburger','ham',135,25)
    setObjectCamera('hamburger','hud')
    scaleObject('hamburger', 3.7, 3.7)
    addLuaSprite('hamburger')
    setProperty('hamburger.alpha', 0)

    makeLuaSprite('real','fakeimpostor',335,25)
    setObjectCamera('real','hud')
    scaleObject('real', 2.2, 2.2)
    addLuaSprite('real')
    setProperty('real.alpha', 0)

    --dr mario
    makeAnimatedLuaSprite('drmario','sus/dk/drmario', 350, 1000)
    setObjectCamera('drmario','hud')
	scaleObject('drmario', 1, 1);
    addLuaSprite('drmario', true)

    makeLuaSprite('frame2','sus/dk/drmariovideoframe', 250, 900)
    setObjectCamera('frame2','hud')
    scaleObject('frame2', 1, 1)
    addLuaSprite('frame2', true)
end

function onUpdate(elapsed)
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.8)
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' or getProperty('gf.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' or getProperty('gf.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' or getProperty('gf.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' or getProperty('gf.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' or getProperty('gf.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' or getProperty('gf.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' or getProperty('gf.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' or getProperty('gf.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
        else

            setProperty('defaultCamZoom',0.8)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
                luaSpritePlayAnimation('tbh','right', false)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
                luaSpritePlayAnimation('tbh','left', false)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
                luaSpritePlayAnimation('tbh','up', false)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
                luaSpritePlayAnimation('tbh','down', false)
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
    if curBeat == 1 then
        doTweenAlpha('wap', 'cargoDarkFG', 0, 1, 'linear')
        setProperty('camHUD.visible', true)
    end


    --video stuff
    if curBeat == 131 then
        doTweenY('egg1','egg1', 200, 1, "quartOut")
        doTweenY('frame1','frame', 80, 1, "quartOut")
        addAnimationByPrefix('egg1','play1','eggman1 part1', 10, false)
    end
    if curBeat == 194 then
        doTweenY('egg1','egg1', 1000, 1, "quartIn")
        doTweenY('frame2','frame', 880, 1, "quartIn")
    end
    if curBeat == 318 then
        addAnimationByPrefix('drmario','playvid','drmario video', 14, false)
    end
    if curBeat == 323 then
        doTweenY('drmario1','drmario', 200, 1, "quartOut")
        doTweenY('frame6','frame2', 100, 1, "quartOut")
    end
    if curBeat == 353 then
        doTweenY('drmario2','drmario', 1000, 1, "quartIn")
        doTweenY('frame7','frame2', 900, 1, "quartIn")
    end
    if curBeat == 855 then
        doTweenY('egg3','egg2', 200, 1, "quartOut")
        doTweenY('frame1','frame', 80, 1, "quartOut")
    end
    if curBeat == 856 then
        addAnimationByPrefix('egg2','play2','eggman3 part3', 10, false)
    end
    if curBeat == 911 then
        doTweenY('egg2','egg2', 1000, 1, "quartIn")
        doTweenY('frame2','frame', 880, 1, "quartIn")
    end
    --funnies
    if curStep == 1154 then
        doTweenAlpha('disa1','dad', 0, 0.1, "linear")
        doTweenAlpha('disa2','boyfriend', 0, 0.1, "linear")
        doTweenAlpha('disa3','gf', 0, 0.1, "linear")
    end
    if curStep == 1164 then
        setProperty('dad.alpha', 1)
        setProperty('boyfriend.alpha', 1)
        setProperty('gf.alpha', 1)
    end
    if curBeat == 435 then
        doTweenY('streng','gf.scale', 3, 0.01, "linear")
    end
    if curBeat == 436 then
        doTweenY('streng','gf.scale', 1, 0.01, "linear")
    end
    --goofy ahh running
    if curBeat == 200 then
        doTweenAngle('dad', 'dad', 720, 0.5, 'linear')
    end
    if curBeat == 203 then
        doTweenX('dadrun', 'dad', getProperty('dad.x')+400, 0.5, 'quartOut')
    end
    if curBeat == 208 then
        doTweenAngle('dad2', 'dad', -720, 0.5, 'linear')
    end
    if curBeat == 211 then
        doTweenX('dadrun2', 'dad', getProperty('dad.x')-400, 0.5, 'quartOut')
    end

    if curBeat == 68 then
        setProperty('real.alpha', 1)
    end
    if curBeat == 69 then --nice
        doTweenAlpha('realistic', 'real', 0, 1, 'linear');
    end
    if curBeat == 216 then
        doTweenAngle('bf', 'boyfriend', -720, 0.5, 'linear')
    end
    if curBeat == 219 then
        doTweenX('bfrun', 'boyfriend', getProperty('boyfriend.x')-400, 0.5, 'quartOut')
    end
    if curBeat == 224 then
        doTweenAngle('bf2', 'boyfriend', 720, 0.5, 'linear')
    end
    if curBeat == 227 then
        doTweenX('bfrun2', 'boyfriend', getProperty('boyfriend.x')+400, 0.5, 'quartOut')
    end
    if curBeat == 274 then
        doTweenY('bfsquish', 'boyfriend.scale', 0.5, 0.2, 'linear')
    end
    if curBeat == 275 then
        doTweenY('bfsquish2', 'boyfriend.scale', 1, 0.1, 'quartOut')
    end
    if curStep == 1539 then
        setProperty('hamburger.alpha', 1)
    end
    if curBeat == 386 then
        doTweenAlpha('hamburgers', 'hamburger', 0, 1, 'linear');
    end
    if curBeat == 460 then
        doTweenAlpha('tbhspawn', 'tbh', 0.75, 17, 'linear')
    end
    if curBeat == 520 then
        setProperty('tbh.alpha', 0)
    end
    if curBeat == 521 then
        setProperty('soda.alpha', 1)
    end
    if curBeat == 523 then
        doTweenAlpha('soda1', 'soda', 0, 1, 'linear');
    end
    if curBeat == 669 then
        setProperty('obamna.alpha', 1)
    end
    if curBeat == 670 then
        doTweenAlpha('obamna1', 'obamna', 0, 1, 'linear');
    end
    if curBeat == 130 then
        setProperty('king.alpha', 1)
    end
    if curBeat == 131 then
        doTweenAlpha('king1', 'king', 0, 1, 'linear');
    end
    if curBeat == 654 then
        setProperty('king.alpha', 1)
    end
    if curBeat == 656 then
        doTweenAlpha('king2', 'king', 0, 0.5, 'linear');
    end
    if curBeat == 722 then
        doTweenX('totheright', 'dad', getProperty('dad.x')+50, 0.1, 'quartOut')
        doTweenX('1totheright', 'gf', getProperty('gf.x')+50, 0.1, 'quartOut')
    end
    if curBeat == 726 then
        doTweenX('totheright', 'dad', getProperty('dad.x')-50, 0.1, 'quartOut')
        doTweenX('1totheright', 'gf', getProperty('gf.x')-50, 0.1, 'quartOut')
    end
    if curBeat == 729 then
        doTweenX('totheright', 'dad', getProperty('dad.x')-50, 0.1, 'quartOut')
        doTweenX('1totheright', 'gf', getProperty('gf.x')-50, 0.1, 'quartOut')
    end
    if curBeat == 731 then
        doTweenX('totheright', 'dad', getProperty('dad.x')+75, 0.1, 'quartOut')
        doTweenX('1totheright', 'gf', getProperty('gf.x')+75, 0.1, 'quartOut')
    end
    if curBeat == 734 then
        doTweenX('totheright', 'dad', getProperty('dad.x')-25, 0.1, 'quartOut')
        doTweenX('1totheright', 'gf', getProperty('gf.x')-25, 0.1, 'quartOut')
    end

    if curBeat == 738 then
        doTweenX('totheright', 'boyfriend', getProperty('boyfriend.x')+50, 0.2, 'quartOut')
    end
    if curBeat == 742 then
        doTweenX('totheright', 'boyfriend', getProperty('boyfriend.x')-50, 0.2, 'quartOut')
    end
    if curBeat == 745 then
        doTweenX('totheright', 'boyfriend', getProperty('boyfriend.x')-50, 0.1, 'quartOut')
    end
    if curBeat == 747 then
        doTweenX('totheright', 'boyfriend', getProperty('boyfriend.x')+75, 0.1, 'quartOut')
    end
    if curBeat == 750 then
        doTweenX('totheright', 'boyfriend', getProperty('boyfriend.x')-25, 0.1, 'quartOut')
    end
    



    if curBeat >= 452 then
		doTweenAlpha('wep', 'bg', 0, 0.5, 'linear')
        doTweenAlpha('weep', 'fllor', 0, 0.5, 'linear')

	end
    if curBeat >= 484 then
		doTweenAlpha('wup', 'cargoAirsip', 1, 7, 'linear')
	end
    if curBeat >= 520 then
		setProperty('bg.alpha', 1)
        setProperty('fllor.alpha', 1)
        setProperty('cargoAirsip.alpha', 0)

	end
    if curBeat >= 452 and curBeat < 520 then
		setProperty('defaultCamZoom',1.1)
        xx2 = 2750;
        yy2 = 1150;  
	end
    if curBeat == 520 then
		setProperty('defaultCamZoom',0.8)
        xx2 = 2300;
        yy2 = 1050;  
	end
    if curBeat >= 520 and curBeat < 524 then
		setProperty('defaultCamZoom',1.2)
        xx = 1650;
        yy = 1180;  
	end
    if curBeat == 524 then
        xx = 2000;
        yy = 1050;  
	end
    if curBeat == 788 then
        doTweenAlpha('defeat', 'bg', 0, 1, 'linear')
        doTweenAlpha('defeat1', 'fllor', 0, 1, 'linear')
        doTweenAlpha('defeat5', 'defeatend', 1, 1, 'linear')
        doTweenAlpha('defeat3', 'defeatDKoverlay', 1, 1, 'linear')
        doTweenAlpha('defeat4', 'dad', 0, 1, 'linear')
        setProperty('iconP1.alpha', 0)
        setProperty('iconP2.alpha', 0)
        setProperty('iconP3.alpha', 0)
        setProperty('iconP4.alpha', 0)
        setProperty('scoreTxt.color', getColorFromHex('FF0000'))
        setProperty('timeTxt.color', getColorFromHex('FF0000'))
        setProperty('healthGain', 0)
        setProperty('healthLoss', 0)
        setProperty('healthBar.visible', false)
        setProperty('healthBarBG.visible', false)
        setProperty('healthBarBG.active', false)
	end
    if curBeat == 824 then
        doTweenY('moveit', 'gf', getProperty('dad.y')-110, 1, 'quartIn')
	end
    if curBeat == 920 then
        cameraFlash('game', 'FF0000', 2.75, true)
        setProperty('gf.alpha', 0)
        setProperty('boyfriend.alpha', 0)
        setProperty('camHUD.visible', false)
        setProperty('defeatDKoverlay.alpha', 0)
    end
end

function onEvent(eventName, value1, value2)
    if eventName == 'Character Two' then
        if v1 == '1' then
        end
    end
end