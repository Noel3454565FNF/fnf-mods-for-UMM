function onCreate()
	if botPlay then
		debugPrint('works');
	end
	makeLuaSprite('HPhealthBar', 'sanshealthBar', 185, 650);
	setObjectCamera('HPhealthBar','hud')
	addLuaSprite('HPhealthBar',true);
end