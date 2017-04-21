package aframe;

@:native("AFRAME")
extern class AFRAME {
    static public var components:Dynamic;
    static public var geometries:Dynamic;
    static public var primitives:Dynamic;
    static public function registerComponent(name:String, definition:Dynamic):Void;
    static public function registerElement(name:String, definition:Dynamic):Void;
    static public function registerGeometry(name:String, definition:Dynamic):Void;
    static public function registerPrimitive(name:String, definition:Dynamic):Void;
    static public function registerShader(name:String, definition:Dynamic):Void;
    static public var schema:Dynamic;
    static public var shaders:Dynamic;
    static public var systems:Dynamic;
    static public var THREE:Dynamic;
    static public var TWEEN:Dynamic;
    inline static public var utils = Utils;
    static public var version:Dynamic;
}