require_relative 'wagon'
class CargoWagon < Wagon
  attr_reader :capacity

  def initialize(capacity)
    super
    @loaded = 0
    self.type = 'Грузовой'
  end

  def curr_capacity?
    @capacity - @loaded
  end

  def load(amount)
    @loaded += amount if amount <= @capacity - @loaded
  end

  def loaded?
    @loaded
  end

  def free?
    @capacity - @loaded
  end
end
