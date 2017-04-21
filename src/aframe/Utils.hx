package aframe;

import haxe.extern.*;
import haxe.Constraints;

@:native("AFRAME.utils")
extern class Utils {
    static public function isCoordinate(value:String):Bool;

    static public function parse(value:String):Dynamic;

    static public function stringify(data:Dynamic):String;

    static public var entity:{
        public function getComponentProperty(entity:AEntity, componentName:String, ?delimiter:String):Dynamic;
        public function setComponentProperty(entity:AEntity, componentName:String, value:Dynamic, ?delimiter:String):Void;
    };

    static public var styleParser:{
        public function parse(value:String):Dynamic;
        public function stringify(data:Dynamic):String;
    };

    static public function deepEqual<T>(a:T, b:T):Bool;

    static public function diff(a:Dynamic, b:Dynamic):Dynamic;

    static public function extend(target:Dynamic, source:Dynamic, sources:Rest<Dynamic>):Dynamic;

    static public function extendDeep(target:Dynamic, source:Dynamic, sources:Rest<Dynamic>):Dynamic;

    static public var device:{
        public function checkHasPositionalTracking():Bool;
        public function checkHeadsetConnected():Bool;
        public function isGearVR():Bool;
        public function isMobile():Bool;
    };

    static public function throttle(func:Function, interval:Float, ?optionalContext:Dynamic):Function;

    static public function throttleTick<T>(func:Float->Float->T, interval:Float, ?optionalContext:Dynamic):Float->Float->T;
}