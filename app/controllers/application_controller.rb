require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions 
    set :sessions_secret, "bca"
    set :method_override, true
  end
  
         

  get "/" do
   if redirect_if_logged_in
   redirect "/login"
      
    else

    erb :welcome
    end
  end
 
  helpers do 
    def logged_in?
     session[:user_id]
     
    end

    def current_user
       @user ||= User.find_by(id: session[:user_id])
       

    end
    def redirect_if_not_logged_in
      if !logged_in?
        redirect "/login"
      end
    end

    def redirect_if_logged_in
      if logged_in?
        redirect "/catches"
        end
      
    end
  
  end
end