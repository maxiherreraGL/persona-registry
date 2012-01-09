class PatternsController < ApplicationController
  
  /*Para llamarlo patterns#singleton */
  def singleton
    singleton = Unique.instance
    otherSingleton = Unique.instance
    
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
