# Syntax Possibilities


Javascript is made of of a bunch of individual statements (instructions).
  - Think of JS statements as English sentences
  - Almost always ends with `;`
    - Function declaration does not need a `;`
    - `if`/`else` statements do not need a `;`
    - `for` loops do not need a `;`
    - `while` loops do not need a `;`
    - `try`/`catch` statements do not need a `;`
  - Either: doing something right now or storing information for later

```js
// Put away x for later
var x = 2;
// log to the console NOW
console.log('Hello');

// Storing the "hey" function to be run later
function hey() {
  return 'Foo';
}

hey();

moment.now(); // Returns the current time as an object
```

Javascript has two major "modes"
- Run mode (where most of our code is running!)
  - Statements run from top to bottom
- Object mode
  - Only can set key/values (cannot run statements)

```js
// Run mode until the "{"
const Controller = new FramworkThing({
  // Object Mode
  el: '#foo',

  actions: {
    // Still Object Mode
    whenClicked() {
      // Run mode within this method/function
      alert('you clicked on a thing');

      this.set('done', true);
    },
  },
});

// Back in run mode, this calls `whenClicked`
Controller.actions.whenClicked();
```

## Variables

A place to store information for later use

- Variable Declaration
  * Making a spot in memory and naming it ('Putting the label on a locker')
  * This is the time when Javascript decides where a variable can be used (scoping)
  * `var someVariableName`, `let anotherVariableName`
- Variable Assignment
  * Storing a set of information into a declared variable (putting something into the locker)
  * Uses the `=` **operator**
    - Left side is the variable to put things in, right side is what should be stored

```js
2 = 3; // Invalid left-hand side assignment error
cardSum(2, 4) = cardSum(4, 8); // Invalid left-hand side assignment error
cardSum(4, 8) = cardSum(4, 8); // Invalid left-hand side assignment error
cardSum(2, 4) = x;  // Invalid left-hand side assignment error
x = cardSum(2, 4);
x = 3;
```

> **COMMON SYNTAX ERROR** Using the `=` operator instead of the `==` or `===` operator for comparison

```js
// This is storing value 3 in x NOT comparing x and 3
if (x = 3) {

}

// This compares that x and 3 are the same data type AND the same value
if (x === 3) {

}
```

A word about `const`
- `const` creates a constant within the current scope
- For `const` declaration AND assignment must be in the same statement
- Variables declared with `const` cannot be reassigned

```js
const x = 4;
x = 5; // ERROR: Assignment to constant variable.
```

> **WARNING** See object reference when talking about `const` and objects/arrays

```js
const h = {
  firstName: 'Homer',
  lastName: 'Simpson',
};

h.firstName = 'Marge'; // This is ok since const only restricts reassigning "h"
```

Keyword or Type      | Reassign | Will it Hoist? | Scope Boundary
---------------------|----------|----------------|--------------------------------------------------------
Function Arguments   | ???      | NO             | Functions
Function Declaration | ???      | YES            | Functions
`var`                | YES      | YES            | Functions
`let`                | YES      | NO             | `if`, `else`, `while`, `for`, `try`, `catch`, Functions
`const`              | NO       | NO             | `if`, `else`, `while`, `for`, `try`, `catch`, Functions


### Data Types

#### Simple or Primitive Data Types
- `undefined` a variable that has not been set or that has been unset
- `null` a very specific definition of empty
- Boolean `true` or `false` - Used in logic or decision making
- Numbers
  * Unlike typed languages (Java, C, C++, etc), Javascript only has one type of number that can store integers or decimals
- String - ordered series of text characters
  * Can be created using by wrapping a set of characters in: `'` or `"`
    - These strings cannot move across multiple lines
  * ES6 Template Strings use the tilde
    - Allows for code execution using `${codeGoesHere}`
    - Allow for multiple lines

```js
// undefined
var x;
// null
const n = null;
// boolean
const b = true;
const b1 = false;
const b2 = (3 === 4); // false
const b2 = (3 !== 4); // true
// numbers
const num = 0;
const num1 = 13;
const num2 = -30;
const num3 = 3.14;
const num4 = Math.PI;
// strings
const st = "Hello world";
const st2 = 'Hey there class';
const st3 = num1.toString();
const st4 = `Strings are cool`;
const st5 = `The value of Pi is: ${Math.PI}`;
const st6 = `<ul>
              <li>Don't mind me...</li>
              <li>Just some HTML in your Javascript</li>
              <li>${st4}</li>
            </ul>`;
const st7 = `Multiline
strings
don't have
to be HTML`;
```

### Functions

Functions are just data that can be stored...

### Object Based Data Types

- Objects: a "folder" for containing organized data
- Array: an ORDERED series of pieces of data

- Objects are made up of many properties or attributes.
- Each property is made up of two pieces
  * Key or Position - Location or label saying where to find data in this object - Left side of property assignment
  * Value - Data that is being stored - Right side of property assignment

Syntax for Objects
- Make a new object with `{}`
- Properties have keys and values separated by `:`
  - Keys can optionally be wrapped in single or double quotes (this is required for property names with dashes or spaces)
  - Properties can also use shorthand if an variable exists that matches the new property name
  - Properties can contain _any_ *Data Type* (null, boolan, number, string, function, object, array)
- Each property is separated using `,`
  - Optionally a trailing comma can be left at the end of the last property
- Functions within objects are often called *"methods"*

```js
const Simpson = 25;
const age = 34;

const h = {
  hey: "there",
  "first-name": 'Homer',
  lastName: Simpson,
  // Short hand this is the same as
  // age: age,
  age,
  funny: true,
  eat: function () {
    this.weight += 10;
  },

  children: [
    {
      firstName: 'Bart',
    },
    {
      firstName: 'Lisa',
    },
    {
      firstName: 'Maggie',
    },
  ],

  // Short hand this is the same as
  // watchTv: function() { ... },
  watchTv() {
    alert('ahhhhhhhh.........');
  },
};
```

#### Array Syntax
- Make a new array with `[]`
- Unlike objects, the "key" or "position" of a item is automatically assigned based on order
- First position: `0`
- Position, key, or "Index" can be used to refer to the look up value for an array
- Values can be accessed using `[position]` after the array name
- Positions can be reassigned using the same `[position]` syntax

```js
const x = [1, 2, 300];

var z = x[2]; // 300
x[1] = "Hello";
x[3] = "World";
x[5] = "After";

console.log(x); // [1, "Hello", 300, "World", undefined, "After"]
```

Array Best Practices

- All Items within an array should be similar to avoid confusion (this has the added benefit of performance optimizations)
- Unless you really mean to, fill all positions in an array starting at 0
