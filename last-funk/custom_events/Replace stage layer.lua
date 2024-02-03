function onEvent(name, value1, value2)
	if name == 'Replace stage layer' then
		stage1 = value1;
        doTweenAlpha('stageAppear', experiment_bg, 1, 0.0001, 'linear');
		stage2 = value2;
		doTweenAlpha('experiment_bg', experiment_bg, 0, 0.0001, 'linear');
	end
end