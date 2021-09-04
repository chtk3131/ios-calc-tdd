class Logic {
  late String _text = "0";
  get text => _text;

  double _currentValue = 0;

  void input(String text) {
    if (_text == "0") {
      _text = text;
      _currentValue = double.parse(_text);
    } else {
      _text += text;
      _currentValue = _currentValue * 10 + double.parse(_text);
    }
  }
}
