require 'sinatra'
require 'erb'
require 'pusher'

Sinatra::Application.root
set :views, Sinatra::Application.root
set :public_folder, Sinatra::Application.root

Pusher.app_id = '47141'
Pusher.key = 'fd0c03cc1e75152c6be6'
Pusher.secret = ENV['APP_SECRET']

get '/' do
  erb :main
end

post '/deedeedee' do
  Pusher['my_channel'].trigger('my_event', {:message => params[:comment]})
end
