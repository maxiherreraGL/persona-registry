class CarShop
  
  def setCarBuilder cb
    @carBuilder = cb
  end
  
  def buildCar
    @carBuilder.buildCar
  end
  
  def getCar
    @carBuilder.getCar
  end
   
end