class Station

  attr_accessor :name

  def initialize(name)
    @name = name
    @trains_on_station = []
  end
  
  def train_arrival(train)
    @trains_on_station << train
  end
  
  def get_trains_list
    @trains_on_station.each {|train| puts "#{train}"}
  end
  
  def get_trains_list_by_type(type)
    train_amount = 0
    @trains_on_station.each {|train| train_amount += 1 if train.type == type}      
    puts "Количество поездов типа #{type}: #{train_amount}."
  end
  
  def train_departure(train)
    @trains_on_station.delete(train)
  end
end
