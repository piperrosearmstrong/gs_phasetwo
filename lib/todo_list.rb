class TodoList
  def initialize
    @list = []
  end
  
  def add(todo) # todo is an instance of Todo
    @todo = todo  
    @list << @todo
      # Returns nothing
  end
  
  def incomplete
    @list.each do |task|
      @done.index(task) ? true : puts 
    end
      # Returns all non-done todos
    #   WORK ON THIS SECTION PIPER. RUN RSPEC.
  end
  
  def complete
      # Returns all complete todos
  end
  
  def give_up!
      # Marks all todos as complete
  end
end