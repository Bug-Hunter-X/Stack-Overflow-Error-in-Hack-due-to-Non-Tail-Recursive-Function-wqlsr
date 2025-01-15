function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function bar(): void {
  echo foo(5);
}

//This program is supposed to calculate the factorial of 5, but it does not work because the recursive call to foo is not tail-recursive.  This will result in a stack overflow error. In Hack, tail recursion is not automatically optimized.