class Guest

  attr_accessor :name 
  @@all = []

  def initialize (name)
    @name = name 
    @@all << self
  end 

  def self.all
    @@all
  end

  def trips
    Trip.all.select{|trip| trip.guest == self}
  end

  def listings
    trips.map{|trip| trip.list}
  end

  def self.pro_traveller
    pro = Guest.all.select {|g| g.trips.count > 1}
    pro.map(&:name)
  end

  def self.find_all_by_name(name)
    Guest.all.find_all{|guest| guest.name == name}
  end

end
