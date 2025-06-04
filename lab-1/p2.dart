import "dart:io";

void main()
{
  print("maths");
  int maths = int.parse(stdin.readLineSync()!);
  print("ss");
  int ss = int.parse(stdin.readLineSync()!);
  print("english");
  int english = int.parse(stdin.readLineSync()!);
  print("c");
  int c = int.parse(stdin.readLineSync()!);
  print("java");
  int java = int.parse(stdin.readLineSync()!);
  var avg=(maths+ss+english+c+java)/5;
  print("average is:$avg");
  var per=((maths+ss+english+c+java)/500)*100;
  print("percentage is:$per");
}