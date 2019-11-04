class List

  attr_reader :city 
  @@all = []

  def initialize (city)
    @city = city
    @@all << self
  end 

  def self.all
    @@all
  end

  def trips
    Trip.all.select{|trip| trip.list == self}
  end

  def trip_count
    trips.count
  end

  def self.find_all_by_city(city)
    self.all.find_all{|list| list.city == city}
  end


  def self.most_popular
    most = self.all.max_by {|l| l.trips.size}
    most.city
  end

end
