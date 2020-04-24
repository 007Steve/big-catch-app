class CatchesController < ApplicationController
    
   
#show all 
   get "/catches" do
    @catches = Catch.all.reverse
    erb :"/catches/index"
 end
#create new 
    get '/catches/new' do
        
       erb :"/catches/new"
    end

#create new and save to db
    post '/catches' do 
      #if !logged_in?
      #  redirect "/"
     # end
            @new_catch = Catch.new(params)
            if @new_catch.save
         
            redirect "/catches/#{@new_catch.id}"
        else
             # @error = "Please fill in all information."
              redirect "/catches/new"
        end
        end
        

#show route for catch
 get '/catches/:id' do
    @catch = Catch.find(params[:id])
      erb :"/catches/show"
     end
        



    
#

# show edit form
     get '/catches/:id/edit' do
       
        @catch = Catch.find(params[:id])
         #if logged_in?
           # if @catch.user == current_user
              erb :'/catches/edit'
       #else
        # doesnt redirect
          # redirect "users/#{current_user.id}"
       # end
       # else
        #    redirect '/catches'
        #end
     end

     

# patch    
      patch '/catches/:id' do
         
        @catch = Catch.find(params[:id])
        #fix it
        #if logged_in?
        #if @catch.user == current_user && params[:name] != "" && params[:image] != "" && params[:length] != "" && params[:weight] != ""
        
        if !params["name"].empty? && !params["image"].empty? && !params["length"].empty? && !params["weight"].empty? 
         
              @catch.update(name: params[:name],image: params[:image],length: params[:length], weight: params[:weight])
      
              redirect "/catches/#{params[:id]} "
         else
               redirect "/users/#{current_user.id}"  
             end
           # else
             # redirect  '/catches/'
       # end
    end
#delete
        
delete "/catches/:id" do 
   
      @catch = Catch.find(params[:id])
     # if @catch.user.id == current_user
          @catch.destroy
          redirect "/catches"
         

          
  end
        

 end

