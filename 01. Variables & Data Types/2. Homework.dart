// ==============================================
// LESSON 1 — HOMEWORK
// ==============================================

void main() {
  task1();
  task2();
  task3();
  task4();
  task5();
}

// ==============================================
// TASK 1 — Profile card
// ==============================================

/*
  USE:    String, int, double, bool
          5 variables, one type used twice
          5 separate print() calls

  STEPS:  1. declare 5 variables about yourself
          2. print each one on its OWN line, with a label

  OUTPUT: (5 separate lines)

  Name: Davron
  Age: 25
  Height: 1.81
  City: Tashkent
  Learning Flutter: true
*/

void task1() {
  String name = 'Davron';
  int age = 25;
  double height = 1.81;
  String city = "Tashkent";
  bool isLearningFlutter = true;

  print('Name: $name');
  print('Age: $age');
  print('Height: $height');
  print('City: $city');
  print('Learning Flutter: $isLearningFlutter');
}

// ==============================================
// TASK 2 — One sentence
// ==============================================

/*
  USE:    the same 5 variables
          string interpolation  $name  and  ${...}
          NO + allowed
          1 print() call

  STEPS:  1. declare the same 5 variables
          2. print ONE sentence containing all 5 values

  OUTPUT: (1 line)

  Davron is 25 years old, 1.81 m tall, lives in Tashkent, learning Flutter: true
*/

void task2() {
  String name = 'Davron';
  int age = 25;
  double height = 1.81;
  String city = 'Tashkent';
  bool isLearningFlutter = true;

  print('$name is $age years old, $height m tall, lives in $city, learning Flutter: $isLearningFlutter');
}

// ==============================================
// TASK 3 — Order total
// ==============================================

/*
  GIVEN:  price per portion = 45000
          portions          = 3
          VAT               = 12%

  USE:    int for price and portions
          double for vat
          * and +
          store each result in its OWN variable (do not repeat the calculation)
          3 separate print() calls

  STEPS:  1. declare pricePerPortion, portions, vat
          2. subtotal  = pricePerPortion * portions
          3. vatAmount = subtotal * vat
          4. total     = subtotal + vatAmount
          5. print three lines

  OUTPUT: (3 separate lines)

  Subtotal: 135000
  VAT (12%): 16200.0
  Total: 151200.0

  NOTE:   Subtotal has NO .0  -> int * int = int
          VAT and Total HAVE .0  -> once a double joins in, the result is a double
*/

void task3() {
  int perportion = 45000;
  int portions = 3;
  double vat = 0.12;
  int subtotal = perportion * portions;
  double vatAmount = subtotal * vat;
  double total = subtotal + vatAmount;
  print('Subtotal: $subtotal');
  print('VAT (12%): $vatAmount');
  print('Total: $total');
}

// ==============================================
// TASK 4 — Break it
// ==============================================

/*
  USE:    all four data types

  STEPS:  1. write 5 lines that each cause a DIFFERENT error
          2. comment each line out
          3. write the error message underneath it

  OUTPUT: nothing runs. These are compile errors.
*/

void task4() {
  // int guests = 204.5;
  // A value of type 'double' can't be assigned to a variable of type 'int'.

  // String age = 25;
  // A value of type 'int' can't be assigned to a variable of type 'String'.

  // double price = 'Davron';
  // A value of type 'String' can't be assigned to a variable of type 'double'.

  // bool isWorking = 12;
  // A value of type 'int' can't be assigned to a variable of type 'bool'.

  // String percentage = false;
  // A value of type 'bool' can't be assigned to a variable of type 'String'.
}

// ==============================================
// TASK 5 — Text to number
// ==============================================

/*
  GIVEN:  String priceText  = '360000';    <- six zeros, check it
          String guestsText = '204';

  USE:    int.parse()     text  -> number
          *               multiply
          .toString()     number -> text
          .length         how many characters
          2 print() calls

  STEPS:  1. declare priceText and guestsText as Strings
          2. convert both to int with int.parse()
          3. multiply them, store in a variable
          4. print the first line
          5. turn that number into text with .toString(), store it
          6. print .length of that text

  OUTPUT: (2 separate lines)

  Venue cost: 73440000 so'm
  Characters: 8

  HINT:   int total = 73440000;
          String asText = total.toString();   // '73440000'
          print(asText.length);               // 8
*/

void task5() {
  String price = '360000';
  String guests = '204';
  int amount = int.parse(price);
  int guest = int.parse(guests);
  int total = amount * guest;
  String asText = total.toString();

  print("Venue cost: $total so'm");
  print('Characters: ${asText.length}');
}
