// ==============================================
// LESSON 3 — Operators and Strings
// ==============================================

/* WHAT IS AN OPERATOR?

  A symbol that does something with values.

      total  >=  minOrder
        ^     ^     ^
        |     |     right side
        |     operator
        left side

  You already know the math ones from Lesson 1:  + - * / ~/ %
*/

/* HOW MANY?

  Operators come in 4 groups. Lesson 1 covered the first.

    Math         + - * / ~/ %          Lesson 1 — done
    Comparison   == != > < >= <=       today — the answer is always a bool
    Logical      && || !               today — combine bools
    Assignment   = += -= *= /= ++ --   today — change a variable

  String methods: Dart has about 30. You need 12 today.
  A method is a function that belongs to a value. You call it with a dot:

      name.toUpperCase()
       ^         ^
       value     method
*/

/* GOAL FOR TODAY
  1. Compare two values and get true / false        -> Example 1
  2. Combine conditions with && || !                -> Example 2
  3. Change a number with += ++ and friends         -> Example 3
  4. Clean text the user typed                      -> Example 4
  5. Search and cut text                            -> Example 5
*/

// ------------------------------
// PREDICT FIRST — guess on paper, answers at the bottom
// ------------------------------

/*
  A)  print(5 == 5.0); -> // I think it will be correct
  B)  print('Plov' == 'plov'); // I think false
  C)  print(10 > 3 && 2 > 5); // I think false
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
// Example 1 — Comparison: asking a yes/no question
// ==============================================

void example1() {
  int total = 85000;
  int minOrder = 50000;

  print('Bigger: ${total > minOrder}');             // > Bigger: true
  print('Smaller: ${total < minOrder}');            // < Smaller: false
  print('Bigger or equal: ${total >= minOrder}');   // >= Bigger or equal: true
  print('Smaller or equal: ${total <= minOrder}');  // <= Smaller or equal: false
  print('Equal: ${total == minOrder}');             // == Equal: false
  print('Not equal: ${total != minOrder}');         // != Not equal: true

  bool canOrder = total >= minOrder;   // store the answer
  print('Can order: $canOrder');       // Can order: true
}

/* KEY POINTS
  A comparison is a question. The answer is ALWAYS a bool.

  =    puts a value IN       total = 85000
  ==   asks "are they equal?" total == 85000

  Text comparison is exact — capitals count:
    'Plov' == 'Plov'   true
    'Plov' == 'plov'   false
*/

/* WATCH OUT
  bool isMin = total = minOrder;
  -> A value of type 'int' can't be assigned to a variable of type 'bool'.
  You wrote = (put in) where you meant == (ask).
*/

// ==============================================
// Example 2 — Logical: combining yes/no answers
// ==============================================

void example2() {
  int total = 120000;
  bool isNewCustomer = false;
  bool isRaining = true;

  // || OR — at least one must be true
  bool freeDelivery = total >= 100000 || isNewCustomer;
  print('Free Delivery: $freeDelivery');   // Free Delivery: true   (total is big enough)

  // && AND — both must be true
  // ignore: dead_code
  bool expressOk = !isRaining && total >= 50000;
  print('Express: $expressOk');            // Express: false   (it's raining)

  // ! NOT — true becomes false
  print('Not raining: ${!isRaining}');     // Not raining: false
}

/* KEY POINTS
  &&   AND   both must be true
  ||   OR    one true is enough
  !    NOT   true becomes false, false becomes true

    true  && false   = false
    true  || false   = true
    !true            = false
    !false           = true

  How Dart reads it:
    !isRaining && total >= 50000
    !true      && ...
    false      && ...    <- stops here, never checks the right side
    = false
*/

// ==============================================
// Example 3 — Assignment shortcuts: changing a number
// ==============================================

void example3() {
  var items = 3;

  items += 2;               // same as: items = items + 2
  print('Items: $items');   // Items: 5

  items -= 1;               // items = items - 1
  print('Items: $items');   // Items: 4

  items *= 2;               // items = items * 2
  print('Items: $items');   // Items: 8

  items++;                  // add 1
  print('Items: $items');   // Items: 9

  items--;                  // take away 1
  print('Items: $items');   // Items: 8
}

/* KEY POINTS
  Shortcuts for changing a variable using its own value:

    x += 5    x = x + 5
    x -= 5    x = x - 5
    x *= 5    x = x * 5
    x /= 5    x = x / 5     -> result is double!
    x++       x = x + 1
    x--       x = x - 1

  Only works on var. final and const are locked.
*/

/* WATCH OUT
  int x = 10;
  x /= 2;
  -> A value of type 'double' can't be assigned to a variable of type 'int'.
  Division always gives a double (Lesson 1). Use ~/= or make x a double.
*/

// ==============================================
// Example 4 — Cleaning text the user typed
// ==============================================

void example4() {
  String typed = '   Davron   ';         // user hit space by accident

  print('Length: ${typed.length}');                 // Length: 12   spaces count!
  print('Trimmed: ${typed.trim()}');                // Trimmed: Davron
  print('Trimmed length: ${typed.trim().length}');  // Trimmed length: 6

  print("Upper: ${'Davron'.toUpperCase()}");        // Upper: DAVRON
  print("Lower: ${'Davron'.toLowerCase()}");        // Lower: davron

//------------------------------------------

  print("Empty text: ${''.isEmpty}");                    // Empty text: true
  print("Only spaces: ${'   '.isEmpty}");                // Only spaces: false   spaces are characters
  print("Spaces after trim: ${'   '.trim().isEmpty}");   // Spaces after trim: true
}

/* KEY POINTS
  .length          how many characters (spaces count)
  .trim()          remove spaces at start and end
  .toUpperCase()   DAVRON
  .toLowerCase()   davron
  .isEmpty         true if nothing at all
  .isNotEmpty      the opposite

  Chain them:  typed.trim().toLowerCase()
  Always .trim() what a user typed before you check it.
*/

// ==============================================
// Example 5 — Searching and cutting text
// ==============================================

void example5() {
  String phone = '+998 90 123 45 67';
  String clean = phone.replaceAll(' ', '');   // remove every space
  print('Clean: $clean');                     // Clean: +998901234567
  
  // more replaceAll examples
  print("Plov -> ${'Plov'.replaceAll('o', 'a')}");                 // Plov -> Plav
  print("Dashes: ${'+998 90 123'.replaceAll(' ', '-')}");          // Dashes: +998-90-123
  print("Money: ${'45 000'.replaceAll(' ', '')}");                 // Money: 45000

  print("Starts with +998: ${clean.startsWith('+998')}");   // Starts with +998: true
  print("Ends with 67: ${clean.endsWith('67')}");           // Ends with 67: true
  print("Contains 123: ${clean.contains('123')}");          // Contains 123: true

  String city = 'Tashkent';
  print('First 4: ${city.substring(0, 4)}');         // First 4: Tash    from 0, stop BEFORE 4
  print('From 4: ${city.substring(4)}');             // From 4: kent     from 4 to the end
  print("Position of k: ${city.indexOf('k')}");      // Position of k: 4
  print("Position of z: ${city.indexOf('z')}");      // Position of z: -1   not found

  String menu = 'Lagman,Plov,Manti';
  print("Menu: ${menu.split(',')}");                 // Menu: [Lagman, Plov, Manti]
}

/* KEY POINTS
  .contains('x')        is it anywhere inside?
  .startsWith('x')      does it start with this?
  .endsWith('x')        does it end with this?
  .replaceAll('a','b')  swap every a for b
  .indexOf('x')         where is it? -1 = not found
  .substring(start, end)  cut a piece — end is NOT included
  .split(',')           break into a List at every comma

  Counting starts at 0:
    T  a  s  h  k  e  n  t
    0  1  2  3  4  5  6  7
*/

/* WATCH OUT
  city.substring(0, 20)
  -> RangeError — the text is only 8 characters long.
  This one is NOT caught before running. The app crashes while running.
*/

// ==============================================
// PREDICTION ANSWERS
// ==============================================

/*
  A) true    Dart compares the number, not the type. 5 and 5.0 are equal.
  B) false   capital P vs small p — text comparison is exact.
  C) false   10 > 3 is true, 2 > 5 is false. AND needs both true.
*/
