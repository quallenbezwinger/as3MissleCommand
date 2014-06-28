/**
 * Created with IntelliJ IDEA.
 * User: dkoehler
 * Date: 02.10.13
 * Time: 11:25
 * To change this template use File | Settings | File Templates.
 */
package de.dirkkoehler.missileCommandMobile
{
import de.dirkkoehler.missileCommandMobile.scenes.LevelSceneM;
import de.dirkkoehler.missileCommandMobile.scenes.LevelSceneV;

import flash.utils.getTimer;

import starling.display.Sprite;
import starling.events.EnterFrameEvent;

public class Game extends Sprite
{
    private static var gObjects:Vector.<IGameObject> = new Vector.<IGameObject>();
    private var deltaTime:Number;
    private var delta:Number;
    private var preFrameTime:Number;
    private var calculatedMillisecPerFrame:Number;

    public function Game()
    {
        super();
        calculatedMillisecPerFrame = 1000/GameGlobals.frameRate;
    }

    public static function addGameObject(gObj:IGameObject):void
    {
        gObjects.push(gObj);
    }

    public function start():void
    {
        this.addEventListener(EnterFrameEvent.ENTER_FRAME, handleEnterFrame);
        LevelSceneM.mapView(LevelSceneV);
        addChild(LevelSceneM.createView("level1"));
    }

    private function handleEnterFrame(event:EnterFrameEvent):void
    {
        deltaTime = getTimer() - preFrameTime;
        delta = (calculatedMillisecPerFrame/deltaTime);
        preFrameTime = getTimer();
        for (var i:int = 0; i < gObjects.length; i++)
        {
            gObjects[i].update(deltaTime, delta);
        }
    }
}
}
