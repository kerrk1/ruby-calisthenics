class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  
  attr_accessor :name, :calories
  
  def healthy?
    return true if @calories < 200
		return false
  end
  
  def delicious?
    return true
  end
  
end

class JellyBean < Dessert
  def initialize(flavor)
    @flavor = flavor
    @name = flavor + " jelly bean"
		@calories = 5
  end
  
  attr_accessor :flavor
  
  def delicious?
		return true unless @flavor == "licorice"
  end
	
end
