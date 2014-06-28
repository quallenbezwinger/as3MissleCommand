/**
 * Created with IntelliJ IDEA.
 * User: dkoehler
 * Date: 02.10.13
 * Time: 11:21
 * To change this template use File | Settings | File Templates.
 */
package de.dirkkoehler.missileCommandMobile.scenes
{
import flash.utils.Dictionary;

import starling.display.DisplayObject;

public class LevelSceneM
{
    private static var _viewClass:Class;

    private static var _views:Dictionary = new Dictionary();

    private var _viewIndex:String;

    public function LevelSceneM(viewIndex:String)
    {
       _viewIndex = viewIndex;
    }

    public static function createView(viewIndex:String):DisplayObject
    {
       var tmpView:DisplayObject =  _views[new LevelSceneM(viewIndex)] = new _viewClass();
       return tmpView;
    }

    public static function mapView(viewClass:Class):void
    {
        _viewClass = viewClass;
    }

    public function get viewIndex():String
    {
        return _viewIndex;
    }
}
}
