import 'dart:io';

class McqQuestion {

  String? question;
  List<String> options = [];
  String? rightanswer;

  void display(){
    print(question );
    for(var i in options ){
      print (i);
    }
  }
  bool iscorrect (String answer){
    return rightanswer!.toLowerCase()  == answer.toLowerCase() ;
  }
  McqQuestion(this.question , this.options , this.rightanswer );
}

void main(){
  int coorect = 0;

   List<McqQuestion > list = [
      McqQuestion( "What is your Name", ["Ashu","Happy","Nitin","Rajesh"], "Ashu"),
     McqQuestion( "What is your age", ["33","48","21","24"], "24"),
     McqQuestion( "Where are you working", ["Sonipat","Panipat","Karnal","Kuk"], "Sonipat"),
     McqQuestion( "How are you", ["Good","Bad","Medium"], "Good"),
   ];
  int totalQuestion = list.length;
  for(McqQuestion i in list  ){
      i.display();
      print( "enter your answer");
      String reply = stdin.readLineSync()!;
      if(i.iscorrect( reply)){
        coorect++;
      }else{
        print( "Right Answer of this question is ${i.rightanswer }");
      }
    }
     double percantage = (coorect/totalQuestion )*100;
    if(percantage >= 90 ){
      print( "excellent");
    }
   else if(percantage >= 80 ){
     print( "A+");
    }
 else  if(percantage >= 70 ){
      print( "B+");
    }
 else  if(percantage >= 60 ){
      print( "AB+");
    }
 else if(percantage >= 50 ){
      print( "D+");
    }

}