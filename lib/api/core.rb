module Api
  class Core < Sinatra::Base 
    #Person
    get '/people' do
      people = Person.all
      people.to_json
      
    end
    get '/people/:id' do
      people = Person.find(params[:id])
      people.to_json
    end
    
    post '/people' do
      @person = Person.new(params[:person])
      @person.save
    end
    
    put '/people/:id' do
      @person = Person.find(params[:id])
      if @person.update_attributes(params[:person])
        
      else
      end
    
    end
    
    delete '/people/:id' do 
      @person = Person.find(params[:id])
      @person.destroy
      puts 'llala'
    end
    
   
    

  end
  
end