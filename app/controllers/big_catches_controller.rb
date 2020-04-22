class CatchesController < ApplicationController
    
    
#create new 
    get "/Catches/new" do
        
       erb :"/Catches/new"
    end

#create new and save to db
    post "/Catches" do 
      #if !logged_in?
      #  redirect "/"
     # end
        
            
            @new_catch = Catch.create(params)
            if @new_catch.save
         
            redirect "/Catches/#{@new_catch.id}"
        else
        
       redirect "/Catches/new"
        end
        end
        

#show created catch
 get "/Catches/:id" do
        
      @catch = Catch.find(params[:id])
      erb :"/Catches/show"
     end
        



    
#show all 
   get "/Catches" do
        @catches = Catch.all
        erb :"/Catches/index"
     end

# show edit form
     get '/catches/:id/edit' do
       erb :'/catches/edit'
      end
     



 end
    