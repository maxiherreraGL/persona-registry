class Factory
  
  #self. for static methods
  def self.create_product(name)
    #instance class dinamically
   Object::const_get(name).new
  end
  
end