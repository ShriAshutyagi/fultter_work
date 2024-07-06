void main() {

  int a = 25;
  int b = 252;
  List< int> value = [];
  List< int > number = [];

  print('Factor of $a number');
  for (int c = 1; c <= a ; c++){
    if( a%c == 0){
      value.add( c);

    }
  }
  print(value );
  print('Factor of $b number');
  for (int c = 1; c <= b ; c++){
    if( b%c == 0){
      number.add(c);

    }
  }
  print(number  );


}