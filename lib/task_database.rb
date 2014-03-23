class TaskDatabase
  TASKS = []

  def self.add(new_task)
    TASKS << (new_task)

    TASKS.each do |item|
      if item.include?("favicon.ico")
        TASKS.delete(item)
      end
    TASKS
    end

  end
end