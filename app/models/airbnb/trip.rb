class Trip

  attr_reader :guest, :list
  @@all = []

  def initialize (guest, list)
    @guest = guest
    @list = list
    @@all << self
  end 

  def self.all
    @@all
  end

end
