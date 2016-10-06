# Thursday October 6

## Daily JS

### Objects and an intro to `this`

```js
var x = function(shaun) {
  return shaun + 10;
};

var whatsThis = function() {
  return this;
};

var y = function() {
  return this.firstName;
};

var o = {};

var z = {
  firstName: 'John',
  lastName: 'Doe',

  somethingCool: x,

  getFirstName: y,

  fullName: function() {
    return `${this.firstName} ${this.lastName}`;
  },

  setName(first, last) { //
    this.firstName = first;
    this.lastName = last;
  },
};

console.log(x(12)); // 22
console.log(whatsThis()); // Window or Error in "use strict"
console.log(z.firstName);  // "John"
console.log(z['firstName']);  // "John"
console.log(y()); // undefined or Error in "use strict"
console.log(x(8)); // 18
console.log(z.somethingCool(8)); // 18
console.log(z.getFirstName()); // "John"
console.log(z.fullName()); // "John Doe"
z.setName('Han', 'Solo');
console.log(z.fullName()); // "Han Solo"
z.firstName = "Luke";
z.lastName = "Skywalker";
console.log(z.fullName("Foo", "Bar")); // "Luke Skywalker"
z.lastName = "Organa";
console.log(z.fullName()); // "Luke Organa"
z.setName("Jar Jar");
console.log(z.fullName()); // "Jar Jar undefined"
```

## Interruptions and Events

* 2PM - ¿ One on ones

## Standups

* What is going well?
* What is not going well (what are you struggling with)?
* What's something you'd like to share not about code?
* What's something you've learned

### Common Wins

* Asking Questions Early and Often
* Sometimes We Need Sleep
* Tshirts Progress! *x4*
* Catching Up *x2*
* Flex *x2*
* Present

### Common Struggles

* [Naming](http://martinfowler.com/bliki/TwoHardThings.html)
* Falling Back on HW
* Media Queries *x3*
* Relying on Help
* Concepts

## Topics

* Resources (Who to trust first?)
* Scrollable Areas
* Introduction to NPM
* Modifying Build Tools
  - [Yoga SASS](http://rtablada.github.io/yoga-sass/)
  - [Saffron](https://github.com/colindresj/saffron/wiki/Using-the-mixins)
* SASS Extends
* SASS Mixins
  - Yoga SASS

## Inspiration

![Desktop](big-info.jpg)
![Mobile](mobile-info.jpg)

## Exercise & Lesson Code

https://github.com/TIY-TN-FEE-2016-fall/lesson-02-04

## Lab

## Homework
