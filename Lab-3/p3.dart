import 'dart:io';
class Friend
{
  String? name;
  int? age;
  Friend(this.name,this.age);
  void display()
  {
    print("name:$name");
    print("age:$age");
  }
}
void main()
{
  Map<String,Friend>friend =
  {
    "abc":Friend("abc",22),
    "kkk":Friend("kkk",23),
  };
  print("enter name:");
  String searchName=stdin.readLineSync()!;
  if(friend.containsKey(searchName)){
    print("friend found");
    Friend found = friend[searchName]!;
    found.display();
}
}