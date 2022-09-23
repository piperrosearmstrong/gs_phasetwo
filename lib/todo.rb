class Todo
  def initialize(task)
    @task = task
    @done = []
  end
  
  def task
    @task
  end
  
  def mark_done!
    @done << @task
  end
  
  def done?
    @done.index(@task) ? true : false
  end
end