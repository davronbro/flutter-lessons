// ==============================================
// LESSON 3 — HOMEWORK
// Operators and Strings
// ==============================================

void main() {
  task1();
  task2();
  task3();
  task4();
  task5();
}

// ==============================================
// TASK 1 — Can this order go through?
// ==============================================

/*
  GIVEN:  total             = 85000
          minimum order     = 50000
          free delivery at  = 100000
 
  USE:    >=  ==
          3 print() calls with a label
 
  STEPS:  1. declare the three values
          2. print: is total at least the minimum?
          3. print: is total at least the free-delivery amount?
          4. print: is total exactly the minimum?
 
  OUTPUT: (3 lines)
 
  Above minimum: true
  Free delivery: false
  Exactly minimum: false
*/

void task1() {
  int total = 85000;
  int minimumOrder = 50000;
  int freeDelivery = 100000;

  print('Above minimum: ${total >= minimumOrder}');
  print('Free delivery: ${total >= freeDelivery}');
  print('Exactly minimum: ${total == minimumOrder}');
}

// ==============================================
// TASK 2 — Delivery rules
// ==============================================

/*
  GIVEN:  total          = 120000
          isNewCustomer  = false
          isRaining      = true
 
  RULES:  Free delivery    -> total is at least 100000 OR new customer
          Express delivery -> NOT raining AND total is at least 50000
          Both             -> free delivery AND express
 
  USE:    ||  &&  !
          store each rule in its own bool, then print it
 
  OUTPUT: (3 lines)
 
  Free delivery: true
  Express: false
  Both: false
*/

void task2() {
  int total = 120000;
  bool isNewCustomer = false;
  bool isRaining = true;

  bool freeDelivery = total >= 100000 || isNewCustomer;
  print('Free Delivery: $freeDelivery');

  // ignore: dead_code
  bool expressDel = !isRaining && total >= 50000;
  print('Express Delivery: $expressDel');

  bool both = freeDelivery && expressDel;
  print('Both: $both');
}

// ==============================================
// TASK 3 — The cart counter
// ==============================================

/*
  USE:    var
          +=  ++  -=  *=  --
          print after EVERY change
 
  STEPS:  1. start with  var items = 0;
          2. add 3            (+=)
          3. add 1            (++)
          4. remove 2         (-=)
          5. multiply by 5    (*=)
          6. remove 1         (--)
 
  OUTPUT: (5 lines)
 
  Items: 3
  Items: 4
  Items: 2
  Items: 10
  Items: 9
*/

void task3() {
  var items = 0;

  items += 3;
  print('Items: $items');

  items++;
  print('Items: $items');

  items -= 2;
  print('Items: $items');

  items *= 5;
  print('Items: $items');

  items--;
  print('Items: $items');
}

// ==============================================
// TASK 4 — Clean what the user typed
// ==============================================

/*
  GIVEN:  String typed = '   Davron   ';     <- 3 spaces each side
          String blank = '    ';            <- only spaces
 
  USE:    .length  .trim()  .toLowerCase()  .isEmpty
 
  STEPS:  1. print the length of typed
          2. trim it, store it, print its length
          3. print the trimmed name in lowercase
          4. print whether blank is empty AFTER trimming
 
  OUTPUT: (4 lines)
 
  Before: 12
  After: 6
  Lowercase: davron
  Blank is empty: true
*/

void task4() {
  String typed = '   Davron   ';
  String blank = '    ';    

  print('Before: ${typed.length}');
  print('After: ${typed.trim()}');
  print('Lowecase: ${typed.trim().toLowerCase()}');
  print('Blank is empty: ${blank.trim().isEmpty}');
}
 
// ==============================================
// TASK 5 — Phone number and menu
// ==============================================

/*
  GIVEN:  String phone = '+998 90 123 45 67';
          String menu  = 'Lagman,Plov,Manti';
 
  USE:    .replaceAll()  .startsWith()  .length  .split()  .contains()
 
  STEPS:  1. remove all spaces from phone, store it, print it
          2. print whether it starts with +998
          3. print its length
          4. split menu at the commas and print it
          5. print whether menu contains Plov
 
  OUTPUT: (5 lines)
 
  +998901234567
  Uzbek number: true
  Length: 13
  [Lagman, Plov, Manti]
  Has Plov: true
 
  HINT:   use double quotes outside when you need single quotes inside:
          print("Uzbek number: ${clean.startsWith('+998')}");
*/
void task5() {
  String phone = '+998 99 827 99 27';
  String menu = 'Lagman,Plov,Manti';
  String clean = phone.replaceAll(' ', '');

  print("Uzbek number: ${phone.startsWith('+998')} ");
  print('Length: ${clean.trim().length}');
  print(menu.split(','));
  print("Has plov: ${menu.contains('Plov')}");
}
