require 'sinatra/base'
require './lib/task_database'


class App < Sinatra:: Base
  get "/" do
    @tasks = TaskDatabase::TASKS
    erb :index
  end

  post "/" do
    TaskDatabase.add(params[:task])
    @tasks = TaskDatabase::TASKS
    erb :index
  end
end