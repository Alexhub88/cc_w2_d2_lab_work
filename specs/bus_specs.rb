require "minitest/autorun"
require_relative "../bus"
require_relative "../person"
require_relative "../busstop"

class BusTest < Minitest::Test

  def setup
    person1 = Person.new("Bob",78)
    @person2 = Person.new("Timmy",12)
    @passengers = [person1,@person2]
    @bus = Bus.new(22,"Kings Cross",@passengers)
    @busstop = BusStop.new("Kings Cross")
  end

  def test_has_route
    assert_equal(22,@bus.route)
  end

  def test_has_destination
    assert_equal("Kings Cross",@bus.destination)
  end

  def test_has_passengers
    assert_equal(@passengers,@bus.passengers)
  end

  def test_drive
    assert_equal("Broom Broom!", @bus.drive)
  end

  def test_count_passengers
    assert_equal(2,@bus.count_passengers)
  end

  def test_pick_up_passenger
    person3 = Person.new("Todd",23)
    @bus.add_passenger(person3)
    assert_equal(3,@bus.count_passengers)
  end

  def test_drop_off
    @bus.drop_off(@person2)
    assert_equal(1,@bus.count_passengers)
  end

  def test_empty_bus
    @bus.empty()
    assert_equal(0,@bus.count_passengers)
  end

  def test_pick_up_stop
    person3 = Person.new("Joe",48)
    person4 = Person.new("Pamela",21)

    @busstop.add_person_to_queue(person3)
    @busstop.add_person_to_queue(person4)

    @bus.pick_up_stop(@busstop)
    assert_equal(4,@bus.count_passengers)
    assert_equal(0,@busstop.queue.length)
  end


end
