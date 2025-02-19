require_relative 'config/environment'
require "pry"

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get "/goodbye/:name" do
    @user = params[:name]
    "Goodbye, #{@user}."
  end

  get "/multiply/:num1/:num2" do
    @answer = params[:num1].to_i * params[:num2].to_i
    # binding.pry
    "#{@answer}"
  end

  # Code your final two routes here:

end