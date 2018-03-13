require "minitest/autorun"
require_relative "../busstop"
require_relative "../person"


class BusStopTest < Minitest::Test
  def setup
    @person1 = Person.new("Bob",78)
    @person2 = Person.new("Timmy",12)
    @busstop = BusStop.new("Kings Cross")
  end

  def test_bus_stop_name
    assert_equal("Kings Cross", @busstop.name)
  end

  def test_bus_stop_queue
    assert_equal(0, @busstop.queue.length)
  end

  def test_add_person_to_queue
    @busstop.add_person_to_queue(@person1)
    assert_equal(1, @busstop.queue.length)
  end
end
