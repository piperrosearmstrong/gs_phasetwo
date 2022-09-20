class TodoList
  def initialize
    @tasks = []
  end
  
  def add(task) 
      @tasks << task
  end
  
  def list
      @tasks
  end
  
  def complete(task) # task is a string representing a task to mark complete
      fail "No such task." unless @tasks.include? task
    #   Unless the array contains the task passed as a parameter, it will fail
      @tasks.delete(task)
    #   If the task exists in the array, remove it.
  end
end