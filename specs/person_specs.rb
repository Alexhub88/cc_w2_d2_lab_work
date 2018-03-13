require "minitest/autorun"
require_relative "../person"

class PersonTest < Minitest::Test
  def setup
    @person1 = Person.new("Bob",78)
    @person2 = Person.new("Timmy",12)
  end

  def test_person_name
    assert_equal("Bob",@person1.name)
  end

  def test_person_age
    assert_equal(12,@person2.age)
  end
end
# EOF
