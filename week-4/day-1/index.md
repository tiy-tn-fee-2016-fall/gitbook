# Monday October 16

## Exercise

In the Javascript panel of this codepen achieve the following:

Using only Javascript, make the text on the left:
  * White Text on a Red Background
  * Give it extra whitespace
  * Make the text say "Red Pandas RULE"

BONUS
  * Create an image element using Javascript
  * Add this new element to the end of the page
  * Set the image `src` to `http://i.imgur.com/vxKOi.gif?noredirect`

http://codepen.io/rtablada/pen/mEwYGv?editors=1010

## Lab Schedule

* 2PM - 2:30PM Call
* 2:30PM - 3:00 JS Review

## Standups

* What is going well?
* What is not going well (what are you struggling with)?
* What's something you'd like to share not about code?
* What's something you've learned

### Common Wins

* Some HW Progress
* Styling and CSS
* Looking Back
* Getting Used to not Knowing
* `console.log` and `debugger`
* New Day

### Common Struggles

* JS *3x*
* Backlog *3x*
* Functions Arguments
* How to ask Questions

## FAQ and Review

* [ ] Test Driven Development - Dedicated Lesson this Week
* [ ] `debugger`
* [X] JS DOM manipulation
  * [X] `document.createElement(tagName)` - Creates a new element floating around in memory (not shown to user yet)
  * [X] `document.querySelector(selector)` - Looks for the first instance of an element that matches the selector in the whole page
  * [X] `element.querySelector(selector)` - Looks for the first instance of an element that matches the selector within a specific element
    - [X] ex. `track.querySelector('h1')` this selects the first `h1` element in the `track` element
  * [X] `element.classList.add(className)` - Adds a class to the element based on the passed in string argument
    - [X] ex. `track.classList.add('track-item')`
  * [X] `element.classList.remove(className)` - Removes a class from the element based on the passed in string argument
    - [X] ex. `track.classList.remove('track-item')`
  * [X] `element.classList.toggle(className)` - If the class does not exist on the element add it, if it does, remove it (helpful for hiding/showing elements like dropdowns or for CSS animations)
    - [X] ex. `dropdown.classList.toggle('is-open')`
    - [X] ex. `dropdown.classList.toggle('dropdown--open')`
  * [X] `element.innerText` - Sets the contents of the element, escaping all special characters (helpful to protect from scripting attacks)
  * [X] `element.innerHTML` - Sets the contents of the element and all content will be parsed as HTML. This should only be used for templates, string literals, and TRUSTED information (so don't use it with variable data).
    - [X] This is `x.innerHTML = someVariable`  (what if `someVariable = '<script type="javascript">window.location = "http://someothersite.com"</script>'`, this would redirect our page based on user input data and allow for security attacks)

## Topics

* Object Oriented Programing Introduction
  - What is the `prototype` in Javascript?
    * String.prototype.*
    * Array.prototype.*
      - `Array.prototype.forEach`
  - Constructor Functions
  - Classes
* DOM Review

### Data

```json
[
  {
    "firstName": "Olivia",
    "lastName": "Dunham",
    "hair": "blonde",
    "universe": 1,
    "profession": "FBI Special Agent",
    "age": 35
  },
  {
    "firstName": "Walter",
    "lastName": "Bishop",
    "universe": 1,
    "profession": "Research Scientist",
    "age": 64
  },
  {
    "firstName": "Peter",
    "lastName": "Bishop",
    "universe": 1,
    "profession": "Civilian Consultant",
    "age": 33
  },
  {
    "firstName": "William",
    "lastName": "Bell",
    "universe": 1,
    "profession": "CEO Massive Dynamic",
    "age": 83
  },
  {
    "firstName": "Astrid",
    "lastName": "Farnsworth",
    "universe": 1,
    "profession": "FBI Agent",
    "age": 28
  },
  {
    "firstName": "Charlie",
    "lastName": "Francis",
    "universe": 1,
    "profession": "FBI Agent",
    "age": 33
  },
  {
    "firstName": "Phillip",
    "lastName": "Broyles",
    "universe": 1,
    "profession": "Senior FBI Agent",
    "age": 56
  },
  {
    "firstName": "David",
    "lastName": "Robert Jones",
    "universe": 1,
    "profession": "Bioterrorist",
    "age": 52
  }
]
```

## FAQ

* [ ]

## Code

https://github.com/tiy-tn-fee-2016-fall/lesson-week-04/tree/day-01

## Homework
