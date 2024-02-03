This Is How I Code A Background In Title Screen (need source code)

MENU BACKGROUND
Open TitleState.hx
Search For var blackScreen:FlxSprite;

And Down Paste var backgroundTitle:FlxSprite;

Search For 

swagShader = new ColorSwap();
   gfDance = new FlxSprite(titleJSON.gfx, titleJSON.gfy);

Paste up

backgroundTitle = new FlxSprite().loadGraphic(Paths.image('TitleBG'));
  backgroundTitle.screenCenter();
  backgroundTitle.antialiasing = ClientPrefs.globalAntialiasing;

Search gfDance.antialiasing = ClientPrefs.globalAntialiasing;

Paste Down add(backgroundTitle);