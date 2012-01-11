class AudiCarBuilder < CarBuilder
  
  def buildWheels
    @car.setWheels '4'
  end
  
  def buildMotor
    @car.setMotor '3500cc'
  end
  
  def buildPrice
    @car.setPrice '8000$'
  end
  
end