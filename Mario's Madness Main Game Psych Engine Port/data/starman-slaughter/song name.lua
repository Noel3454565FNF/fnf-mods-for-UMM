function onStepHit()--Bueno Este Metodo Es Muy Facil De Usar, Lo Cree En Un Dia Si me Dan creditos Por El Esfuerso Se Los Agradeceria Soy Perez Sen Y Eso Es TODO :)
	if curStep == 144 then

		makeLuaText('Text', "STARMAN SLAUGHTER", 299, 510, -700); 
		setTextSize('Text', 29);
		setTextFont('Text', 'mario2.ttf')
		setObjectCamera('Text', 'other');
		addLuaText('Text', true);
   setTextColor("Text","FF4500")

		doTweenY("Text", "Text", 350, 1, "linear")	
	end
	if curStep == 176 then
		doTweenY("Text", "Text", -350, 0.7, "linear")
	end
	end