package aframe;

typedef SystemLifecycleHandler = {
    @:optional public function init():Void;
    @:optional public function tick(time:Float, timeDelta:Float):Void;
    @:optional public function pause():Void;
    @:optional public function play():Void;
}

typedef SystemDefinition = { >SystemLifecycleHandler,
    @:optional public var schema:Array<String>;
}

@:native("AFRAME.System")
extern class System {
    public var schema:Dynamic;
    public var data:Dynamic;
    public function init():Void;
    public function tick(time:Float, timeDelta:Float):Void;
    public function pause():Void;
    public function play():Void;
}