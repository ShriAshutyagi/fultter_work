import 'dart:io';

abstract class Item {
  String name ;
  double price;
  Item(this.name, this.price);
}

class FoodItem extends Item {
  String cuisne;

  FoodItem(super.name, super.price, this.cuisne);

  String toString() {
    return "$name == \$${price.toStringAsFixed(2)}Cuisne:- $cuisne";
  }
}

class Deliveryservices {
  String name;
  List<Item> items = [];
  Deliveryservices(this.name);
  void addItem(Item item) {
    items.add(item);
  }

  void displayMenu() {
    print("here is menu $name");
    items.forEach((item) {
      print(item);
    });
  }

  void orderItem(int index) {
    if (index >= 0 && index < items.length) {
      print("your order ${items[index].name}");
    } else {
      print("invalid index");
    }
  }
}

void main() {
  Deliveryservices deliveryservices = Deliveryservices('fastFoodDelivery');
  deliveryservices.addItem(FoodItem("burger", 777, 'gril pizza'));
  deliveryservices.addItem(FoodItem("burger", 777, 'gril pizza'));
  deliveryservices.addItem(FoodItem("frish", 555, 'Maxico fish'));
  deliveryservices.displayMenu();
  print("enter the index of the item want to order");
  int index = int.parse(stdin.readLineSync()!);
  deliveryservices.orderItem(index);
}
