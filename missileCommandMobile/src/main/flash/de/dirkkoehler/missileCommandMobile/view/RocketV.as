/**
 * Created with IntelliJ IDEA.
 * User: dkoehler
 * Date: 04.10.13
 * Time: 14:42
 * To change this template use File | Settings | File Templates.
 */
package de.dirkkoehler.missileCommandMobile.view
{
import de.dirkkoehler.missileCommandMobile.GameGlobals;

import flash.display.BitmapData;

import starling.display.Image;
import starling.textures.Texture;

public class RocketV extends Image implements IGameObjectV
{
    // speed in px/sec
    private var _speed:int = 50;
    public function RocketV()
    {
        var nBox:flash.display.Sprite = new flash.display.Sprite();
        nBox.graphics.beginFill(0x000000, 1);
        nBox.graphics.drawRect(0, 0, 50, 50);
        nBox.graphics.endFill();
        var nBMP_D:BitmapData = new BitmapData(50, 50, true, 0x00000000);
        nBMP_D.draw(nBox);
        var nTxtr:Texture = Texture.fromBitmapData(nBMP_D, false, false);
        super(nTxtr);
    }

    public function update(deltaTime:Number,delta:Number):void
    {
        trace("dt "+deltaTime);
        trace("progress "+int(_speed /(1000/deltaTime)));
        this.y += (_speed /(1000/deltaTime));
    }
}
}
