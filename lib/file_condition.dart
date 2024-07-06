

abstract class MenuItem {
  String?  name;
  double?  price;
  String getDescription();
}

//food item class
class FoodItem extends MenuItem {
   String? name;
   double? price;
   String? description;

  FoodItem({this.name, this.price, this.description});

  @override
  String getDescription() {
    return description!;
  }
}

///drink item class

class DrinkItem extends MenuItem {
  String? name;
  double? price;
  String size;
  DrinkItem({required this.name, required this.price, required this.size});
  @override
  String getDescription() {
    return "$size";
  }
}

///order class

abstract class Order {
  void addItem(MenuItem item);
  void removeItem(MenuItem item);
  void printOrder();
  double getTotal();
}

//now order class used in other class

class ResturentOrder extends Order {
  //used list and list type is MenuItem
  List<MenuItem> _items = [];
  //first function used additem
  @override
  void addItem(MenuItem item) {
    _items.add(item);
  }

  //used second function remove item
  @override
  void removeItem(MenuItem item) {
    _items.add(item);
  }

  @override
  double getTotal() {
    double total = 0;
    for (var item in _items) {
      total += item.price!;
    }
    return total;
  }

  @override
  void printOrder() {
    print('order detail');
    for (var item in _items) {
      print(
          "${item.name} \$${item.price!.toStringAsFixed(3)}-${item.getDescription()}");
    }
    print('${getTotal().toStringAsFixed(3)}');
  }
}

void main() {
  MenuItem burger =
  FoodItem(name: 'burger', price: 699.0, description: 'spicy burger');
  MenuItem fries =
  FoodItem(name: 'fries', price: 799.0, description: 'yummy burger');
  MenuItem drink =
  FoodItem(name: 'drink', price: 999.0, description: 'cool drink');

  Order order = ResturentOrder();
  order.addItem(burger);
  order.addItem(fries);
  order.addItem(drink);
  order.printOrder();
}

