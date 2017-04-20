import js.Browser.*;
import aframe.*;

class Index {
    static function main():Void {
        var cubeEl:Entity;
        var sceneEl = document.querySelector('a-scene');
        var x = -90;
        var z = -10;
        var parentEl = document.createElement('a-entity');
        for (i in 0...400) {
            for (j in 0...10) {
                cubeEl = cast document.createElement('a-entity');
                
                cubeEl.setAttribute('mixin', 'cube');
                cubeEl.setAttribute('position', { x: x, y: 0, z: z});
                x += 20;
                sceneEl.appendChild(cubeEl);
            }
            x = -90;
            z -= 20;
        }
    }
}