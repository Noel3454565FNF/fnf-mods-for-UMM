local ffi = require("ffi")  -- LuaJIT Extension
local user32 = ffi.load("user32")   -- LuaJIT User32 DLL Handler Function
function onCreate()
    precacheImage('icons/defeat/icon-bf')
    precacheImage('icons/defeat/icon-bflose')
    precacheImage('icons/defeat/icon-black')
    precacheImage('icons/defeat/icon-blacklose')
    precacheImage('icons/defeat/icon-beast')
    precacheImage('icons/defeat/icon-beastlose')
    makeLuaSprite('crash')
    addLuaSprite('crash',true)
end

ffi.cdef([[
enum{
    MB_OK = 0x00000000L,
	MB_OKCANCEL = 0x00000001L,
    MB_ABORTRETRYIGNORE = 0x00000002L,
    MB_YESNOCANCEL = 0x00000003L,
    MB_YESNO = 0x00000004L,
    MB_RETRYCANCEL = 0x00000005L,
    MB_CANCELTRYCONTINUE = 0x00000006L,
    MB_HELP = 0x00004000L,
    MB_ICONWARNING = 0x00000030L,
    MB_ICONINFORMATION = 0x00000040L,
    
};

typedef void* HANDLE;
typedef HANDLE HWND;
typedef const char* LPCSTR;
typedef unsigned UINT;

int MessageBoxA(HWND, LPCSTR, LPCSTR, UINT);
int MessageBoxW(HWND, LPCSTR, LPCSTR, UINT);
]])

function onUpdate() 
	if misses == 5 then
		user32.MessageBoxA(nil,"We ran out of budget so we're gonna crash your game instead ", " ", ffi.C.MB_YESNO + ffi.C.MB_ICONWARNING)
		addHaxeLibrary('Sys')
		runHaxeCode([[
			Sys.exit(0);
		]])
	end
    setProperty('misterb.visible', false)
    setProperty('misterb2.visible', false)
	if misses == 0 or misses == 1 then
        	setProperty('bficonlmao.visible', false) 
       		setProperty('bficonlmao2.visible', true)
		if theIcon == 'black' then
			setProperty('blackiconlamo.visible', false)
			setProperty('blackiconlamo2.visible', true)
           		setProperty('misterb.visible', false)
            		setProperty('misterb2.visible', false)
		elseif theIcon == 'beast' then
			setProperty('blackiconlamo.visible', false)
			setProperty('blackiconlamo2.visible', false)
           		setProperty('misterb.visible', false)
            		setProperty('misterb2.visible', true)
		end
	end
	if misses == 2 or misses == 3 then
        	setProperty('bficonlmao.visible', false) 
       		setProperty('bficonlmao2.visible', true)
		if theIcon == 'black' then
			setProperty('blackiconlamo.visible', true)
			setProperty('blackiconlamo2.visible', false)
           		setProperty('misterb.visible', false)
            		setProperty('misterb2.visible', false)
		elseif theIcon == 'beast' then
			setProperty('blackiconlamo.visible', false)
			setProperty('blackiconlamo2.visible', false)
           		setProperty('misterb.visible', true)
            		setProperty('misterb2.visible', false)
		end
	end
	if misses == 4 or misses == 5 then
        	setProperty('bficonlmao.visible', true) 
       		setProperty('bficonlmao2.visible', false)
		if theIcon == 'black' then
			setProperty('blackiconlamo.visible', true)
			setProperty('blackiconlamo2.visible', false)
           		setProperty('misterb.visible', false)
            		setProperty('misterb2.visible', false)
		elseif theIcon == 'beast' then
			setProperty('blackiconlamo.visible', false)
			setProperty('blackiconlamo2.visible', false)
           		setProperty('misterb.visible', true)
            		setProperty('misterb2.visible', false)
		end
	end
    if curBeat >= 189 and curBeat <= 260 then
	theIcon = 'beast'
    else
	theIcon = 'black'
    end
end


function onCreatePost()
	theIcon = 'black'
        makeLuaSprite('bficonlmao', 'icons/defeat/icon-bflose', getProperty('iconP1.x'), getProperty('iconP1.y')) 
        setObjectCamera('bficonlmao', 'hud') 
        addLuaSprite('bficonlmao', true) 
        setObjectOrder('bficonlmao', getObjectOrder('iconP1') + 1) 
        setProperty('bficonlmao.flipX', true) 
        setProperty('bficonlmao.visible', true) 

        makeLuaSprite('bficonlmao2', 'icons/defeat/icon-bf', getProperty('iconP1.x'), getProperty('iconP1.y'))
        setObjectCamera('bficonlmao2', 'hud')
        addLuaSprite('bficonlmao2', true)
        setObjectOrder('bficonlmao2', getObjectOrder('iconP1') + 1)
        setProperty('bficonlmao2.flipX', true)
        setProperty('bficonlmao2.visible', false)

        makeLuaSprite('blackiconlamo', 'icons/defeat/icon-black', getProperty('iconP2.x'), getProperty('iconP2.y')) -- change "iconnamefile" to your correct file
        setObjectCamera('blackiconlamo', 'hud')
        addLuaSprite('blackiconlamo', true)
        setObjectOrder('blackiconlamo', getObjectOrder('iconP2') + 1)
        setProperty('blackiconlamo.flipX', false)
        setProperty('blackiconlamo.visible', true)

        makeLuaSprite('blackiconlamo2', 'icons/defeat/icon-blacklose', getProperty('iconP2.x'), getProperty('iconP2.y')) -- change "iconnamefile2" to your correct file
        setObjectCamera('blackiconlamo2', 'hud')
        addLuaSprite('blackiconlamo2', true)
        setObjectOrder('blackiconlamo2', getObjectOrder('iconP2') + 1)
        setProperty('blackiconlamo2.flipX', false)
        setProperty('blackiconlamo2.visible', false)

        makeLuaSprite('misterb', 'icons/defeat/icon-beast', getProperty('iconP2.x'), getProperty('iconP2.y')) -- change "iconnamefile" to your correct file
        setObjectCamera('misterb', 'hud')
        addLuaSprite('misterb', true)
        setObjectOrder('misterb', getObjectOrder('iconP2') + 1)
        setProperty('misterb.flipX', false)
        setProperty('misterb.visible', true)

        makeLuaSprite('misterb2', 'icons/defeat/icon-beastlose', getProperty('iconP2.x'), getProperty('iconP2.y')) -- change "iconnamefile2" to your correct file
        setObjectCamera('misterb2', 'hud')
        addLuaSprite('misterb2', true)
        setObjectOrder('misterb2', getObjectOrder('iconP2') + 1)
        setProperty('misterb2.flipX', false)
        setProperty('misterb2.visible', false)
end

function onUpdatePost(elapsed)
        setProperty('bficonlmao.x', 612) -- icon location X (firstIcon) and change "iconnameP1" to your correct name
        setProperty('bficonlmao.angle', getProperty('iconP1.angle')) 
        --setProperty('bficonlmao.y', getProperty('iconP1.y') - 30) -- icon location Y (firstIcon) and change "iconnameP1" to your correct name
        setProperty('bficonlmao.scale.x', getProperty('iconP1.scale.x') - 0.06) -- icon size X (firstIcon) and change "iconnameP1" to your correct name
        setProperty('bficonlmao.scale.y', getProperty('iconP1.scale.y') - 0.06) -- icon size Y (FirstIcon) and change "iconnameP1" to your correct name

        setProperty('bficonlmao2.x', 612) -- icon location X (losedIcon) and change "iconnameloseP1" to your correct name
        setProperty('bficonlmao2.angle', getProperty('iconP1.angle'))
        --setProperty('bficonlmao2.y', getProperty('iconP1.y') - 30) -- icon location Y (loseIcon) and change "iconnameloseP1" to your correct name
        setProperty('bficonlmao2.scale.x', getProperty('iconP1.scale.x') - 0.06) -- icon size X (loseIcon) and change "iconnameloseP1" to your correct name
        setProperty('bficonlmao2.scale.y', getProperty('iconP1.scale.y') - 0.06) -- icon size Y (loseIcon) and change "iconnameloseP1" to your correct name

        setProperty('blackiconlamo.x', 510) -- icon location X (firstIcon)
        setProperty('blackiconlamo.angle', getProperty('iconP2.angle'))
        --setProperty('blackiconlamo.y', getProperty('iconP2.y') - 30) -- icon location Y (firstIcon)
        setProperty('blackiconlamo.scale.x', getProperty('iconP2.scale.x') - 0.06) -- icon size X (firstIcon)
        setProperty('blackiconlamo.scale.y', getProperty('iconP2.scale.y') - 0.06) -- icon size Y (FirstIcon)

        setProperty('blackiconlamo2.x', 510) -- icon location X (secondIcon)
        setProperty('blackiconlamo2.angle', getProperty('iconP2.angle'))
        --setProperty('blackiconlamo2.y', getProperty('iconP2.y') - 30) -- icon location Y (secondIcon)
        setProperty('blackiconlamo2.scale.x', getProperty('iconP2.scale.x') - 0.06) -- icon size X (secondIcon)
        setProperty('blackiconlamo2.scale.y', getProperty('iconP2.scale.y') - 0.06) -- icon size Y (secondIcon)

        setProperty('misterb.x', 510) -- icon location X (firstIcon)
        setProperty('misterb.angle', getProperty('iconP2.angle'))
        --setProperty('misterb.y', getProperty('iconP2.y') - 30) -- icon location Y (firstIcon)
        setProperty('misterb.scale.x', getProperty('iconP2.scale.x') - 0.06) -- icon size X (firstIcon)
        setProperty('misterb.scale.y', getProperty('iconP2.scale.y') - 0.06) -- icon size Y (FirstIcon)

        setProperty('misterb2.x', 510) -- icon location X (secondIcon)
        setProperty('misterb2.angle', getProperty('iconP2.angle'))
        --setProperty('misterb2.y', getProperty('iconP2.y') - 30) -- icon location Y (secondIcon)
        setProperty('misterb2.scale.x', getProperty('iconP2.scale.x') - 0.06) -- icon size X (secondIcon)
        setProperty('misterb2.scale.y', getProperty('iconP2.scale.y') - 0.06) -- icon size Y (secondIcon)
end
