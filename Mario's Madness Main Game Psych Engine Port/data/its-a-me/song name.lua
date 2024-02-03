function onStepHit()--Bueno Este Metodo Es Muy Facil De Usar, Lo Cree En Un Dia Si me Dan creditos Por El Esfuerso Se Los Agradeceria Soy Perez Sen Y Eso Es TODO :)
	if curStep == 130 then

		makeLuaText('Text', "ITS A ME", 299, 510, -700); 
		setTextSize('Text', 29);
		setTextFont('Text', 'mario2.ttf')
		setObjectCamera('Text', 'other');
		addLuaText('Text', true);
   setTextColor("Text","FF4500")

		doTweenY("Text", "Text", 350, 1, "linear")	
	end
	if curStep == 160 then
		doTweenY("Text", "Text", -350, 0.7, "linear")
	end
	end