
 class college {
  String? name ;
   String? rollNo;
  void stu_details(name ,rollNo){
    this.name = name;
    this.rollNo = rollNo;
  }

   void display( ){
     print("The student name:${name}");
     print("The student rollno: ${rollNo}");
     print("The result is passed");
   }
 }
 class result extends college {

  @override

  void stu_details(name,rollNo) {
    super.stu_details(name, rollNo);
  }

  @override
  void display() {
    print("The student name:${name}");
    print("The student rollno: ${rollNo}");
    print("The result is failed");

  }
 }
 void main(){

  college College = college();
  result Result = result();
   College.stu_details( "Ashu", "12344");
  Result.stu_details( "Happy", "44388");
  College.display() ;
  Result.display();
 }
