package aframe;

@:native("AFRAME.ANode")
extern class ANode extends js.html.Element {
    public function closestScene():AScene;
    public function emit(name:String, detail:Dynamic, bubbles:Bool = true):Void;
    public function emitter(name:String, detail:Dynamic, bubbles:Bool = true):Void->Void;
}