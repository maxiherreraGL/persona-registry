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
      person = Person.new(params[:person])
      if person.save
        'El registro fue guardado con exito'.to_json
      else
        'Ha ocurrido un problema no se guardo el registro'.to_json
        
      end
      
    end
    
    put '/people/:id' do
      person = Person.find(params[:id])

      if person.update_attributes(params[:person])
        "El registro afectado fue #{params[:id]} y los parametros modificados fueron #{params[:person]}".to_json
      else
        'Ha ocurrido un error'.to_json
      end
    
    end
    
    delete '/people/:id' do 
      person = Person.find(params[:id])
      
      if person.destroy
        'El registro fue eliminado'.to_json
      else
        'Ha ocurrido un problema el registro no se elimino'.to_json
      end
    end
    
    
  

  end
  
end