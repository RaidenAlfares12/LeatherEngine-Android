package utilities;

import flixel.FlxG;
import game.Highscore;

class SaveData {
    public static function init() {
        FlxG.save.bind('leathersfunkinengine', 'leather128');

        if (FlxG.save.data.enemyGlow == null)
            FlxG.save.data.enemyGlow = true;

        if (FlxG.save.data.fpsCounter == null)
            FlxG.save.data.fpsCounter = true;

        if (FlxG.save.data.memoryCounter == null)
            FlxG.save.data.memoryCounter = true;

        if (FlxG.save.data.leftBind == null)
            FlxG.save.data.leftBind = "A";

        if (FlxG.save.data.downBind == null)
            FlxG.save.data.downBind = "S";

        if (FlxG.save.data.upBind == null)
            FlxG.save.data.upBind = "W";

        if (FlxG.save.data.rightBind == null)
            FlxG.save.data.rightBind = "D";

        if (FlxG.save.data.killBind == null)
            FlxG.save.data.killBind = "R";

        PlayerSettings.init();
        PlayerSettings.player1.controls.loadKeyBinds();
        
        Highscore.load();

        FlxG.save.flush();
    }
}