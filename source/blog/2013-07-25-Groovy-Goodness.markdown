---
title: Groovy Goodness
summary: not not the blog...but what I've tasted and seen so far
tags: groovy, learning, languages
---

Oh taste and see that the groovy language is good?  I suppose so, yes,
there is groovy goodness.  No not the [blog](http://mrhaki.blogspot.com/), but some things I've learned
by delving into it over the past few days.

+ Simple ways to include testing by embedding asserts in ones code
+ A closure that can use `it` making it more concise than ruby!
  + In ruby `1.9.3p392 :001 > (1..10).each {|x| print x}`
  + In groovy `groovy:000> (1..10).each {print it}`
  + Each produces the result of `12345678910`, however one was much more
    concise
  + In groovy, `it` is a keyword like in ruby `self` is a keyword and
    `this` is a keyword in javascript

Groovy seems not so much an analogue to other languages like python and
ruby, but more so a great way to gain the benefits of ruby and python
scripting on top of the Java JVM.  Groovy and Java go hand in hand.

Learning groovy seems like its a better way to learn and use Java.  And
from that perspective, I don't feel as much as if I'm bound by java's
personality and rules, but rather learning java in all its goodness but
with an extra toolbelt called groovy.

JL
