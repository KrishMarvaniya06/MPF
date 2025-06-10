import 'dart:io';
void main()
{
  int i=0,odd=0,even=0;
  List<int> m =[];
  int a=int.parse(stdin.readLineSync()!);
  for(i=0;i<a;i++)
  {
    m.add(int.parse(stdin.readLineSync()!));
  }
  print(m);
  for(i=0;i<a;i++)
    {
      if(m[i]%2==0)
        {
          even++;
        }
      else
        {
          odd++;
        }
    }
  print(odd);
  print(even);
}