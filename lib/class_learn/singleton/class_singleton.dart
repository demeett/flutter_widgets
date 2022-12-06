class Product {
  static int money = 10;
  static void updateMoney(int newMoney) {
    money += newMoney;
  }
}

void main(List<String> args) {
  print(Product.money);
  Product.updateMoney(10);
  print(Product.money); 
}
