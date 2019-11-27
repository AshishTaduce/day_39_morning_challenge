import 'package:test/test.dart';
import '../bin/main.dart';

void main() {
  test('Test Case 1', () {
    expect(possibleMoves([[3,4],[1,2],[]]), [[[1, 4], [2], [3]], [[1, 4], [2], [3]], [[1, 4], [2], [3]], [[1, 4], [2], [3]]]);

    expect(possibleMoves([[3,4],[1,2],[]]), [[[1, 4], [2], [3]], [[1, 4], [2], [3]], [[1, 4], [2], [3]], [[1, 4], [2], [3]]]);
  });
}
