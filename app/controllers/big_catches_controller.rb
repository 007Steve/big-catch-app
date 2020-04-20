class BigCatchesController < ApplicationController
    
    get "/BigCatches" do
        
        erb :"/BigCatches/show"
     end

    get "/BigCatches/new" do
        
       erb :"/BigCatches/new"
    end


    post "" do 

    end



end