// ==============================================
// LESSON 3 — CHEATSHEET
// Operators and Strings
// ==============================================
 
// ----------------------------------------------
// 1. THE 4 OPERATOR GROUPS
// ----------------------------------------------
 
//  Math         + - * / ~/ %          Lesson 1
//  Comparison   == != > < >= <=       answer is always bool
//  Logical      && || !               combine bools
//  Assignment   = += -= *= /= ++ --   change a variable
 
// ----------------------------------------------
// 2. COMPARISON
// ----------------------------------------------
 
//  a == b    equal
//  a != b    not equal
//  a >  b    bigger
//  a <  b    smaller
//  a >= b    bigger or equal
//  a <= b    smaller or equal
//
//  85000 >= 50000    true
//  5 == 5.0          true      same number
//  'Plov' == 'plov'  false     capitals count
 
// ----------------------------------------------
// 3. = vs ==
// ----------------------------------------------
 
//  =     PUT a value in        total = 85000
//  ==    ASK if equal          total == 85000
 
// ----------------------------------------------
// 4. LOGICAL
// ----------------------------------------------
 
//  &&   AND   both true              true && false  = false
//  ||   OR    at least one true      true || false  = true
//  !    NOT   flips it               !true          = false
//
//  !isRaining && total >= 50000
//  "NOT raining AND total at least 50000"
 
// ----------------------------------------------
// 5. ASSIGNMENT SHORTCUTS
// ----------------------------------------------
 
//  x += 5    x = x + 5
//  x -= 5    x = x - 5
//  x *= 5    x = x * 5
//  x /= 5    x = x / 5     result is double — x must be double
//  x ~/= 5   x = x ~/ 5    stays int
//  x++       x = x + 1
//  x--       x = x - 1
//
//  Only on var. final and const are locked.
 
// ----------------------------------------------
// 6. STRING METHODS — CLEANING
// ----------------------------------------------
 
//  '  Davron  '.length         10      spaces count
//  '  Davron  '.trim()         'Davron'
//  'Davron'.toUpperCase()      'DAVRON'
//  'Davron'.toLowerCase()      'davron'
//  ''.isEmpty                  true
//  '   '.isEmpty               false   spaces are characters
//  '   '.trim().isEmpty        true
//  'Davron'.isNotEmpty         true
//
//  Always .trim() what a user typed.
 
// ----------------------------------------------
// 7. STRING METHODS — SEARCHING
// ----------------------------------------------
 
//  'Osh Markazi'.contains('Osh')      true
//  'Osh Markazi'.contains('osh')      false   capitals count
//  '+998901234567'.startsWith('+998') true
//  'menu.pdf'.endsWith('.pdf')        true
//  'Tashkent'.indexOf('k')            4
//  'Tashkent'.indexOf('z')            -1      not found
 
// ----------------------------------------------
// 8. STRING METHODS — CHANGING AND CUTTING
// ----------------------------------------------
 
//  '45 000'.replaceAll(' ', '')       '45000'
//  'Tashkent'.substring(0, 4)         'Tash'   end NOT included
//  'Tashkent'.substring(4)            'kent'   to the end
//  'Lagman,Plov,Manti'.split(',')     [Lagman, Plov, Manti]
 
// ----------------------------------------------
// 9. COUNTING STARTS AT 0
// ----------------------------------------------
 
//    T  a  s  h  k  e  n  t
//    0  1  2  3  4  5  6  7
//
//  length = 8, last position = 7
//
//  length   = HOW MANY      position = WHERE (starts at 0)
//  last position = length - 1
//
//  'Tashkent'.indexOf('k')     4    character -> position
//  'Tashkent'[4]               k    position  -> character
//  city[city.length - 1]       t    the last character
//  'Tashkent'[8]               RangeError — crashes while running
 
// ----------------------------------------------
// 10. CHAINING
// ----------------------------------------------
 
//  typed.trim().toLowerCase()
//  phone.replaceAll(' ', '').startsWith('+998')
//
//  Each dot works on the result of the one before.
 
// ----------------------------------------------
// 11. ERRORS
// ----------------------------------------------
 
//  A value of type 'int' can't be assigned to a variable of type 'bool'.
//    -> you wrote = where you meant ==
//
//  A value of type 'double' can't be assigned to a variable of type 'int'.
//    -> x /= 2 on an int. Use ~/= or make x a double.
//
//  The operator '>' isn't defined for the type 'String'.
//    -> '10' > '5' — text can't be compared with > . Convert to int first.
//
//  RangeError
//    -> substring past the end. Crashes WHILE running, not before.
//
//  If your terminal words any of these differently, write its version here.
 
// ----------------------------------------------
// 12. GOTCHAS
// ----------------------------------------------
 
//  '5' == 5        false — NO error, just false. Text is never a number.
//  5 == 5.0        true
//  substring(0,4)  gives 4 characters, positions 0 1 2 3
//  indexOf = -1    means "not found", not an error
 
