class _PrivateClass {
  final String name;
  final int age;

  _PrivateClass(this.name, this.age);
}

void main(List<String> args) {
  _PrivateClass private = _PrivateClass("Demet", 26);
  print(private.age);
  print(private.name);
}
