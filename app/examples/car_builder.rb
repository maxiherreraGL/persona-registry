class CarBuilder
  
  def buildCar
    @car = Car.new
    buildWheels
    buildMotor
    buildPrice
  end
  
  def getCar
    @car
  end  
  
  def buildWheels
    raise NotImplementedError
  end
  
  def buildMotor
    raise NotImplementedError
  end
  
  def buildPrice
    raise NotImplementedError
  end
  
end