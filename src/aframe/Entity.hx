package aframe;

import js.three.Object3D;
import js.three.Group;

extern class Entity extends js.html.Element {
    public var components:Dynamic<Component>;
    public var isPlaying:Bool;
    public var object3D:Group;
    public var object3DMap:Dynamic<Object3D>;
    public var sceneEl:Scene;

    public function addState(stateName:String):Void;

    public function emit(name:String, detail:Dynamic, bubbles:Bool = true):Void;

    public function flushToDOM(recursive:Bool):Void;

    @:overload(function(componentName:String):Dynamic {}) //This doesn't work...
    override public function getAttribute(componentName:String):String;

    public function getDOMAttribute(componentName:String):Dynamic;

    public function getObject3D<T:Object3D>(type:String):T;

    public function getOrCreateObject3D<T:Object3D>(type:String, constructor:Dynamic):T;

    public function pause():Void;

    public function play():Void;

    @:overload(function(component:String, property:String, value:Dynamic):Void {})
    override public function setAttribute(attr:String, value:Dynamic):Void;

    public function setObject3D(type:String, obj:Object3D):Void;

    @:overload(function(attr:String, propertyName:String):Void {})
    override public function removeAttribute(attr:String):Void;

    public function removeObject3D(type:String):Void;

    public function removeState(stateName:String):Void;
}