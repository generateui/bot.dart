class RgbColor {
  final int r, g, b;

  const RgbColor._internal(this.r, this.g, this.b);

  factory RgbColor(num r, num g, num b) {
    r = r.toInt();
    _validateComponent(r, 'r');
    g = g.toInt();
    _validateComponent(g, 'g');
    b = b.toInt();
    _validateComponent(b, 'b');

    return new RgbColor._internal(r, g, b);
  }

  static void _validateComponent(int c, String name) {
    requireArgument(isValidNumber(c), name);
    requireArgument(c >= 0 && c <= 255, name);
  }

  bool operator ==(RgbColor other) {
    return other !== null && other.r == r && other.g == g && other.b == b;
  }

  String toString() => '{RgbColor: $r, $g, $b}';
}

class HslColor {
  final num h, s, l;

  const HslColor._internal(this.h, this.s, this.l);

  factory HslColor(num h, num s, num l) {
    requireArgument(isValidNumber(h), 'h');
    h = (h % 360);

    print(s);
    requireArgument(isValidNumber(s), 's');
    requireArgument(s >= 0 && s <= 1, 's');
    requireArgument(isValidNumber(s), 'l');
    requireArgument(s >= 0 && s <= 1, 'l');

    return new HslColor._internal(h, s, l);
  }

  bool operator ==(HslColor other) {
    return other !== null && other.h == h && other.s == s && other.l == l;
  }

  String toString() => '{HslColor: $h, $s, $l}';
}
