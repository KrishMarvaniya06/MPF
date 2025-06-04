import "dart:io";

void main()
{
  print("enter number");
  int number = int.parse(stdin.readLineSync()!);
  if(number>0)
  {
    print("Number is positive");
  }
  else
  {
    print("Number is Negitive");
  }
}