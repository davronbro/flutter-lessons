// ==============================================
// LESSON 2 — HOMEWORK
// var, final, const
// ==============================================

void main() {
  task1();
  task2();
  task3();
  task4();
  task5();
}

// ==============================================
// TASK 1 — What did Dart choose?
// ==============================================

/*
  USE:    var
          .runtimeType
          5 variables
          5 print() calls

  STEPS:  1. declare 5 variables with var — a name, an age, a price,
             a yes/no answer, and a city
          2. print the .runtimeType of each one

  OUTPUT: (5 separate lines)

  String
  int
  double
  bool
  String
*/

void task1() {
  var name = 'Davron';
  var age = 25;
  var price = 250000.00;
  var isGoodBoy = true;
  var city = 'Tashkent';

  print(name.runtimeType);
  print(age.runtimeType);
  print(price.runtimeType);
  print(isGoodBoy.runtimeType);
  print(city.runtimeType);

}

// ==============================================
// TASK 2 — final for an order
// ==============================================

/*
  GIVEN:  restaurant  = 'Osh Markazi'
          dish        = 'Lagman'
          price       = 45000
          portions    = 2

  USE:    final for all four
          final for the total as well
          1 print() call with interpolation

  STEPS:  1. declare the four values with final
          2. calculate the total with final
          3. print one sentence

  OUTPUT: (1 line)

  2 x Lagman from Osh Markazi = 90000 so'm
*/

void task2() {

  final restaurant = 'Osh Markazi';
  final dish = 'Lagman';
  final price = 45000;
  final portions = 2;
  final total = price * portions;

  print("$portions x $dish from $restaurant = $total so'm");

}

// ==============================================
// TASK 3 — const for the rules
// ==============================================

/*
  GIVEN:  app name     = 'Noor Eats'
          VAT rate     = 12%
          delivery fee = 15000
          free delivery above = 100000

  USE:    const for all four
          4 print() calls

  STEPS:  1. declare the four values with const
          2. print each one with a label

  OUTPUT: (4 separate lines)

  App: Noor Eats
  VAT: 0.12
  Delivery: 15000
  Free delivery above: 100000
*/

void task3() {
  const app = 'Noor Eats';
  const vat = 0.12;
  const deliveryFee = 15000;
  const freeDelivery = 100000;

  print('App: $app');
  print('VAT: $vat');
  print('Delivery: $deliveryFee');
  print('Free delivery above: $freeDelivery'); 

}

// ==============================================
// TASK 4 — Choose the right keyword
// ==============================================

/*
  Below are 6 situations. For EACH one, declare a variable using the
  keyword you think is correct, then write a // comment saying why.

    1. The VAT rate, 12%, fixed by law
    2. The customer's name, typed into the app
    3. The number of items in the cart, changes when the user taps +
    4. The app's name, 'Noor Eats'
    5. The order total, calculated once at checkout
    6. The time the order was placed

  USE:    const, final, var
          6 declarations with a // comment on each

  STEPS:  1. ask: known before the app runs?   -> const
          2. ask: set once while running?      -> final
          3. otherwise                         -> var

  OUTPUT: no output needed — this task is about the choice, not the print.
          Just make sure the file runs with no errors.

  HINT:   number 6 needs DateTime.now()
*/

void task4() {
  const vat = 0.12;                    // because it's law
  final customer = 'John';             // customer cannot change his name while ordering the goods
  var cartItems = 11;                  // can be changed if the user wants less or more
  const appName = 'Noor Eats';         // cannot be changed strict
  final total = 35000;                 // before checking out will show total
  final orderTime = DateTime.now();    // while running the app we can get the date of the order

  print('$vat, $customer, $cartItems, $appName, $total, $orderTime');
}

// ==============================================
// TASK 5 — Break it
// ==============================================

/*
  USE:    var, final, const

  STEPS:  1. write 4 lines that each cause a DIFFERENT error
          2. comment each line out
          3. write the error message underneath it

  The 4 errors you are looking for:
     - changing the type of a var
     - giving a final a second value
     - giving a const a second value
     - giving a const a value that needs the clock

  OUTPUT: nothing runs. These are compile errors.
*/

void task5() {

// var name = 'Davron';
// name = 23;                        
// Error: A value of type 'int' can't be assigned to a variable of type 'String'.

// final number = 32;
// number = 33;                      
// Error: Can't assign to the final variable 'number'.

// const label = 'Book';
// label = 'Note Book';  
// Error: Can't assign to the const variable 'label'.             

// const orderTime = DateTime.now(); 
// Error: Cannot invoke a non-'const' constructor where a const expression is expected.
// Try using a constructor or factory that is 'const'.

}
