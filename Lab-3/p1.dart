import 'dart:io';

class Candidate {
  int? Candidate_ID;
  String? Candidate_Name;
  int? Candidate_Age;
  double? Candidate_Weight;
  double? Candidate_Height;

  void getCandidateDetail()
  {
    print("Enter Id :");
    Candidate_ID = int.parse(stdin.readLineSync()!);
    print("Enter name :");
    Candidate_Name = stdin.readLineSync()!;
    print("Enter age :");
    Candidate_Age = int.parse(stdin.readLineSync()!);
    print("Enter weight :");
    Candidate_Weight = double.parse(stdin.readLineSync()!);
    print("Enter height :");
    Candidate_Height = double.parse(stdin.readLineSync()!);
  }
  void DisplayCandidateDetail()
  {
    print('User of id - $Candidate_ID');
    print('User of name - $Candidate_Name');
    print('User of age - $Candidate_Age');
    print('User of weight - $Candidate_Weight');
    print('User of height - $Candidate_Height');
  }
}
void main()
{
  Candidate can = Candidate();
  can.getCandidateDetail();
  can.DisplayCandidateDetail();
}