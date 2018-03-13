class Bus
  attr_reader :route, :destination, :passengers
  def initialize(route,destination,passengers)
    @route = route
    @destination = destination
    @passengers = passengers
  end

  def drive
    return "Broom Broom!"
  end

  def count_passengers
    return @passengers.length
  end

  def add_passenger(person)
    return @passengers << person
  end

  def drop_off(person)
    @passengers.delete(person)
  end

  def empty()
    return @passengers.clear()
  end

  def pick_up_stop(stop)
    for person in stop.queue
      @passengers << person
    end
    stop.queue = []
  end

end
