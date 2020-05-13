require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do
        erb :new
    end

    post "/teams" do
        @the_team = params[:team]
        erb :team
    end
end
