import "dart:io";

void main()
{
  print("enter height");
  int height = int.parse(stdin.readLineSync()!);
  print("enter weight");
  int weight = int.parse(stdin.readLineSync()!);
  double newheight=height*0.0254;
  double newweight=weight*0.45359237;
  double bmi=newweight/(newheight*newheight);
  print("your bmi is:$bmi");
}