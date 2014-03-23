require 'sinatra'

require './lib/task_database'


get "/" do
  erb :index
end

get "/:task" do
  TaskDatabase.add(params[:task])
  erb :task
end

post "/" do
  TaskDatabase.add(params[:task])
  erb :task
end