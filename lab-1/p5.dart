import "dart:io";

void main()
{
  print("enter n1:");
  int n1 = int.parse(stdin.readLineSync()!);
  print("enter n2:");
  int n2 = int.parse(stdin.readLineSync()!);
  print("Enetr Operator:");
  int op = int.parse(stdin.readLineSync()!);
  switch(op)
  {
      case 1:
      print(n1+n2);
      break;

      case 2:
      print(n1-n2);
      break;

      case 3:
      print(n1*n2);
      break;

      case 4:
      print(n1/n2);
      break;

      case 5:
      print(n1%n2);
      break;
  }
}