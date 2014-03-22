require 'sinatra'

get "/" do
  @task = TaskDatabase.new
  erb :index
end

get "/:task" do
  @new_task = params[:task]
  @task = TaskDatabase.new
  erb :task
end

post "/" do
  @task = params[:task]
  erb :task
end