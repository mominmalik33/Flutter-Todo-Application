class MyTasks{
  MyTasks({this.title,this.check=false});
  String title;
  bool check;

  void workDone(){
    check=!check;
  }

}