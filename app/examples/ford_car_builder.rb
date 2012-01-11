class FordCarBuilder < CarBuilder
  
  def buildWheels
    @car.setWheels '4'
  end
  
  def buildMotor
    @car.setMotor '2000cc'
  end
  
  def buildPrice
    @car.setPrice '4500$'
  end
  
end