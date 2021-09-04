class Logic {
  late String _text = "0";
  get text => _text;

  double _currentValue = 0;

  void input(String text) {
    if (_text == "0") {
      _currentValue = double.parse(text);
    } else {
      _currentValue = _currentValue * 10 + double.parse(text);
    }

    _text = _currentValue.toStringAsFixed(0);
  }
}
