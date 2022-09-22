require 'todo'
require 'todo_list'

RSpec.describe Todo do
  context 'testing the task method' do
    it 'returns the task as a string' do
      task = Todo.new("Do a load of laundry.")
      expect(task.task).to eq "Do a load of laundry." 
    end
  end

  context 'testing the mark_done! method' do
    it 'marks the todo as done' do
      task = Todo.new("Do a load of laundry.")
      expect(task.mark_done!).to eq ["Do a load of laundry."]
    end 
  end

  context 'testing the done? method' do
    it 'returns true if the task is done' do
      task = Todo.new("Do a load of laundry.")
      task.mark_done!
      expect(task.done?).to eq true
    end

    it 'returns false if the task has not been done' do
      task = Todo.new("Do a load of laundry.")
      expect(task.done?).to eq false
    end
  end
end

RSpec.describe 'Integrated To-Do List' do
  context 'testing the add method' do
    it 'adds a task to the todo list' do
      list = TodoList.new
      task = Todo.new("Hang out the washing.")
      expect(list.add(task)).to eq [task]
    end
  end

  context 'testing the incomplete method' do
    it 'returns all non-done todos' do
        list = TodoList.new
        task = Todo.new("Hang out the washing.")
        list.add(task)
        task2 = Todo.new("Make dinner.")
        list.add(task2)
        task2.mark_done!
        expect(list.incomplete).to eq "Hang out the washing."
    end
  end
end