package aframe;

@:enum abstract PropertyType(String) to String from String {
    var array = "array";
    var asset = "asset";
    var audio = "audio";
    var boolean = "boolean";
    var color = "color";
    var int = "int";
    var map = "map";
    var model = "model";
    var number = "number";
    var selector = "selector";
    var selectorAll = "selectorAll";
    var string = "string";
    var vec2 = "vec2";
    var vec3 = "vec3";
    var vec4 = "vec4";
}

typedef LifecycleHandler = {
    @:optional public function init():Void;
    @:optional public function update(oldData:Dynamic):Void;
    @:optional public function remove():Void;
    @:optional public function tick(time:Float, timeDelta:Float):Void;
    @:optional public function pause():Void;
    @:optional public function play():Void;
    @:optional public function updateSchema(data:Dynamic):Void;
}

typedef AComponentDefinition = { >LifecycleHandler,
    @:optional public var dependencies:Array<String>;
    @:optional public var multiple:Bool;
}

@:native("AFRAME.AComponent")
extern class AComponent implements Dynamic {
    public var data:Dynamic;
    public var el:AEntity;
    public var id:Null<String>;
    public function flushToDOM():Void;
}