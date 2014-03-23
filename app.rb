require 'sinatra'

require './lib/task_database'


get "/" do
  @tasks = TaskDatabase::TASKS
  erb :index
end

get "/:task" do
  TaskDatabase.add(params[:task])
  @tasks = TaskDatabase::TASKS
  erb :task
end

post "/" do
  TaskDatabase.add(params[:task])
  @tasks = TaskDatabase::TASKS
  erb :task
end