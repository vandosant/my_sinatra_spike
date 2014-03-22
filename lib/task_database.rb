class TaskDatabase
  attr_reader :task_list

  def initialize
    @task_list = []
  end

  def add(new_task)
    @task_list << new_task
  end
end