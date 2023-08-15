class First {
  late int hello;
}

class Second extends First {
  void appelHello() {
    hello = 1;
    First f = First();
    f.hello = 1;
  }
}

abstract class Fa {
  printHell();
  int all = 0;
}

class Fb extends Fa {
  @override
  printHell() {
    // TODO: implement printHell
    // throw UnimplementedError();
    all = 1;
  }
}
