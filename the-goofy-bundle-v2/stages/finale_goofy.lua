function onCreate()
	addLuaScript('data/CameraMove.lua')
    setGlobalFromScript('data/CameraMove','CamNoteMove',20)
    setGlobalFromScript('data/CameraMove','CharcterMove',{dad=80,bf=0})
    setGlobalFromScript('data/CameraMove','ManualCharacterPos',{dad={500,600},bf={700,700}})
    setGlobalFromScript('data/CameraMove','CharacterForce',true)
    addLuaScript('data/GhostAnim.lua')

    addCharacterToList('blackparasite','dad')


    makeLuaSprite('Overlay','iluminao omaga',-550, 250)

    makeLuaSprite('goofy', 'defeatgoofy', -1300, -700);
	setScrollFactor('goofy', 0.9, 0.9);
	scaleObject('goofy', 1.1, 1.1)
    addLuaSprite('goofy', false);

    makeLuaSprite('tpose','blacktpose',175,0)
    setObjectCamera('tpose','hud')
    scaleObject('tpose', 0.7, 0.7)
    addLuaSprite('tpose')
    setProperty('tpose.alpha', 0)

    makeLuaSprite('Bars','bars',0,0)
    setObjectCamera('Bars','hud')
    addLuaSprite('Bars')
	makeLuaSprite('bg', 'bg', -990, -530);
	setScrollFactor('bg', 1, 1);

	makeLuaSprite('fore', 'fore', -1050, 160);
    setScrollFactor('fore', 1.1, 1.1);
	scaleObject('bg', 1.1, 1.1)
	scaleObject('fore', 1.1, 1.1)
    if downscroll then
        makeLuaSprite('HealthBarBG','healthBarFinaleBlue',0,-47)
        setProperty('HealthBarBG.flipY',true)
    else
        makeLuaSprite('HealthBarBG','healthBarFinaleBlue',0,530)
    end
end
function onBeatHit()
    if curBeat % 4 == 0 then
	playAnim('light','light',true)
	end
end
function onStartCountdown()
    triggerEvent('Alt Idle Animation','dad', '-angy')
end
function onUpdate(elapsed)
    if getSongPosition() >= 0 and getSongPosition() < 9600 then
        setProperty('camGame.zoom',Lerp(getProperty('camGame.zoom'), 1,boundTo(elapsed * 0.01, 0, 1)))
    end
end
function boundTo(value, min, max)
    return math.max(min, math.min(max, value))
 end
local Credits=false
function onUpdatePost()
    if downscroll then
        setProperty('iconP1.y',getProperty('HealthBarBG.y')+65)
    else
        setProperty('iconP1.y',getProperty('HealthBarBG.y')+35)
    end
    for i=0,3 do
        --setPropertyFromGroup('strumLineNotes',i,'alpha',0)
    end
    setProperty('iconP1.visible',getProperty('HealthBarBG.visible'))
    if getProperty('HealthBarBG.visible') then
        loadGraphic('HealthBarRed','healthBarFinaleRed',1407*(1-(getHealth()/2)),437)
        setProperty('HealthBarRed.x',getProperty('HealthBarBG.x'))
        setProperty('HealthBarRed.y',getProperty('HealthBarBG.y'))
        setProperty('HealthBarRed.offset.x',280)
        setProperty('HealthBarRed.offset.y',87)
        setProperty('HealthBarRed.origin.x',getProperty('HealthBarBG.origin.x'))
        setProperty('HealthBarRed.origin.y',getProperty('HealthBarBG.origin.y'))
       
        if getHealth()>=2 then
            setProperty('HealthBarRed.visible',false)
        else
            setProperty('HealthBarRed.visible',true)
        end
    else
        setProperty('HealthBarRed.visible',false)
    end
    if curBeat == 68 then
        setProperty('goofy.alpha', 0)
        addLuaSprite('bg', false);
        addLuaSprite('fore', true);
        setProperty('health', 0.1)
    end
    if curBeat == 32 then
        setProperty('defaultCamZoom',0.8)
        setProperty('tpose.alpha', 1)
    end
    if curBeat == 33 then
        doTweenAlpha('tpose', 'tpose', 0, 1, 'linear');
    end
    if curBeat == 80 then
        doTweenAlpha('lol1', 'boyfriend', 0, 0.1, 'linear');
        doTweenAlpha('lol2', 'dad', 0, 0.1, 'linear');
    end
    if curBeat == 84 then
        setProperty('boyfriend.alpha', 1)
        setProperty('dad.alpha', 1)
    end
    if curBeat == 109 then
        doTweenY('wht', 'dad', -1500, 1, 'quartInOut');
    end
    if curBeat == 112 then
        doTweenY('wht', 'dad', 530, 0.5, 'quartInOut');
    end
    if curBeat == 137 then
        doTweenY('blacScaleTweenY', 'dad.scale', 2, 0.01, 'easeOut')
        doTweenX('blacScaleTweenX', 'dad.scale', 2, 0.01, 'easeOut')
    end
    if curBeat == 140 then
        doTweenY('blacScaleTweenY', 'dad.scale', 1, 0.01, 'easeOut')
        doTweenX('blacScaleTweenX', 'dad.scale', 1, 0.01, 'easeOut')
    end
    if curStep == 746 then
        doTweenX('blacScaleTweenX', 'dad.scale', 3, 0.01, 'easeOut')
    end
    if curStep == 752 then
        doTweenX('blacScaleTweenX', 'dad.scale', 1, 0.01, 'easeOut')
    end
    if curBeat == 304 then
        doTweenY('blacScaleTweenY', 'dad.scale', 1.3, 0.01, 'easeOut')
        doTweenX('blacScaleTweenX', 'dad.scale', 1.3, 0.01, 'easeOut')
    end
    if curBeat == 356 then
        doTweenY('wht', 'dad', -1500, 1, 'quartInOut');
    end
    if curBeat == 360 then
        doTweenY('blacScaleTweenY', 'dad.scale', 1, 0.01, 'easeOut')
        doTweenX('blacScaleTweenX', 'dad.scale', 1, 0.01, 'easeOut')
        setProperty('dad.y', 530)
    end
    if curBeat == 426 then
        setProperty('dad.alpha', 0)
    end
    if curBeat == 438 then
        setProperty('dad.alpha', 1)
    end
    if curBeat < 32 then --start
        setGlobalFromScript('data/CameraMove','ManualPos',{ 750, 800})
        setGlobalFromScript('data/CameraMove','ForceCamPos',true)
    end

    if curBeat >= 32 and curBeat < 48 then
        setGlobalFromScript('data/CameraMove','ManualPos',{450, 1000})
        setGlobalFromScript('data/CameraMove','ForceCamPos',true)
    end
    if curBeat >= 48 and curBeat < 64 then --to bf
        setGlobalFromScript('data/CameraMove','ManualPos',{1250, 1000})
        setGlobalFromScript('data/CameraMove','ForceCamPos',true)
    end
    if curBeat >= 64 and curBeat < 68 then --bf zoom in
        triggerEvent('Camera Follow Pos', 1400, 1050)
        setGlobalFromScript('data/CameraMove','ManualPos',{1400, 1050})
        setGlobalFromScript('data/CameraMove','ForceCamPos',true)
        setProperty('defaultCamZoom',1.2)
    end
    if curBeat == 67 then
        setProperty('defaultCamZoom',2.4)
    end
    if mustHitSection and curBeat >= 68 then
        setProperty('defaultCamZoom',0.5)
        setGlobalFromScript('data/CameraMove','ManualCharacterPos',{dad={500,600},bf={700,700}})
        setGlobalFromScript('data/CameraMove','CharacterForce',true)
        setGlobalFromScript('data/CameraMove','ForceCamPos',false)
    elseif curBeat >= 68 then
        setProperty('defaultCamZoom',0.4)
        setGlobalFromScript('data/CameraMove','ManualCharacterPos',{dad={500,600},bf={700,700}})
        setGlobalFromScript('data/CameraMove','CharacterForce',true)
        setGlobalFromScript('data/CameraMove','ForceCamPos',false)
    end
    if curBeat == 492 then
        doTweenZoom('defeated', 'camGame', 2.4, 1.2, 'circIn')
    end
    if not Credits and startedCountdown then
        setProperty('CreditsTxt.x',Lerp(getProperty('CreditsTxt.x'),12,0.1))
        setProperty('CreditsBG.x',Lerp(getProperty('CreditsBG.x'),0,0.1))
    else
        setProperty('CreditsTxt.x',Lerp(getProperty('CreditsTxt.x'),-392+12,0.1))
        setProperty('CreditsBG.x',Lerp(getProperty('CreditsBG.x'),-392,0.1))
    end
    if curBeat >= 5 then
        if getProperty('CreditsBG.x')>-0.9 then
            Credits=true
        end
    end
    setProperty('timeBar.alpha',0)
    if getProperty('timeBar.percent')>0 and  (not hideHud or not hideTime) then
        setProperty('TimeBar.visible',true)
    setGraphicSize('TimeBar',(getProperty('TimeBarBG.width')-8)*(getProperty('timeBar.percent')/100),getProperty('TimeBarBG.height')-8)
    end
end
function Lerp(Min,Max,Ratio)
    return Min + Ratio * (Max - Min);
end
