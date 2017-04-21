package aframe;

@:native("AFRAME.AScene")
extern class AScene extends AEntity {
    public var behaviors:Array<AComponent>;
    public var camera:AComponent;
    public var canvas:js.html.CanvasElement;
    public var isMobile:Bool;
    // override public var object3D:js.three.Scene;
    public var renderer:js.three.WebGLRenderer;
    public var renderStarted:Bool;
    public var effect:Dynamic;
    public var systems:Dynamic;
    public var time:Float;

    public function enterVR():Void;
    public function exitVR():Void;
    public function reload():Void;
}