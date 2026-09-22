// ==============================================
// LESSON 1 — Variables and Types
// ==============================================

/* GOAL
  Declare a variable of the right type.
  Put a variable's value inside a sentence.
  Read a type error without panicking.
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
}

// ==============================================
// Example 1 — The four core types
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
  int and double are NOT interchangeable
  int x = 5.0;     -> error
  double x = 5;    -> works, becomes 5.0
  Numbers drop trailing zeros: 360000.50 prints 360000.5
*/

/* WATCH OUT
  A value of type 'double' can't be assigned to a variable of type 'int'
  -> you put a decimal in an int. Read it as: gave X, expected Y.
*/

// ==============================================
// Example 2 — Putting values into text
// ==============================================

void example2() {
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
  Quotes: pick the one your text does NOT contain
    "so'm"     -> clean
    'so\'m'    -> works, ugly
*/

/* WATCH OUT
  Unterminated string literal
  -> an apostrophe inside '...' ended the string early. Use "..." instead.
*/

// ==============================================
// Example 3 — Breaking it on purpose
// ==============================================

void example3() {
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
// Example 4 — Converting between types
// ==============================================

void example4() {
  String input = '42';
  int number = int.parse(input);
  print(number + 8);          // 50   — real arithmetic now

  int guests = 204;
  String text = guests.toString();
  print(text.length);         // 3    — it's text, so it has a length

  int whole = 5;
  double asDouble = whole.toDouble();
  print(asDouble);            // 5.0

  double messy = 5.9;
  print(messy.toInt());       // 5    — CUTS the decimal
  print(messy.round());       // 6    — rounds

  print('10' + '5');          // 105  — strings joined, not added
}

/* KEY POINTS
  int.parse('42')   String -> int
  204.toString()    int -> String    = '204'
  .toString() works on almost any type
  5.toDouble()      int    -> double   = 5.0
  5.9.toInt()       CUTS   = 5
  5.9.round()       ROUNDS = 6
  '10' + '5' = '105'   (strings join)
  A TextField in Flutter always gives you a String, never a number.
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
