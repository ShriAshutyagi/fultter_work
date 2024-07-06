
 abstract class Menuitem{
  String name;
  double price;
  String getdescription();
  Menuitem(this.name , this.price  );
}

class fooditem extends Menuitem {
  String description;
  fooditem(super.name , super.price ,this.description );
  @override
  String getdescription() {
    return description;
  }

}

class drinkitem extends Menuitem {
  String size;
  drinkitem(super.name , super.price , this.size );
  @override
  String getdescription() {
     return size;
  }}

   abstract class order  {

    void additem(Menuitem item);
    double gettotal();
    void printorder();

 }
  class resturantOrder extends order{
  List<Menuitem> Item = [];
  @override
  void additem(Menuitem item) {
    Item.add(item );
  }

  @override
  double gettotal() {
    double total = 0;
    for(Menuitem item in Item ){
      total +=  item.price;
    }
    return total;
  }

  @override
  void printorder() {
     for(Menuitem item in Item ){
         print( "item Name :: ${item.name } , item.price :: ${item.price } description :: ${item.getdescription() }");
     }
     print( "total amount :: ${gettotal().toString() } ");

  }
  }

void main(){
  Menuitem item1 = fooditem("Burger" , 40, "Spicy Burger");
  Menuitem item2 = fooditem("Momms" , 100, "Spicy Momms");
  Menuitem item3 = drinkitem( "coke", 20, "450 ml");

  order Order = resturantOrder();
  Order.additem( item1);
  Order.additem( item2);
  Order.additem( item3 );
  Order.printorder();
}










