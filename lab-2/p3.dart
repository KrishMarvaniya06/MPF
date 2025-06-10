import 'dart:io';
void main()
{
  List<String> a=[];
  int n=int.parse(stdin.readLineSync()!);
  for(int i=0;i<n;i++)
  {
    a.add(stdin.readLineSync()!);
  }
  print(a);
}