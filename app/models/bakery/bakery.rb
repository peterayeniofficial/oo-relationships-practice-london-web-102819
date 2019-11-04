class Bakery
  attr_accessor :ingredients

  @@all = []

  def initialize(ingredients)
    @ingredients = ingredients 
    @@all << self 
  end

  def self.all
    @@all
  end

  def deserts
    Desert.all.select{|desert| desert.bakery == self}
  end

end