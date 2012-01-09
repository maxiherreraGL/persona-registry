class PatternsController < ApplicationController
  
  #Para llamarlo patterns#singleton 
  def singleton
    singleton = Unique.instance
    otherSingleton = Unique.instance
    
    #El metodo new queda declarado con private en la clase Unique
    #otherInstance = Unique.new
    
    if singleton == otherSingleton
      @message = 'true'
    else
      @message = 'false'
    end
      
  end

  def factory
  end

  def builder
  end

  def strategy
  end

end
