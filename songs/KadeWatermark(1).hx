import openfl.text.TextFormat;
import flixel.text.FlxTextBorderStyle;
import flixel.ui.FlxBar;
import flixel.FlxG;

// https://github.com/Kade-github/Kade-Engine/blob/stable/source/PlayState.hx#L876C19-L876C19 
// Reference Code.

function create() {
		var kadeEngineWatermark:FlxText; // Marks the sprite (kadeEngineWatermark) as a FlxText (but as a variable, probably unnecessary.)
		var kadeEngineWatermarkTween:FlxTween; // Marks the sprite's tween (kadeEngineWatermarkTween) as a tween. Tweening is when you want something to move. (This is different than having a sprite animate!)

		kadeEngineWatermark = new FlxText(); // Marks the sprite (kadeEngineWatermark) as a FlxText.
		kadeEngineWatermark.setFormat(Paths.font("vcr.ttf")); // Sets the font for the text.
		kadeEngineWatermark.text = PlayState.SONG.meta.displayName + " - " + PlayState.difficulty + " | Kade Engine 1.5"; // Sets the text itself. The 'curSong' variable is the raw song name itself, but it is better to use PlayState.SONG.meta.displayName instead.
		//kadeEngineWatermark.text = PlayState.SONG.meta.displayName + " " + PlayState.difficulty; // Alternate version of the watermark.
						// You may wonder how I made it so that the song name is connected to the rest of the text without saying the actual song name and difficulty.
						// Its real simple. For normal text, you just type whatever you want in quotations marks ("), for instance:
						   			// showcaseText.text = "Hello, World!"
						// For variables, type the name of the variable. For instance:
						   			// showcaseText.text = example
						// If you want to join text or variables together, then add a plus sign, like this:
						   			// showcaseText.text = "Hello, World! Check out my variable:" + example
						// Last thing, if you want to use quotations marks in the text itself without it getting ruined, then replace quotation marks with an apostrophe. (')

		kadeEngineWatermark.color = FlxColor.WHITE; // This sets the color of the sprite. I have it set to white.
		kadeEngineWatermark.size = 16; // This is the size of the text in pixels. Right now, it is sixteen.
		kadeEngineWatermark.setBorderStyle(FlxTextBorderStyle.OUTLINE, FlxColor.BLACK, 1); // This sets the "Border Style" of the text. I have it set to be an outline that is black, though you can mix and match different types of borders. (No border, a shadow, an outline, or a fast outline.)
		kadeEngineWatermark.borderSize = 1.25;

// https://github.com/FNF-CNE-Devs/CodenameEngine/blob/main/source/funkin/menus/PauseSubState.hx#L71C75-L71C75 Reference code used for putting stuff like the Difficulty and Display Name of the song.

		kadeEngineWatermark.x = 0; // Sets the X to be 0, which is the default.
		kadeEngineWatermark.y = FlxG.height - 18; // Sets the Y value to be 18 pixels above the height of the screen. 

		add(kadeEngineWatermark);  // Line 20, this adds the text.
		kadeEngineWatermark.cameras = [camHUD]; // This sets it to the hud.

// Watermark template:
// Song - Difficulty | KE [Version] (Ex: Milf - Hard | Kade Engine 1.5.2
// Alt Watermark template:
// Song Difficulty (Ex: Milf Hard)
			
    trace('initiate');
    trace(curSong);

    //kadeEngineWatermark.borderSize = 1.25;
    //kadeEngineWatermark.screenCenter(FlxAxes.X);
}

function onPlayerHit(note:Note) {
    if(!note.isSustainNote){
        if(kadeEngineWatermarkTween != null) {
            kadeEngineWatermarkTween.cancel();
        }
        kadeEngineWatermark.scale.x = 1.075;
        kadeEngineWatermark.scale.y = 1.075;
        kadeEngineWatermarkTween = FlxTween.tween(kadeEngineWatermark.scale, {x: 1, y: 1}, 0.2, {
            onComplete: function(twn:FlxTween) {
                kadeEngineWatermarkTween = null;
            }
        });
    
    }
}