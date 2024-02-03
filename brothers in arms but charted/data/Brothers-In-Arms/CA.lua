function onCreatePost()
initLuaShader("glitchy")
initLuaShader("rdo")
initLuaShader("blur")
initLuaShader("INV")

makeLuaSprite("temporaryShader1")
setSpriteShader("temporaryShader1", "glitchy")

makeLuaSprite("temporaryShader2")
setSpriteShader("temporaryShader2", "blur")

makeLuaSprite("Shader")
setSpriteShader("Shader", "rdo")

makeLuaSprite("Shader2")
setSpriteShader("Shader2", "INV")


		runHaxeCode([[
trace(ShaderFilter);

game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader1").shader),new ShaderFilter(game.getLuaObject("temporaryShader2").shader),new ShaderFilter(game.getLuaObject("Shader").shader)]);

game.camGame.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader1").shader),new ShaderFilter(game.getLuaObject("temporaryShader2").shader),new ShaderFilter(game.getLuaObject("Shader").shader),new ShaderFilter(game.getLuaObject("Shader2").shader)]);

		]])
addHaxeLibrary("ShaderFilter1", "openfl.filters")

setShaderFloat("temporaryShader2", "cx", 0.5)
setShaderFloat("temporaryShader2", "cy", 0.5)
setShaderFloat("Shader", "GlitchAmount", 0)
setShaderInt("Shader2", "invert", 0)
end

-----------------------------------------------
stop = true
AMT = 0
SPEED = 0
INV = 0
idkeffect = 100000

function onUpdatePost()
setShaderFloat("temporaryShader2", "blurWidth", blurval)
setShaderFloat("Shader", "GlitchAmount", idkeffect)
setShaderFloat("Shader", "iTime", os.clock())
if not stop then
setShaderFloat("temporaryShader1", "iTime", os.clock())
setShaderFloat("temporaryShader1", "AMT", AMT)
setShaderFloat("temporaryShader1", "SPEED", SPEED)

setShaderInt("Shader2", "invert", INV)

end
end

function onUpdate(elapsed)

idkeffect = math.lerp(idkeffect, 0.001, boundTo(elapsed * 10, 0, 500));

blurval = math.lerp(blurval, 0, boundTo(elapsed * 10, 0, 500));
if curStep >= 1063 and curStep < 1079 then
idkeffect = idkeffect + 0.2
elseif curStep == 1079 then
idkeffect = 1
end


end
-----------------------------------------------

-----------------------------------------------
function mysplit (inputstr, sep)--i didn't make this. -latter
if sep == nil then
sep = "%s";
end
local t = {};
for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
table.insert(t, str);
end
return t;
end
-----------------------------------------------

-----------------------------------------------
function onEvent(n,v1,v2)
local table = mysplit(v1,",");
local tabledos = mysplit(v2,",");
if n == 'Add Camera Zoom' then
blurval = v2
end

if n == 'glitchy' then
stop = false

AMT = table[1]
SPEED = table[2]
INV = table[3]
idkeffect = table[4]
runTimer('nduw', tabledos[1])

end
end

-----------------------------------------------
function onTimerCompleted(tag)
if tag == 'nduw' then
AMT = 0
SPEED = 0
INV = 0
setShaderFloat("temporaryShader1", "AMT", 0)
setShaderInt("Shader2", "invert", 0)
stop = true
end
end
-----------------------------------------------
-----------------------------------------------
function boundTo(value, min, max)
return math.max(min, math.min(max, value))
end
function math.lerp(from,to,i)
return from+(to-from)*i
end
-----------------------------------------------
