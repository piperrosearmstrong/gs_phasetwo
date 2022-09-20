# {{Task Tracker}} Class Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

> As a user
> So that I can keep track of my tasks
> I want a program that I can add todo tasks to and see a list of them.

> As a user
> So that I can focus on tasks to complete
> I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

class TodoList
  def initializer
  end

  def add(task) # task is a string representing an instruction
    # returns nothing
  end

  def list
    # returns a list of the tasks added as string
    # except the completed ones
  end

  def complete(task) # task is a string representing a task to mark complete
    # returns nothing
    # fails if the task doesn't exist
  end
end

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

1

todo_list = TodoList.new
todo_list.list => []

2

todo_list = TodoList.new
todo_list.add("Blow out candles")
todo_list.list => ["Blow out candles"]

3

todo_list = TodoList.new
todo_list.add("Blow out candles")
todo_list.add("Close the window")
todo_list.list => ["Blow out candles", "Close the window"]

4

todo_list = TodoList.new
todo_list.add("Blow out candles")
todo_list.add("Close the window")
todo_list.complete("Blow out candles")
todo_list.list => ["Close the window"]

5

todo_list = TodoList.new
todo_list.add("Blow out candles")
todo_list.complete("Hang out the washing.")
todo_list.list => fails "No such task."

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
