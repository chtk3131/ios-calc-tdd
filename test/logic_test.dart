import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:tdd/logic.dart';

void main() {
  late Logic logic;

  setUp(() {
    logic = Logic();
  });

  test("そのまま出力", () {
    logic.input("1");

    expect(logic.text, "1");
  });

  test("2をそのまま出力するシナリオ", () {
    logic.input("2");
    expect(logic.text, "2");
  });

  test("連続入力のテスト", () {
    // 初期化したときは何も入っていないはず
    expect(logic.text, "0");

    // 1,2を順番に入力したと仮定
    logic.input("1");
    expect(logic.text, "1");
    logic.input("2");
    // "12"になっていてほしい
    expect(logic.text, "12");
  });
}
