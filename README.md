# Elm window resize sample project

## Getting started

You need to have [Elm](http://elm-lang.org/) 0.17 installed on your machine.

Install dependencies:

    elm package install

Compile this project with:

    elm make src/Main.elm

Then view it:

    elm reactor

## Why?

This is a response to [Michel Belleville](https://groups.google.com/forum/#!topic/elm-discuss/d9B3gpdjbwU)'s question on the Elm mailing list about why his SVG `onResize` event was not firing when the window size changes.
