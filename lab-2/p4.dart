import 'dart:io';
void main()
{
  List<double> a=[];
  double sum=0;
  int b=int.parse(stdin.readLineSync()!);
  for(int i=0;i<b;i++)
  {
    a.add(double.parse(stdin.readLineSync()!));
  }
  for (int i=0;i<b;i++)
  {
    sum+=a[i];
  }
  print(a);
  print(sum.toStringAsFixed(2));
}