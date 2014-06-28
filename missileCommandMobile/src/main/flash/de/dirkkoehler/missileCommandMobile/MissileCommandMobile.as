package de.dirkkoehler.missileCommandMobile
{
import flash.display.Sprite;
import flash.geom.Rectangle;
import flash.system.Capabilities;

import starling.core.Starling;
import starling.events.Event;
import starling.utils.RectangleUtil;
import starling.utils.ScaleMode;

public class MissileCommandMobile extends Sprite
{
    private var mStarling:Starling;

    public function MissileCommandMobile()
    {
        stage.frameRate = GameGlobals.frameRate;
        var iOS:Boolean = Capabilities.manufacturer.indexOf("iOS") != -1;
        //TODO: wtf??? manual params are equal to fullscreenparams
        var viewPort:Rectangle = RectangleUtil.fit(
                new Rectangle(0, 0, 480, 800),
                new Rectangle(0, 0, stage.fullScreenWidth, stage.fullScreenHeight),
                ScaleMode.SHOW_ALL, iOS);
        mStarling = new Starling(Game, stage, viewPort);
        mStarling.addEventListener(Event.ROOT_CREATED, handelRootCreated);
    }

    private function handelRootCreated():void
    {
        GameGlobals.appHeight = stage.fullScreenHeight;
        GameGlobals.appWidth = stage.fullScreenWidth;
        var game:Game = mStarling.root as Game;
        game.start();
        mStarling.start();
    }
}
}
