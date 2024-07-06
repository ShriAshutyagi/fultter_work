import 'dart:math';

/// polymorphism//
/// throtical part of polymorphism
/// what is polymorphism
/// simple word m dekhe
/// process of creating many forms ..
/// two types of polymorphism
/// 1. method overloding
/// 2. method overriding
/// dart not support method overloding
/// dart support only method overrriding
/// method overriding kya hota h
/// inherit ki gyi class m method ki current defination ko change kr new defination dena method overriding hota h ..
/// isko run time polymorphism bhi bolte h
/// @Override keyword ka use krte h
/// aur method ki defination ko change kr dete h
///  yhi h polymorphism
///  ek example ke through isko dekthe h
///
class Process {
  int add(int a, int b) {
    int sum = a + b;
    return sum;
  }
}

class Excute extends Process {
  @override
  int add(int a, int b) {
    int sum = super.add(a, b);
    int sqr = pow(sum, 2).toInt();
    return sqr;
  }
}

main() {
  Process process = Process();
  Excute excute = Excute();
  int sum = process.add(100, 200);
  int sqr = excute.add(100, 200);
  print("$sum \n$sqr");
  double a = 100/100;
  print(a);
}

/// method ki defination ko change krna yhi h method overloading;
/// Run time polymorphism bhi bola jata h;
/// because run time pe change ho rhi h value;
 /// Well done for this excute program;
