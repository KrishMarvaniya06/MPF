import 'dart:io';
void main()
{
  List<int> a=[];
  int n=int.parse(stdin.readLineSync()!);
  for(int i=0;i<n;i++)
  {
    a.add(int.parse(stdin.readLineSync()!));
  }
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (a[j] > a[j + 1]) {
        int temp = a[j];
        a[j] = a[j + 1];
        a[j + 1] = temp;
      }
    }
  }
  print(a);
}