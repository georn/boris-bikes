class Bike
  attr_accessor :working

  def initialize(working = true)
    @working = working
  end

  def working?
    working
  end

  def breaks
    @working = false
    self
  end
end
