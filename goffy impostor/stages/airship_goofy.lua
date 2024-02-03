
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx = 700;
local yy = -2000;
local xx2 = 1634.05;
local yy2 = -54.3;
local ofs = 50;
local followchars = true;
local del = 0;
local del2 = 0;
function onCreate()



	makeLuaSprite('sky', 'Sus/danger/sky', -800, -1200);
	addLuaSprite('sky', false);
        setProperty("sky.scale.y", 2.0);
        setProperty("sky.scale.x", 2.0);


	makeLuaSprite('nube0', 'Sus/danger/farthestClouds', 12060, 0);
	addLuaSprite('nube0', false);
        setProperty("nube0.scale.y", 2.0);
        setProperty("nube0.scale.x", 2.0);
	setLuaSpriteScrollFactor('nube0', 0.2, 0.2);


	makeLuaSprite('nube', 'Sus/danger/farthestClouds', 3000, 0);
	addLuaSprite('nube', false);
        setProperty("nube.scale.y", 2.0);
        setProperty("nube.scale.x", 2.0);
	setLuaSpriteScrollFactor('nube', 0.2, 0.2);


	makeLuaSprite('nube2', 'Sus/danger/farthestClouds', -6060, 0);
	addLuaSprite('nube2', false);
        setProperty("nube2.scale.y", 2.0);
        setProperty("nube2.scale.x", 2.0);
	setLuaSpriteScrollFactor('nube2', 0.2, 0.2);



	makeLuaSprite('nub0', 'Sus/danger/backClouds', 12050, 400);
	addLuaSprite('nub0', false);
        setProperty("nub0.scale.y", 2.0);
        setProperty("nub0.scale.x", 2.0);
	setLuaSpriteScrollFactor('nub0', 0.2, 0.2);


	makeLuaSprite('nub', 'Sus/danger/backClouds', 3000, 400);
	addLuaSprite('nub', false);
        setProperty("nub.scale.y", 2.0);
        setProperty("nub.scale.x", 2.0);
	setLuaSpriteScrollFactor('nub', 0.2, 0.2);


	makeLuaSprite('nub2', 'Sus/danger/backClouds', -6050, 400);
	addLuaSprite('nub2', false);
        setProperty("nub2.scale.y", 2.0);
        setProperty("nub2.scale.x", 2.0);
	setLuaSpriteScrollFactor('nub2', 0.2, 0.2);


	makeLuaSprite('airship', 'Sus/danger/airship', 1300, -900);
	addLuaSprite('airship', false);
	setLuaSpriteScrollFactor('airship', 0.3, 0.3);

	makeAnimatedLuaSprite('airshipFan', 'Sus/danger/airshipFan', 2500, 0);
	addAnimationByPrefix('airshipFan', 'idle', 'ala avion instance 1', 30, true);
        objectPlayAnimation('airshipFan', 'idle', true);
	addLuaSprite('airshipFan', false);
	setLuaSpriteScrollFactor('airshipFan', 0.3, 0.3);


	makeLuaSprite('nu0', 'Sus/danger/frontClouds', 22000, 600);
	addLuaSprite('nu0', false);
        setProperty("nu0.scale.y", 2.0);
        setProperty("nu0.scale.x", 2.0);
	setLuaSpriteScrollFactor('nu0', 0.5, 0.5);



	makeLuaSprite('nu', 'Sus/danger/frontClouds', 6000, 600);
	addLuaSprite('nu', false);
        setProperty("nu.scale.y", 2.0);
        setProperty("nu.scale.x", 2.0);
	setLuaSpriteScrollFactor('nu', 0.5, 0.5);


	makeLuaSprite('nu1', 'Sus/danger/frontClouds', -10000, 600);
	addLuaSprite('nu1', false);
        setProperty("nu1.scale.y", 2.0);
        setProperty("nu1.scale.x", 2.0);
	setLuaSpriteScrollFactor('nu1', 0.5, 0.5);


	makeLuaSprite('nubef', 'Sus/danger/bigCloud', 3400, -800);
	addLuaSprite('nubef', false);
	setLuaSpriteScrollFactor('nubef', 0.6, 0.6);

	makeLuaSprite('a', 'Sus/danger/speedlines', 6000, -800);
	addLuaSprite('a', true);
        setProperty("a.scale.y", 2.0);
        setProperty("a.scale.x", 2.0);


	makeLuaSprite('BG0', 'Sus/danger/fgPlatform', -1200, 240);
	addLuaSprite('BG0', false);

	makeLuaSprite('BG1', 'Sus/danger/fgPlatform', 1090, 240);
	addLuaSprite('BG1', false);

	makeLuaSprite('BG2', 'Sus/danger/fgPlatform', 3380, 240);
	addLuaSprite('BG2', false);


	makeAnimatedLuaSprite('s', 'Sus/danger/blackspin', 0, -400);
	addAnimationByPrefix('s', 'idle', 'blackspin tpose', 30, true);
	addLuaSprite('s', false);
        setProperty("s.scale.x", 2);
        setProperty("s.scale.y", 1.5);
	setProperty('s.visible', false)
    setObjectOrder('s', getObjectOrder('gfGroup')+0.1)


	makeAnimatedLuaSprite('C', 'Sus/danger/speaker', 345, -1270);
	addAnimationByPrefix('C', 'bop', 'speaker goofy', 30, true);
	addLuaSprite('C', false);
        setProperty("C.scale.x", 1);
        setProperty("C.scale.y", 1);
        setObjectOrder('C',18);
        setProperty('C.visible', false)

	makeAnimatedLuaSprite('B', 'Sus/danger/plat', 345, -1270);
	addAnimationByPrefix('B', 'idle', 'plat form', 30, true);
        objectPlayAnimation('B', 'idle', true);
	addLuaSprite('B', false);

    makeLuaSprite('real', 'realimpostor', 280, -90)
	setObjectCamera('real', 'camHUD')
	scaleObject('real', 2.9, 2.9)
    setProperty('real.alpha', 0)
    addLuaSprite('real', false);

    makeLuaSprite('oof', 'BALLER', 80, -90)
	setObjectCamera('oof', 'camHUD')
	scaleObject('oof', 2.9, 2.9)
    setProperty('oof.alpha', 0)
    addLuaSprite('oof', false);

    makeLuaSprite('java', 'java', 2000, 570)
	setObjectCamera('java', 'other')
	scaleObject('java', 1.5, 1.5)
    setProperty('java.alpha', 1)
    addLuaSprite('java', false);

    makeLuaSprite('mimic', 'THEMIMIC', 280, 990)
	setObjectCamera('mimic', 'camHUD')
	scaleObject('mimic', 1.5, 1.5)
    setProperty('mimic.alpha', 1)
    addLuaSprite('mimic', false);




runTimer('correr',0.5)
runTimer('nube',0.5)
runTimer('nub',0.5)
runTimer('nu',0.5)
runTimer('nuf',10)
--runTimer('a',0.3)

end
function onCreatePost()

   --makeLuaTexts
  makeLuaText('Watermark', 'Danger Background Port by Thepotra', 0, 4, getProperty('healthBarBG.y') + 58);

  
   --addLuaText
   addLuaText('Watermark')


   --Text fonts
   setTextFont('scoreTxt', 'PhantomMuff Full Letters 1.1.5.ttf')
   setTextFont('healthCounter', 'PhantomMuff Full Letters 1.1.5.ttf')
   setTextFont('timeTxt', 'PhantomMuff Full Letters 1.1.5.ttf')
   setTextFont('botplayTxt', 'PhantomMuff Full Letters 1.1.5.ttf')
   setTextFont('judgementCounter', 'PhantomMuff Full Letters 1.1.5.ttf')
   setTextFont('Watermark', 'PhantomMuff Full Letters 1.1.5.ttf');

   
   --Text sizes
   setTextSize('Watermark', 16);
   setTextSize('scoreTxt', 20);
   setTextSize('healthCounter', 20);
   setTextSize('timeTxt', 20);
   setTextSize('botplayTxt', 34);
   setTextSize('judgementCounter', 20);

end
function onUpdate()
    if boyfriendName == 'bfgoofyfly' then
        setProperty('B.visible', false)
    end
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
    if curStep == 1 then
        setProperty('defaultCamZoom',0.3)
		followchars = true
        xx = 1684.05
        yy = -304.3
        xx2 = 1734.05
        yy2 = -54.3
    end
    if curBeat == 32 then
        setProperty('real.alpha', 1)
    end
    if curBeat == 33 then
        doTweenAlpha('real', 'real', 0, 1, 'linear');
    end
    if curBeat == 64 then
        setProperty('defaultCamZoom', 0.4)
        followchars = true
        xx = 850
        yy = -100
        xx2 = 1700
        yy2 = 150
    end
    if curBeat == 92 then
        doTweenX('java', 'java', 800, 0.5, "expoOut")
    end
    if curBeat == 96 then
        setProperty('defaultCamZoom', 0.6)
        doTweenX('java', 'java', 1300, 1, "quartIn")
        followchars = true
        xx = 750
        yy = -100
        xx2 = 1700
        yy2 = 150
    end
    if curBeat == 128 then
        setProperty('defaultCamZoom', 0.4)
        xx = 850
        yy = -100
        xx2 = 1700
        yy2 = 150
    end
    if curBeat == 171 then
        setProperty('defaultCamZoom', 0.8)
        followchars = true
        xx = 600
        yy = -100
        xx2 = 450
        yy2 = 150
    end
    if curBeat == 173 then
        setProperty('dad.visible', false)
    end
    if curBeat == 176 then
        setProperty('defaultCamZoom', 0.4)
        setProperty('dad.visible', true)
        followchars = true
        xx = 850
        yy = -100
        xx2 = 1700
        yy2 = 150
    end
    if curBeat == 208 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 750
        yy = -100
        xx2 = 1600
        yy2 = 150
    end
    if curBeat == 234 then
        doTweenY('mamic', 'mimic', 100, 2, "quartOut")
        doTweenAngle('memic', 'mimic', 90, 5, "quartIn")
    end
    if curBeat == 238 then
        doTweenY('mamic', 'mimic', 990, 2, "quartIn")
    end
    if curBeat == 272 then
        setProperty('defaultCamZoom', 0.4)
        followchars = true
        xx = 850
        yy = -100
        xx2 = 1600
        yy2 = 150
    end
    if curBeat == 274 then
        doTweenX('stretch', 'dad.scale', 1.5, 0.3, "linear")
    end
    if curBeat == 275 then
        doTweenX('stretch2', 'dad.scale', 1, 0.1, "linear")
    end
    if curBeat == 278 then
        doTweenY('stretch3', 'dad.scale', 1.5, 0.3, "linear")
    end
    if curBeat == 279 then
        doTweenX('stretch4', 'dad.scale', 1.7, 0.1, "linear")
    end
    if curBeat == 280 then
        doTweenX('stretch5', 'dad.scale', 1, 0.1, "linear")
        doTweenY('stretch6', 'dad.scale', 1, 0.1, "linear")
    end
    if curBeat == 282 then
        doTweenY('stretch7', 'dad.scale', 0.5, 0.3, "linear")
    end
    if curBeat == 283 then
        doTweenX('stretch8', 'dad.scale', 1.5, 0.1, "linear")
    end
    if curBeat == 284 then
        doTweenX('stretch9', 'dad.scale', 1, 0.1, "linear")
        doTweenY('stretch10', 'dad.scale', 1, 0.1, "linear")
    end
    if curStep == 1144 then
        doTweenX('stretch11', 'dad.scale', 1.5, 0.1, "linear")
    end
    if curStep == 1145 then
        doTweenY('stretch12', 'dad.scale', 1.5, 0.1, "linear")
    end
    if curStep == 1146 then
        doTweenX('stretch13', 'dad.scale', 1.7, 0.1, "linear")
    end
    if curStep == 1147 then
        doTweenY('stretch14', 'dad.scale', 0.7, 0.1, "linear")
    end
    if curStep == 1148 then
        doTweenX('stretch15', 'dad.scale', 1.5, 0.1, "linear")
    end
    if curStep == 1149 then
        doTweenY('stretch16', 'dad.scale', 1.5, 0.1, "linear")
    end
    if curStep == 1150 then
        doTweenX('stretch17', 'dad.scale', 0.7, 0.1, "linear")
    end
    if curStep == 1151 then
        doTweenY('stretch18', 'dad.scale', 1.3, 0.1, "linear")
    end
    if curStep == 1152 then
        doTweenX('stretch19', 'dad.scale', 1, 0.1, "linear")
        doTweenY('stretch20', 'dad.scale', 1, 0.1, "linear")
    end
    if curBeat == 303 then
        doTweenAngle('stretch69', 'boyfriend', 1800, 0.15, "linear")
    end
    if curBeat == 304 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 750
        yy = -100
        xx2 = 1600
        yy2 = 150
    end
    if curBeat == 334 then
        setProperty('oof.alpha', 1)
    end
    if curBeat == 335 then
        doTweenAlpha('oof', 'oof', 0, 1, 'linear');
    end
    if curBeat == 336 then
        setProperty('defaultCamZoom', 0.3)
        followchars = true
        xx = 1684.05
        yy = -304.3
        xx2 = 1634.05
        yy2 = -54.3
    end
    if curBeat == 400 then
        setProperty('defaultCamZoom',0.6)
		followchars = true
        xx = 750
        yy = -100
        xx2 = 1600
        yy2 = 150
    end

    
end
function onTimerCompleted(t,l,ll)
       if t == 'correr' then

		setProperty('BG0.x', -1200)
		doTweenX('BG0','BG0', -3490, 1.0,'linear')
		setProperty('BG1.x', 1090)
		doTweenX('BG1','BG1', -1200, 1.0,'linear')
		setProperty('BG2.x', 3380)
		doTweenX('BG2','BG2', 1090, 1.0,'linear')
                runTimer('correr',1.0)

        end
       if t == 'nube' then

		setProperty('nube0.x', 12060)
		doTweenX('nube0','nube0', 3000, 90,'linear')
		setProperty('nube.x', 3000)
		doTweenX('nube','nube', -6060, 90,'linear')
		setProperty('nube2.x', -6060)
		doTweenX('nube2','nube2', -15120, 90,'linear')
                runTimer('nube',90)

        end
       if t == 'nub' then


		setProperty('nub0.x', 12050)
		doTweenX('nub0','nub0', 3000, 60,'linear')
		setProperty('nub.x', 3000)
		doTweenX('nub','nub', -6050, 60,'linear')
		setProperty('nub2.x', -6050)
		doTweenX('nub2','nub2', -15100, 60,'linear')
                runTimer('nub',60)


        end
       if t == 'nu' then

		setProperty('nu0.x', 22000)
		doTweenX('nu0','nu0', 6000, 30,'linear')
		setProperty('nu.x', 6000)
		doTweenX('nu','nu', -10000, 30,'linear')
		setProperty('nu1.x', -10000)
		doTweenX('nu1','nu1', -26000, 30,'linear')
                runTimer('nu',30)

        end
       if t == 'nuf' then

		setProperty('nubef.x', 3400)
		doTweenX('nubef','nubef', -6000, 60,'linear')
                runTimer('nuf',60)
        end
       if t == 'a' then

		setProperty('a.x', 6000)
		doTweenX('a','a', -9000, 1,'linear')
                runTimer('a',5)

        end
end
function onEvent(name,value1,value2)
	if name == 'Thepotra' then 
		
		if value1 == 'a' then
			doTweenAlpha("gf", "gf", 0, 2, "quartIn")	


		end
		
                if value1 == 's' then
	                setProperty('s.visible', true)
                        objectPlayAnimation('s', 'idle', true);
		end
		
                if value1 == 'sa' then
	                setProperty('s.visible', false)
                end
	end
end

