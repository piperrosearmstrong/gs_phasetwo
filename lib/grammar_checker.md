# {{GRAMMAR CHECKER}} Method Design Recipe

## 1. Describe the Problem

_As a user_
_So that I can improve my grammar_
_I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark._

## 2. Design the Method Signature

_Method: grammar_checker_
_Parameters: text_
_Return Value: returns a true/false answer whether or not it is grammatically correct_
_Side Effects: N/A_

## 3. Create Examples as Tests

_grammar_checker(i don't like dogs) => "This sentence is not grammatically correct"_
_grammar_checker(I don't like dogs.) => "This sentence is grammatically correct"_

## 4. Implement the Behaviour