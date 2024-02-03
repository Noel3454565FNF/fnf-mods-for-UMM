

function onEvent(name, value1, value2)
if name == 'Gamefalling' then
doTweenY('nzusorwkw', 'camGame', 6000, 4, 'backIn')
doTweenY('2up', 'camHUD', 6000, 4, 'backIn')
doTweenAngle('2udsp', 'camHUD', -300, 6, 'linear')
doTweenAngle('2udddsp', 'camGame', 300, 6, 'linear')
end
end