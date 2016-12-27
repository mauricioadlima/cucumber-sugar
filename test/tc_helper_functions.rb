require_relative "../lib/helper_functions"
require "test/unit"

class TestHelperFunctions < Test::Unit::TestCase
  include HelperFunctions

  def test_max_integer
    assert_equal(2_147_483_647, MAX_INTEGER)
  end

  def test_min_integer
    assert_equal(-2_147_483_648, MIN_INTEGER)
  end

  def test_max_long
    assert_equal(922_337_203_685_477_807, MAX_LONG)
  end

  def test_min_long
    assert_equal(-922_337_203_685_477_808, MIN_LONG)
  end

  def test_any_string
    assert(any_string(50).length <= 50)
    assert(any_string.length <= 10)
  end

  def test_any_number
    assert(any_number(10) <= 10)
    assert(any_number <= 1000)
  end

  def test_today
    assert_equal(Time.new.to_s, today.to_s)
    assert_equal((Time.new - 2 * 60 * 60 * 24).to_s, today(-2).to_s)
    assert_equal((Time.new + 2 * 60 * 60 * 24).to_s, today(2).to_s)
  end

  def test_yesterday
    assert_equal((Time.new - 60 * 60 * 24).to_s, yesterday.to_s)
  end

  def test_tomorrow
    assert_equal((Time.new + 60 * 60 * 24).to_s, tomorrow.to_s)
  end
end
