function onEvent(name, value1, value2)
	if name == 'FlipUI' then
		if value1 == 'flip' then
			doTweenAngle('flipit', 'camGame', 180, 0.1, 'linear');
			playSound('flip',true);
		end
		if value1 == 'unflip' then
			doTweenAngle('unflipit','camGame', 0,0.1,'linear');
			playSound('flip',true);
		end
	end
end