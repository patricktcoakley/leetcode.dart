import 'package:leetcode/leetcode.dart';
import 'package:test/test.dart';

void main() {
  test('example 1', () {
    var expected = true;
    expect(isSubsequence('abc', 'ahbgdc'), expected);
  });

  test('example 2', () {
    var expected = false;
    expect(isSubsequence('axc', 'ahbgdc'), expected);
  });
}
