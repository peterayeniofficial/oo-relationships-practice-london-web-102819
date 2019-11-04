require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

l = List.new("London")
l1 = List.new("Oxford")
l2 = List.new("London")

g = Guest.new("Peter")
g1 = Guest.new("JAmes")
g2 = Guest.new("Ayeni")

Trip.new(g, l)
Trip.new(g, l1)
Trip.new(g1, l)
Trip.new(g2, l1)
Trip.new(g, l2)
Trip.new(g1, l1)







binding.pry
0