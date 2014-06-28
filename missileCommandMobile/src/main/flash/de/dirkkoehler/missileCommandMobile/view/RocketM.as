/**
 * Created with IntelliJ IDEA.
 * User: dkoehler
 * Date: 04.10.13
 * Time: 14:47
 * To change this template use File | Settings | File Templates.
 */
package de.dirkkoehler.missileCommandMobile.view
{
import de.dirkkoehler.missileCommandMobile.Game;
import de.dirkkoehler.missileCommandMobile.IGameObject;

public class RocketM
{
    private var view:IGameObjectV;

    public function RocketM(view:IGameObjectV)
    {
        Game.addGameObject(IGameObject(view));
    }
}
}
