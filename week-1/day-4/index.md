# Thursday September 29

## Daily JS

String Concatenation & ES6 Strings

```js
var x = 2;
var y = 3;
var z = 'hello';
var a = 'world';
var b = '2';
var c = `${a} foo ${b}`;
var d = `foo`;
var e = `${x} + ${y} = ${x + y}`;
var f = x + ' + ' + y + ' = ' + (x + y);

console.log(x + y); //
console.log(z + a); //
console.log(z + ' ' + a); //
console.log(c); //
console.log(d); //
console.log(e); //
console.log(x + z); //
console.log(x + b); //
console.log(x + Math.parseInt(b)); //
```

## Daily JS

Arrays and Objects (all ES6 like)

```js
var x = [1, 2, 3];
var y = [1, 2, 3];
var z = [x, y];
var a = {'something': x, another: 'hello'};
var b = {x, y};
var c = {x, y};
var d = c;

console.log(x === y);
console.log(x == y);
console.log(x[0]);
console.log(y[0] === x[0]);
console.log(z[0] === x);
console.log(a.another);
console.log(a['something']); // How far does it go?
console.log(b === c);
console.log(c === d);

/* Results (Printed statements from console.logs) */
//
//
//
//
//
//
//
//
//
```

## Topics

* **[`vh` and `vw` Units](https://css-tricks.com/the-lengths-of-css/#article-header-id-12)**
* [Flex Box](https://online.theironyard.com/paths/579/units/3469/lessons/14037)
  - Flex Parent vs Flex Children `display: flex`
  - `flex-direction` (Parent)
    * Primary Axis
  - `flex-basis`, `flex-grow`, `flex-shrink` (Child)
  - `flex-wrap` (Parent)
* **[Moving Flexbox Content](https://css-tricks.com/snippets/css/a-guide-to-flexbox/)**
  - `justify-content` vs `align-items` (Parent)
  - `align-content` (Parent)
  - `align-self` (Child)
* **Flexbox Patterns**
  - Sticky Footer

* [Breaking Down a Layout](https://online.theironyard.com/paths/579/units/3469/lessons/14038)
* [Layout Techniques](https://online.theironyard.com/paths/579/units/3469/lessons/14039)

## Inspiration

### Tumblr Splash Page

[![Tumblr Splash Page](http://themes.iamabdus.com/star/1.1/index.html)](http://themes.iamabdus.com/star/1.1/index.html)

## Exercise & Lesson Code

https://github.com/TIY-TN-FEE-2016-spring/lesson-01-04

## Lab

### Video

[Content Driven Layouts with Flexbox](https://youtu.be/R53ehAOaVpk)

### Exercise

[Flexbox Froggy](http://flexboxfroggy.com/)

## Homework

https://github.com/TIY-TN-FEE-2016-spring/assignments/tree/master/04-surf-and-paddle
