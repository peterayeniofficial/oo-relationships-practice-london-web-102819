class Desert

  attr_reader :desert, :bakery
  @@all = []

  def initialize(ingredients, bakery)
    @ingredients = ingredients
    @bakery = bakery 
    @@all << self 
  end

  def self.all
    @@all
  end
end