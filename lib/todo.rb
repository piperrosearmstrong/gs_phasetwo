class Todo
  def initialize(task) # task is a string
    @task = task
    @done = []
  end
  
  def task
    @task
  end
  
  def mark_done!
    @done << @task
    # @task + "done"
  end
  
  def done?
    @done.index(@task) ? true : false
    # @task.include?(".done") ? true : false
    # Returns true if the task is done
    # Otherwise, false
  end
end