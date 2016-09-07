Young Ju (Sally) Park
Module 9.3: jQuery
September 6th, 2016

# R0: Make a Plan

**Instructions:** Spend 10 minutes making a plan for how you intend to tackle jQuery and learn as much as you can in two hours. What sorts of resources will help? How often should you stop and test what you just learned? Are breaks important? Make a few notes in the file on how you plan to approach the topic, and why.

## Resources that will help:

* Google
* StackOverflow
* Various sites that have tutorials (w3Schools, etc.)

## How often should you stop and test what you just learned?

Whenever coming across something drastically different or completely new from what I'd seen before.

## Are breaks important?

If I'm feeling overwhelmed or tired, then I'll take a 5 minute break to get up and walk around (rehydrate and whatnot).

# R1: Study Up

## What is jQuery?

jQuery is a lightweight, "write less, do more" JS library. The purpose of jQuery is to make it easier to use JS on your website.
jQuery takes a lot of common tasks that require many lines of JS code to accomplish, and wraps them into methods that you can call with a single line of code.

jQuery library contains the following features:
* HTML/DOM manipulation
* CSS manipulation
* HTML event methods
* Effects/animations
* AJAX
* Utilities

## Getting Started

To start using jQuery on our website, we must either download the jQuery library from jQuery.com, or include jQuery from a CDN (like Google).

I'll probably just end up including it from a CDN. To use jQuery from Google, we simply use

```<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>```

## Basic jQuery Syntax

jQuery syntax is tailored to select HTML elements performing some action on the elements.

The basic syntax is `$(selector).action()`.

  * `$` sign is to define/access jQuery.
  * `(selector)` to query/find HTML elements
  * `action()` to be performed on the element(s).

#### Examples

  * `$(this).hide()` hides the current element
  * `$("p").hide()` hides all `<p>` elements
  * `$(".test").hide()` hides all elements with `class="test"`
  * `$("#test").hide()` hides the element with `id="test"`

#### The Document Ready Event

A good practice: put all jQuery methods inside of a document ready event:

    $(document).ready(function(){
    // jQuery methods go here..
    });

This is to prevent any jQuery code from running before the document is finished loading.

## jQuery Selectors

All selectors in jQuery start with the dollar sign and parentheses: `$()`.

[List of jQuery Selectors](http://www.w3schools.com/jquery/jquery_ref_selectors.asp)

#### The element selector

jQuery element selector selects elements based on the element name.

**Example:** Select all `<p>` elements on a page like so: `$("p")`.

#### The #id selector

jQuery #id selector uses the id attribute of an HTML tag to find the specific element.

**Example:** Select the element on a page with the id `#id` by doing `$("#id")`.

#### The .class selector

jQuery class selector finds elements with a specific class.

**Example:** Select elements on page of the class called `test` by doing `$(".test")`.

More examples:

| SYNTAX                    | DESCRIPTION                                                               |
|-------------------------- |-------------------------------------------------------------------------- |
| `$("*")`                  | Selects all elements                                                      |
| `$(this)`                 | Selects the current HTML element                                          |
| `$("p.intro")`            | Selects all <p> elements with class="intro"                               |
| `$("p:first")`            | Selects the first <p> element                                             |
| `$("ul li:first")`        | Selects the first <li> element of the first <ul>                          |
| `$("ul li:first-child")`  | Selects the first <li> element of every <ul>                              |
| `$("[href]")`             | Selects all elements with a href attribute                                |
| `$("a[target='_blank'")`  | Selects all <a> elements with a target attribute value equal to '_blank'  |
| `$(":button")`            | Selects all <button> elements and <input> elements of type="button"       |
| `$("tr:even")`            | Selects all even <tr> elements                                            |
| `$("tr:odd")`             | Selects all odd <tr> elements                                             |

## jQuery Event Methods

All the different user's actions that a webpage can respond to are called events.
An event represents the precise moment when something happens.

[List of jQuery Event Methods](http://www.w3schools.com/jquery/jquery_ref_events.asp)

Examples:

* moving a mouse over an element
* selecting a radio button
* clicking on an element

Common DOM events:

| Mouse Events  | Keyboard Events   | Form Events   | Window Events   |
|-------------- |-----------------  |-------------  |---------------  |
| click         | keypress          | submit        | load            |
| dblclick      | keydown           | change        | resize          |
| mouseenter    | keyup             | focus         | scroll          |
| mouseleave    |                   | blur          | unload          |

#### jQuery Syntax for Event Methods

An example: To assign a click event to all paragraphs on a page and then define what should happen when the event fires, we do:

    $("p").click(function(){
    // action goes here!!
    });

Click [here](http://www.w3schools.com/jquery/jquery_events.asp) for some more examples of 

#### Attach more than one event handler for selected element

The `on()` method attaches one or more event handlers for the selected elements.

An example:

    $("p").on({
    mouseenter: function(){
        $(this).css("background-color", "lightgray");
    }, 
    mouseleave: function(){
        $(this).css("background-color", "lightblue");
    }, 
    click: function(){
        $(this).css("background-color", "yellow");
    } 
    });```

# Reference for Later

[jQuery Hide/Show, etc.](http://www.w3schools.com/jquery/jquery_hide_show.asp)
