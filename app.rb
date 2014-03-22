require 'sinatra'

get "/" do
  erb :index
end

get "/:task" do
  @task = params[:task].gsub("-", " ").capitalize
  erb :task
end

post "/" do
  @task = params[:task]
  erb :task
end