// ==============================================
// LESSON 1 — Variables and Data Types
// ==============================================

/* WHAT IS A VARIABLE?

  A variable is a named box that holds one value.

      String name = 'Davron';
        ^      ^   ^    ^
        |      |   |    value      - the data inside the box
        |      |   assignment      - "put this in"
        |      variable name       - you choose it
        data type                  - what kind of data is allowed

  The whole line is called a VARIABLE DECLARATION.

  Two things happen at once:
    1. declare  -> create the box and fix its type
    2. assign   -> put a value inside

  After this line, "name" always means 'Davron' until you change it.
*/

/* WHAT IS A DATA TYPE?

  The data type tells Dart what kind of value is allowed in the box.
  Once set, it CANNOT change. That is why Dart is called "statically typed".

  Dart has about 10 built-in types. You do not need them all.

  NEED TODAY (4):
    String   text
    int      whole number
    double   number with decimals
    bool     true / false

  NEED LATER (3) — Lesson 6:
    List     a list of values        [1, 2, 3]
    Map      key -> value pairs      {'pizza': 45000}
    Set      unique values only      {1, 2, 3}

  RARE — you may never write them:
    Runes, Symbol, Record, Null, Object, dynamic

  These 4 + 3 = 7 types cover ~95% of all Flutter code you will write.
*/

/* GOAL FOR TODAY
  1. Declare a variable with the correct data type     -> Example 1
  2. Do math and store the result in a variable        -> Example 2
  3. Put a variable's value inside a sentence          -> Example 3
  4. Read a type error without panicking               -> Example 4
  5. Convert text to number and back                   -> Example 5
*/

// ------------------------------
// PREDICT FIRST — guess on paper, answers at the bottom
// ------------------------------

/*
  A)
  int a = 10;
  int b = 3;
  print(a / b);

  B)
  var name = 'Davron';
  name = 42;
  print(name);
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
// Example 1 — Declaring variables with the 4 main data types
// ==============================================

void example1() {
  String city = 'Tashkent';     // text — needs quotes
  int guests = 204;             // whole number
  double price = 360000.50;     // number with decimals
  bool isBooked = true;         // true / false only

  print(city);      // Tashkent
  print(guests);    // 204
  print(price);     // 360000.5   <- the last 0 disappears
  print(isBooked);  // true
}

/* KEY POINTS
  4 data types today: String, int, double, bool
  int and double are NOT interchangeable
  int x = 5.0;     -> error
  double x = 5;    -> works, becomes 5.0
  Numbers drop trailing zeros: 360000.50 prints 360000.5
  Text keeps everything: '360000.50' stays '360000.50'
*/

/* WATCH OUT
  A value of type 'double' can't be assigned to a variable of type 'int'
  -> you put a decimal in an int. Read it as: gave X, expected Y.
*/

// ==============================================
// Example 2 — Doing math and STORING the result
// ==============================================

void example2() {
  // Step 1 — the inputs
  int pricePerPortion = 45000;
  int portions = 3;
  double vat = 0.12;              // 12% -> 0.12

  // Step 2 — calculate, and give each result its own variable
  int subtotal = pricePerPortion * portions;   // 135000
  double vatAmount = subtotal * vat;           // 16200.0
  double total = subtotal + vatAmount;         // 151200.0

  // Step 3 — print
  print(subtotal);    // 135000
  print(vatAmount);   // 16200.0
  print(total);       // 151200.0
}

/* KEY POINTS

  PERCENT -> decimal. Divide by 100.
     12%  ->  * 0.12
      5%  ->  * 0.05
     50%  ->  * 0.5
    100%  ->  * 1.0

  MATH OPERATORS
     +    add
     -    subtract
     *    multiply
     /    divide      -> ALWAYS returns double
     ~/   divide      -> returns int (cuts the remainder)
     %    remainder   10 % 3 = 1

  WHAT TYPE COMES OUT?
     int    * int     = int      45000 * 3   = 135000
     int    * double  = double   135000*0.12 = 16200.0
     int    + double  = double
     double * double  = double
     Rule: if ONE side is double, the answer is double.

  STORE, DON'T REPEAT
     Bad:   print(a * b);  print((a * b) * vat);  print((a * b) + ((a * b) * vat));
     Good:  int subtotal = a * b;  then reuse "subtotal" everywhere.
     Same result, but you write the calculation once.
*/

/* WATCH OUT
  int total = subtotal + vatAmount;
  -> A value of type 'double' can't be assigned to a variable of type 'int'
  Because vatAmount is a double, the answer is a double. Declare total as double.
*/

// ==============================================
// Example 3 — Putting values into text
// ==============================================

void example3() {
  String name = 'Davron';
  int age = 25;
  double price = 45000;

  print('Name: ' + name);                        // old way, hard to read
  print('$name is $age years old');              // Davron is 25 years old
  print("Two portions cost ${price * 2} so'm");  // Two portions cost 90000.0 so'm
  print('Uppercase: ${name.toUpperCase()}');     // Uppercase: DAVRON
}

/* KEY POINTS
  $name        -> plain variable, nothing else needed
  ${anything}  -> needed for math, a dot, or a method call
  Always CURLY braces. Never $( )

  $asText.length    -> WRONG, prints the value then ".length" as text
  ${asText.length}  -> RIGHT

  Quotes: pick the one your text does NOT contain
    "so'm"     -> clean
    'so\'m'    -> works, ugly
*/

/* WATCH OUT
  Unterminated string literal
  -> an apostrophe inside '...' ended the string early. Use "..." instead.
*/

// ==============================================
// Example 4 — Breaking it on purpose
// ==============================================

void example4() {
  // Uncomment ONE at a time, read the error, comment it back.

  // int guests = 204.5;
  // -> A value of type 'double' can't be assigned to a variable of type 'int'.

  // String age = 24;
  // -> A value of type 'int' can't be assigned to a variable of type 'String'.

  // bool isOpen = 'yes';
  // -> A value of type 'String' can't be assigned to a variable of type 'bool'.

  // String name = Davron;
  // -> Undefined name 'Davron'.  (quotes missing — Dart read it as a variable)
}

/* KEY POINTS
  Every type error has the same shape:
      gave X, expected Y
  "Undefined name" is different — it means missing quotes, every time.
  These are COMPILE-time errors: caught before the program runs.
*/

// ==============================================
// Example 5 — Converting between types
// ==============================================

void example5() {
  // text -> number
  String input = '42';
  int number = int.parse(input);
  print(number + 8);          // 50   — real arithmetic now

  // number -> text
  int guests = 204;
  String text = guests.toString();
  print(text.length);         // 3    — text has a length, numbers don't

  // int -> double
  int whole = 5;
  double asDouble = whole.toDouble();
  print(asDouble);            // 5.0

  // double -> int, two different ways
  double messy = 5.9;
  print(messy.toInt());       // 5    — CUTS the decimal
  print(messy.round());       // 6    — ROUNDS

  // the classic trap
  print('10' + '5');          // 105  — strings joined, not added
}

/* KEY POINTS

  THE 6 CONVERTERS YOU NEED NOW

    int.parse('42')        String -> int       = 42
    double.parse('3.14')   String -> double    = 3.14
    204.toString()         any    -> String    = '204'
    5.toDouble()           int    -> double    = 5.0
    5.9.toInt()            double -> int       = 5    (CUTS)
    5.9.round()            double -> int       = 6    (ROUNDS)

  .toString() works on almost any type: numbers, bool, List, Map.

  4 MORE YOU WILL MEET LATER — do not memorise today

    int.tryParse('hello')     returns null instead of crashing   (Lesson 12)
    5.9.floor()               always DOWN  = 5
    5.9.ceil()                always UP    = 6
    (16200.0).toStringAsFixed(0)  -> '16200'   for showing money

  WHERE THIS MATTERS
    A TextField in Flutter always gives you a String, never a number.
    Even when the user typed 45000, you receive '45000'.
    Converting is a daily job.
*/

/* WATCH OUT
  int.parse('hello')   ->  FormatException: Invalid radix-10 number

  "radix-10" = normal numbers (0-9).
  The message means: this text is not a number, I can't convert it.

  Breaks on:   'hello'   '42abc'   '3.5'   ''
  Works on:    '42'      '204'     '0'
*/

// ==============================================
// PREDICTION ANSWERS
// ==============================================

/*
  A) 3.3333333333333335
     In Dart, / always returns a double — even between two ints.
     Use ~/ if you want 3.

  B) ERROR: A value of type 'int' can't be assigned to a variable of type 'String'
     var does NOT mean "any type".
     Dart locked name to String the moment you wrote 'Davron'.
*/
