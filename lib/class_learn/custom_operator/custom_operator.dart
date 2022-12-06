class MoneyBank {
   int money;
   String name;
  MoneyBank({this.money=0, this.name = ""});

  int operator +(MoneyBank bank) {
    return money + bank.money;
  }
}

void main(List<String> args) {
  print(MoneyBank(money: 100) + MoneyBank(money:30));
  MoneyBank moneyBank = MoneyBank();
  moneyBank
    ..name = ""
    ..money;
}
