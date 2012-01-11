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
    
    carShop = CarShop.new
    
    fordCarBuilder = FordCarBuilder.new
    
    audiCarBuilder = AudiCarBuilder.new
    
    #Build Ford Car
    carShop.setCarBuilder fordCarBuilder
    
    carShop.buildCar
    
    car = carShop.getCar
    
    @wheels = car.getWheels
    
    @motor = car.getMotor
    
    @price = car.getPrice
    
    
    #Build Audi Car
    carShop.setCarBuilder audiCarBuilder
    
    carShop.buildCar
    
    car = carShop.getCar
    
    @wheels2 = car.getWheels
    
    @motor2 = car.getMotor
    
    @price2 = car.getPrice
    
  end

  def strategy
  end

end
