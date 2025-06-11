import 'dart:io';

class Animal
{
  void animalSound()
  {
    print('unkome');
  }
}
class Cat extends Animal
{
  void animalSound()
  {
    print('Meow Meow');
  }
}
void main()
{
  Cat c = Cat();
  Animal a = Animal();
  c.animalSound();
  a.animalSound();
}