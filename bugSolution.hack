function foo(x: int, accumulator: int = 1): int {
  if (x == 0) {
    return accumulator;
  } else {
    return foo(x - 1, x * accumulator);
  }
}

function bar(): void {
  echo foo(5);
}

//This version uses tail recursion, which avoids stack overflow errors.