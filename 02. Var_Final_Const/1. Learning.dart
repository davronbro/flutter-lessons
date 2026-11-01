// ==============================================
// LESSON 2 — var, final, const
// ==============================================

/* WHAT IS A KEYWORD HERE?

  In Lesson 1 you wrote the data type yourself:

      String name = 'Davron';
        ^
        data type

  Dart gives you 3 keywords you can write INSTEAD of the data type,
  or IN FRONT of it. Each one changes what you are allowed to do later.

      var   name = 'Davron';        Dart works out the type for you
      final name = 'Davron';        set once, cannot change
      const name = 'Davron';        set once, known before the app runs

  Anatomy:

      final String city = 'Tashkent';
        ^      ^     ^        ^
        |      |     |        value
        |      |     variable name
        |      data type      <- OPTIONAL when you use var/final/const
        keyword
*/

/* HOW MANY WAYS TO DECLARE A VARIABLE?

  Dart has 4. You need all 4.

    String name = 'x';     explicit type, value CAN change
    var    name = 'x';     inferred type, value CAN change
    final  name = 'x';     value CANNOT change, set while running
    const  name = 'x';     value CANNOT change, known before running

  ONE MORE — Lesson 12:
    late   name;           declare now, assign later

  That is the whole list. There is nothing else to learn here.
*/

/* GOAL FOR TODAY
  1. Use var and know which type Dart chose        -> Example 1
  2. Use final and know when it fits               -> Example 2
  3. Use const and know how it differs from final  -> Example 3
  4. Choose the right one every time               -> Example 4
  5. Read the errors these three cause             -> Example 5
*/

// ------------------------------
// PREDICT FIRST — guess on paper, answers at the bottom
// ------------------------------

/*
  A)
  var x = 5;
  x = 10;
  print(x); - I think x = 10

  B)
  final price = 45000;
  price = 50000;
  print(price); I think x = 45000
*/

// ------------------------------
// EXAMPLES
// ------------------------------

void main() {
  example1();
  example2();
  example3();
  example4();
  example5();
}

// ==============================================
// Example 1 — var: Dart works out the type
// ==============================================

void example1() {
  var city = 'Tashkent';     // Dart sees quotes   -> String
  var guests = 204;          // Dart sees a whole number -> int
  var price = 45000.5;       // Dart sees a decimal -> double
  var isOpen = true;         // Dart sees true      -> bool

  print(city.runtimeType);    // String   <- ask Dart what it chose
  print(guests.runtimeType);  // int
  print(price.runtimeType);   // double
  print(isOpen.runtimeType);  // bool

  city = 'Samarkand';         // OK — still a String
  print(city);                // Samarkand
}

/* KEY POINTS
  var does NOT mean "any type".
  Dart looks at the value ONCE and locks the type forever.

    var city = 'Tashkent';   -> city is a String, permanently
    city = 'Samarkand';      -> OK,    still text
    city = 42;               -> ERROR, int is not String

  .runtimeType tells you which type Dart picked. Useful while learning.

  When to use var: the type is obvious from the value.
    var name = 'Davron';        clear
    var total = price * 3;      clear enough
*/

/* WATCH OUT
  A value of type 'int' can't be assigned to a variable of type 'String'
  -> you tried to put a different type into a var. The type was already locked.
*/

// ==============================================
// Example 2 — final: set once, while the app runs
// ==============================================

void example2(){
  final String restaurantName = 'Osh Markazi';   // with type
  final int maxGuests = 204;                     // with type
  final vat = 0.12;                              // without type - dart infers double

  print(restaurantName);  // Osh Markazi
  print(maxGuests);       // 204
  print(vat);             // 0.12

  // final can hold a value that is only known WHILE the app runs:
  final orderTime = DateTime.now();  // the clock right now
  print(orderTime.runtimeType);      // DateTime

  // restaurantName = 'Boshqa joy';
  // -> ERROR: The final variable 'restaurantName' can only be set once
}

/* WATCH OUT
  The final variable 'x' can only be set once.
  -> you tried to give a final a second value.
*/

/* KEY POINTS
  final = you may set it ONE time. After that it is locked.

  The type is optional:
    final String name = 'Davron';   works
    final name = 'Davron';          works, Dart infers String

  final allows values calculated while running:
    final orderTime = DateTime.now();       clock
    final total = price * portions;         a calculation
    final userName = getNameFromServer();   later, from an API

  WHY USE IT: it stops you changing something by accident.
  If a value should never change, say so in the code.
*/


// ==============================================
// Example 3 — const: known BEFORE the app runs
// ==============================================

void example3(){
  const double vatRate = 0.12;         // a fixed rule
  const String appName = 'Noor Eats';  // a fixed name
  const int maxCartItems = 50;         // a fixed limit

  print(vatRate);        // 0.12
  print(appName);        // Noor Eats
  print(maxCartItems);   // 50

  // const orderTime = DateTime.now();
  // -> ERROR: the clock is not known until the app runs.

  const subtotal = 45000 * 3;   // OK - Dart can work this out now
  print(subtotal);              // 135000
}

/* KEY POINTS
  const = the value must be known BEFORE the program starts.

    const vatRate = 0.12;          OK   — a plain number
    const subtotal = 45000 * 3;    OK   — Dart can calculate it now
    const now = DateTime.now();    ERROR — needs the clock, which runs later

  final vs const, the whole difference:
    final   set once, WHILE running      -> DateTime.now() allowed
    const   set once, BEFORE running     -> DateTime.now() NOT allowed

  Every const is also final. Not every final can be const.

  WHY IT MATTERS IN FLUTTER:
    const Text('Hello')   is built once and never rebuilt   -> faster
    Text('Hello')         is rebuilt every time             -> slower
    This is why the Flutter template had const in it.

  NAMING: Dart uses lowerCamelCase for const, not CAPITALS.
    const vatRate = 0.12;     correct Dart style
    const VAT_RATE = 0.12;    works, but not Dart style
*/

/* WATCH OUT
  Const variables must be initialized with a constant value.
  -> you gave const something that is only known while running.
     Use final instead.
*/

void example4(){
  // Fixed rules of the business -> const
  const double vatRate = 0.12;
  const int deliveryFee = 15000;

  // Comes from the order, never changes after -> final
  final int pricePerPortion = 45000;
  final int portions = 3;

  // Calculated once, then locked -> final
  final int subtotal = pricePerPortion * portions;
  final double vatAmount = subtotal * vatRate;
  final double total = subtotal + vatAmount + deliveryFee;

  // Genuinely change as the user taps -> var
  var itmesInCart = 3;
  itmesInCart = 4;

  print('Subtotal: $subtotal');   // Subtotal: 135000
  print('VAT: $vatAmount');       // VAT: 16200.0
  print('Total: $total');         // Total: 166200.0
  print('Items: $itmesInCart');   // Itmes: 4
}

/* KEY POINTS

  THE DECISION, IN ORDER — ask these three questions:

    1. Is the value known before the app runs?   -> const
    2. Is it set once while running?             -> final
    3. Does it really change later?              -> var

  Start at 1. Use the first one that fits.

  Professional habit: reach for final first, var only when you must.
  A variable that cannot change is a variable that cannot break.
*/

// ==============================================
// Example 5 — Breaking it on purpose
// ==============================================

void example5(){
  // Uncomment One at a time, read the error, comment it back.

  // var name = 'Davron';
  // name = 42;
  // -> A value of type 'int' can't be assigned to a variable of type 'String'.

  // final price = 45000;
  // price = 50000;
  // -> The final variable 'price' can only be set once.


  // const price2 = 45000;
  // price2 = 50000;
  // -> Constant variables can't be assigned a value.


  // const now = DateTime.now();
  // -> Const variables must be initialized with a constant value.

  // final int guests;
  // print(guests);
  // -> The final variable 'guests' must be initialized.
}


/* KEY POINTS
  Three different complaints, three different causes:

    "can't be assigned to a variable of type X"  -> wrong TYPE
    "can only be set once"                       -> final, second value
    "must be initialized with a constant value"  -> const, runtime value

  All of them are COMPILE-time errors. The app never starts.
*/

// ==============================================
// PREDICTION ANSWERS
// ==============================================

/*
  A) 10
     var lets you change the VALUE. It only locks the TYPE.
     5 and 10 are both int, so Dart is happy.

  B) ERROR: The final variable 'price' can only be set once.
     final locks the value, not just the type.
*/
