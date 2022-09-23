class TodoList
  def initialize
    @list = []
  end
  
  def add(todo)
    @todo = todo  
    @list << @todo
  end
  
  def incomplete
    @list.select { |task| !task.done? }.map { |task| task.task }
  end
  
  def complete
    complete = @list.select { |task| task.done? }.map { |task| task.task }
  end
  
  def give_up!
    @list.select { |task| !task.done? }.map { |task| task.mark_done! }
    complete
  end
end