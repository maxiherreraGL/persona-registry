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

  #Para llamarlo patterns/factory 
  def factory  
    @potatoe = Factory.create_product('Potatoe').type
    @tomatoe = Factory.create_product('Tomatoe').type
  end

  def builder
  end

  def strategy
  end

end
