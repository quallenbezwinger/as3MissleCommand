/**
 * Created with IntelliJ IDEA.
 * User: dkoehler
 * Date: 02.10.13
 * Time: 11:20
 * To change this template use File | Settings | File Templates.
 */
package de.dirkkoehler.missileCommandMobile.scenes
{
import de.dirkkoehler.missileCommandMobile.GameGlobals;
import de.dirkkoehler.missileCommandMobile.view.RocketM;
import de.dirkkoehler.missileCommandMobile.view.RocketV;

import flash.display.BitmapData;

import starling.display.Image;
import starling.display.Sprite;
import starling.events.Event;
import starling.textures.Texture;

public class LevelSceneV extends Sprite
{
    public function LevelSceneV()
    {
        this.addEventListener(Event.ADDED_TO_STAGE, handleAddedToStage);
    }

    private function handleAddedToStage(event:Event):void
    {
        this.removeEventListener(Event.ADDED_TO_STAGE, handleAddedToStage);
        var nBox:flash.display.Sprite = new flash.display.Sprite();
        nBox.graphics.beginFill(0x000000, 1);
        nBox.graphics.drawRect(0, 0, 50, 50);
        nBox.graphics.endFill();
        var nBMP_D:BitmapData = new BitmapData(50, 50, true, 0x00000000);
        nBMP_D.draw(nBox);
        var nTxtr:Texture = Texture.fromBitmapData(nBMP_D, false, false);
        var testImage1:Image = new Image(nTxtr);
        testImage1.y = GameGlobals.appHeight - testImage1.height;
        addChild(testImage1);
        var testImage2:Image = new Image(nTxtr);
        testImage2.y = GameGlobals.appHeight - testImage2.height;
        testImage2.x = 100;
        addChild(testImage2);
        var rocket:RocketV = new RocketV();
        new RocketM(rocket);
        addChild(rocket);
    }
}
}
