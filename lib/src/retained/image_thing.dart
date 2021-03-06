part of bot_retained;

class ImageThing extends Thing {
  final ImageElement _image;

  bool _waitingOnLoad = false;

  factory ImageThing.fromUrl(String src, num w, num h) {
    final img = new ImageElement(src: src);

    return new ImageThing(w, h, img);
  }

  ImageThing(num width, num height, this._image) :
    super(width, height);

  void drawOverride(CanvasRenderingContext2D ctx) {
    if(_image.complete) {
      _doDraw(ctx);
    } else if(!_waitingOnLoad) {
      _waitingOnLoad = true;
      // TODO: some day we'll have a way to remove these cleanly
      //       ...because this handled should be disposed :-/
      _image.on.load.add(_onImageLoad);
    }
  }

  void _doDraw(CanvasRenderingContext2D ctx) {
    ctx.drawImage(_image, 0, 0, width, height);
  }

  void _onImageLoad(Event event) {
    invalidateDraw();
    // TODO: should unwire event, here, too
  }
}
