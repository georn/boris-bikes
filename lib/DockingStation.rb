require_relative 'Bike'

class DockingStation
  attr_accessor :capacity
  attr_reader :bikes_array

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes_array = []
    @capacity = capacity
  end

  def release_bike
    flag = false
    raise 'No bikes available' unless empty?
    @bikes_array.each { |bike| flag = true if bike.working }
    raise 'All bikes broken' unless flag
    if @bikes_array.last.working?
      @bikes_array.pop
    else
      @bikes_array.rotate!
      release_bike
    end
  end

  def dock(bike)
    raise 'Dock is at capacity' if full?
    @bikes_array << bike
  end

  private

  def empty?
    !@bikes_array.empty?
  end

  def full?
    @bikes_array.count >= DEFAULT_CAPACITY
  end
end
