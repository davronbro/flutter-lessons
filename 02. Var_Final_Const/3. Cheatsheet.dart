// ==============================================
// LESSON 2 — CHEATSHEET
// var, final, const
// ==============================================
 
// ----------------------------------------------
// 1. THE 4 WAYS TO DECLARE
// ----------------------------------------------
 
//  String name = 'Davron';    explicit type, value CAN change
//  var    name = 'Davron';    inferred type, value CAN change
//  final  name = 'Davron';    value CANNOT change, set WHILE running
//  const  name = 'Davron';    value CANNOT change, known BEFORE running
//
//  + late name;               declare now, assign later   (Lesson 12)
 
// ----------------------------------------------
// 2. ANATOMY
// ----------------------------------------------
 
//  final String city = 'Tashkent';
//    ^      ^     ^        ^
//    |      |     |        value
//    |      |     variable name
//    |      data type   <- OPTIONAL with var / final / const
//    keyword
 
// ----------------------------------------------
// 3. var
// ----------------------------------------------
 
//  var city = 'Tashkent';    Dart sees quotes  -> String
//  var guests = 204;         whole number      -> int
//  var price = 45000.5;      decimal           -> double
//  var isOpen = true;        true/false        -> bool
//
//  city = 'Samarkand';       OK    — still a String
//  city = 42;                ERROR — type was locked at birth
//
//  var locks the TYPE, not the VALUE.
 
// ----------------------------------------------
// 4. final
// ----------------------------------------------
 
//  final name = 'Davron';              type optional
//  final String name = 'Davron';       type written — both fine
//
//  Set ONE time. Second assignment = error.
//
//  Allowed — values only known while running:
//    final orderTime = DateTime.now();
//    final total = price * portions;
//    final user = getUserFromServer();
 
// ----------------------------------------------
// 5. const
// ----------------------------------------------
 
//  const vatRate = 0.12;           OK    plain number
//  const appName = 'Noor Eats';    OK    plain text
//  const subtotal = 45000 * 3;     OK    Dart can calculate it now
//  const now = DateTime.now();     ERROR needs the clock
//
//  Every const is also final.
//  Not every final can be const.
 
// ----------------------------------------------
// 6. final vs const — THE WHOLE DIFFERENCE
// ----------------------------------------------
 
//                    final              const
//  set once          yes                yes
//  value known       while running      before running
//  DateTime.now()    allowed            not allowed
//  a calculation     allowed            only with fixed numbers
 
// ----------------------------------------------
// 7. WHICH ONE? — ask in this order
// ----------------------------------------------
 
//  1. Known before the app runs?   -> const
//  2. Set once while running?      -> final
//  3. Really changes later?        -> var
//
//  Use the FIRST one that fits.
//  Habit: reach for final first, var only when you must.
 
// ----------------------------------------------
// 8. REAL EXAMPLES
// ----------------------------------------------
 
//  const double vatRate = 0.12;        fixed by law
//  const String appName = 'Noor Eats'; fixed name
//  const int deliveryFee = 15000;      fixed price
//
//  final String customer = 'Davron';   typed in once
//  final int subtotal = price * qty;   calculated once
//  final orderTime = DateTime.now();   the clock
//
//  var itemsInCart = 3;                changes when user taps
//  var isLoading = true;               changes when data arrives
 
// ----------------------------------------------
// 9. .runtimeType — ASK DART WHAT IT CHOSE
// ----------------------------------------------
 
//  var city = 'Tashkent';
//  print(city.runtimeType);    // String
//
//  var price = 45000.5;
//  print(price.runtimeType);   // double
//
//  Handy while learning. You will stop needing it.
 
// ----------------------------------------------
// 10. ERRORS AND WHAT THEY MEAN
// ----------------------------------------------
 
//  A value of type 'int' can't be assigned to a variable of type 'String'
//    -> wrong TYPE. The var locked its type at birth.
//
//  The final variable 'x' can only be set once.
//    -> you gave a final a second value.
//
//  Constant variables can't be assigned a value.
//    -> you gave a const a second value.
//
//  Const variables must be initialized with a constant value.
//    -> const got something only known while running. Use final.
//
//  The final variable 'x' must be initialized.
//    -> you declared a final but never gave it a value.
 
// ----------------------------------------------
// 11. WHY const MATTERS IN FLUTTER
// ----------------------------------------------
 
//  const Text('Hello')    built ONCE, never rebuilt   -> faster
//  Text('Hello')          rebuilt every time          -> slower
//
//  This is why the Flutter template is full of const.
//  Free performance. Use it wherever the widget never changes.
 
// ----------------------------------------------
// 12. NAMING STYLE
// ----------------------------------------------
 
//  const vatRate = 0.12;      correct Dart style — lowerCamelCase
//  const VAT_RATE = 0.12;     works, but this is Java/Go style
//
//  Dart uses lowerCamelCase for EVERYTHING except class names.
//    variables   vatRate, itemsInCart, orderTime
//    functions   calculateTotal()
//    classes     Dish, MenuItem, OrderScreen     <- UpperCamelCase
 
// ----------------------------------------------
// 13. GOTCHAS
// ----------------------------------------------
 
//  var does NOT mean "any type"          the type is locked at birth
//  final without a value                 ERROR, must be set at declaration
//  const inside a function               fine, it is not only for globals
//  final total = a * b;                  fine, calculation at runtime
//  const total = a * b;                  ERROR if a or b are not const
//  dynamic x = 5; x = 'hi';              this IS "any type" — avoid it
 
