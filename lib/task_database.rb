class TaskDatabase
  TASKS = []

  def self.add(new_task)
    TASKS << (new_task)
  end
end