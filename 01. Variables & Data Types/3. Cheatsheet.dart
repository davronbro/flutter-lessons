// ==============================================
// LESSON 1 — CHEATSHEET
// Variables and Data Types
// ==============================================
 
// ----------------------------------------------
// 1. DECLARING A VARIABLE
// ----------------------------------------------
 
//  String name = 'Davron';
//    ^      ^   ^    ^
//    |      |   |    value
//    |      |   assignment
//    |      variable name
//    data type
 
String name = 'Davron';       // declare + assign in one line
 
// ----------------------------------------------
// 2. THE DATA TYPES
// ----------------------------------------------
 
// NEED NOW (4)
String city = 'Tashkent';     // text, always in quotes
int guests = 204;             // whole number
double price = 45000.50;      // number with decimals
bool isOpen = true;           // true / false only
 
// NEED LATER (3) — Lesson 6
// List   [1, 2, 3]
// Map    {'pizza': 45000}
// Set    {1, 2, 3}
 
// RARE — Runes, Symbol, Record, Null, Object, dynamic
 
// ----------------------------------------------
// 3. MATH OPERATORS
// ----------------------------------------------
 
//  10 + 3     13
//  10 - 3     7
//  10 * 3     30
//  10 / 3     3.3333333333333335   <- ALWAYS double
//  10 ~/ 3    3                    <- int, cuts the remainder
//  10 % 3     1                    <- remainder
 
// ----------------------------------------------
// 4. WHICH TYPE COMES OUT?
// ----------------------------------------------
 
//  int    * int     = int        45000 * 3     = 135000
//  int    * double  = double     135000 * 0.12 = 16200.0
//  int    + double  = double
//  double * double  = double
//  anything / anything = double   (even 10 / 2 gives 5.0)
//
//  RULE: if ONE side is double, the answer is double.
 
// ----------------------------------------------
// 5. PERCENT
// ----------------------------------------------
 
//  12%  ->  * 0.12
//   5%  ->  * 0.05
//  50%  ->  * 0.5
// 100%  ->  * 1.0
//
//  Percent means "divide by 100".
 
// ----------------------------------------------
// 6. STORE, DON'T REPEAT
// ----------------------------------------------
 
//  BAD
//    print(a * b);
//    print((a * b) * vat);
//    print((a * b) + ((a * b) * vat));
//
//  GOOD
//    int subtotal     = a * b;
//    double vatAmount = subtotal * vat;
//    double total     = subtotal + vatAmount;
 
// ----------------------------------------------
// 7. PUTTING VALUES INTO TEXT  (interpolation)
// ----------------------------------------------
 
//  $name                 plain variable — nothing else needed
//  ${price * 2}          math          — braces required
//  ${name.toUpperCase()} method call   — braces required
//  ${text.length}        a dot         — braces required
//
//  ALWAYS curly braces. NEVER $( )
//
//  $text.length     WRONG  -> prints the value, then ".length" as text
//  ${text.length}   RIGHT
 
// ----------------------------------------------
// 8. QUOTES
// ----------------------------------------------
 
//  Pick the quote your text does NOT contain.
//
//  "so'm"             clean
//  'so\'m'            works, ugly
//  'he said "hi"'     clean
//  "he said \"hi\""   works, ugly
//
//  \  means: the next character is text, not code.
 
// ----------------------------------------------
// 9. CONVERTING — THE 6 YOU NEED NOW
// ----------------------------------------------
 
//  int.parse('42')        String -> int      = 42
//  double.parse('3.14')   String -> double   = 3.14
//  204.toString()         any    -> String   = '204'
//  5.toDouble()           int    -> double   = 5.0
//  5.9.toInt()            double -> int      = 5    CUTS
//  5.9.round()            double -> int      = 6    ROUNDS
//
//  .toString() works on almost any type.
 
// ----------------------------------------------
// 10. CONVERTING — 4 FOR LATER
// ----------------------------------------------
 
//  int.tryParse('hello')         null instead of a crash   (Lesson 12)
//  5.9.floor()                   always DOWN  = 5
//  5.9.ceil()                    always UP    = 6
//  (16200.0).toStringAsFixed(0)  '16200'   for showing money
 
// ----------------------------------------------
// 11. ERRORS AND WHAT THEY MEAN
// ----------------------------------------------
 
//  A value of type 'double' can't be assigned to a variable of type 'int'
//    -> gave X, expected Y. Wrong type on the right side.
//
//  Undefined name 'Davron'
//    -> missing quotes. Dart read your text as a variable name.
//
//  Expected to find ';'
//    -> line not terminated. Add ;
//
//  Unterminated string literal
//    -> an apostrophe ended the string early. Use "..." instead.
//
//  FormatException: Invalid radix-10 number
//    -> int.parse() got text that isn't a number.
//       Breaks on: 'hello'  '42abc'  '3.5'  ''
//       Works on:  '42'     '204'    '0'
 
// ----------------------------------------------
// 12. GOTCHAS
// ----------------------------------------------
 
//  '10' + '5'      = '105'     strings JOIN, they don't add
//  int x = 5.0;    -> ERROR    5.0 is a double even though it looks whole
//  double x = 5;   -> works    becomes 5.0
//  bool b = 1;     -> ERROR    Dart has no truthy numbers
//  360000.50       prints 360000.5   numbers drop trailing zeros
//  '360000.50'     stays '360000.50' text keeps everything
//  10 / 2          = 5.0       division is ALWAYS double
//  (-5.9).toInt()  = -5        cuts toward zero
//  (-5.9).floor()  = -6        floor always goes down
 
// ----------------------------------------------
// 13. USEFUL STRING METHODS
// ----------------------------------------------
 
//  'Davron'.length            6
//  'Davron'.toUpperCase()     'DAVRON'
//  'Davron'.toLowerCase()     'davron'
//  '  hi  '.trim()            'hi'
//  'Davron'.contains('av')    true
//  'a,b,c'.split(',')         ['a', 'b', 'c']
 
