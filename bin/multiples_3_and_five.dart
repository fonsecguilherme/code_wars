import 'package:test/test.dart';

/*
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in. Additionally,
if the number is negative, return 0 (for languages that do have them).

Note: If the number is a multiple of both 3 and 5, only count it once.
 */

int solution(int n) {
  Set<int> numbers = {};

  if (n < 0) {
    return 0;
  } else {
    for (var i = 0; i < n; i++) {
      if (i % 3 == 0) {
        numbers.add(i);
      }
    }

    for (var i = 0; i < n; i++) {
      if (i % 5 == 0) {
        numbers.add(i);
      }
    }

    return numbers.reduce((value, element) => value + element);
  }
}

void tester(int n, int exp) =>
    test("Testing for $n", () => expect(solution(n), equals(exp)));
void main() {
  group("Basic tests", () {
    tester(10, 23);
    tester(20, 78);
    tester(200, 9168);
    tester(1, 0);
    tester(2, 0);
    tester(3, 0);
  });
}
