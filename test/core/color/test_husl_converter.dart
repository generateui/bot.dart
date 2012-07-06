class TestHuslConverter {
  static void run() {
    group('HuslConverter', () {
      solo_test('round trip', _testRoundTrip);
    });

  }

  static void _testRoundTrip() {
    var testColors = [
                      new RgbColor(1,1,1),
                      new RgbColor(100,99,98),
                      new RgbColor(255,255,255)];

    for(final rgb in testColors) {
      print(rgb);

      var hsl = HuslConverter.RGBtoHUSL(rgb);

      print(hsl);

      var back = HuslConverter.HUSLtoRGB(hsl);

      print(back);
    }
  }

}
