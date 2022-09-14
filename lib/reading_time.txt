# {{READING TIME}} Method Design Recipe

## 1. Describe the Problem

_As a user_
_So that I can manage my time_
_I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute._

## 2. Design the Method Signature

_Method: reading_time_
_Parameters: text_length(the number of words in the user's text)_
_Return Value: it returns an integer value of minutes taken to read a text._
_Side Effects: N/A_

## 3. Create Examples as Tests

_reading_time(600) => 3 minutes_

## 4. Implement the Behaviour

