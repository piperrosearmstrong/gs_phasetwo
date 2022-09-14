# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

## 2. Design the Method Signature

does_include_text = checking_string(string)
string is a string of words
does_include_text will be a boolean value 

## 3. Create Examples as Tests

checking_string("hello #TODO") => true
checking_string("goodbye") => false
checking_string("") => false

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

