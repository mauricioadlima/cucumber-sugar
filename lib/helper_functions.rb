require 'time'

module HelperFunctions
  MAX_INTEGER = 2_147_483_647
  MIN_INTEGER = -2_147_483_648
  MAX_LONG = 922_337_203_685_477_807
  MIN_LONG = -922_337_203_685_477_808
  ONE_DAY = 60 * 60 * 24

  def any_string(quantity_characters = 10)
    rand(36**quantity_characters.to_i).to_s(36)
  end

  def any_number(max_number = 1000)
    rand(max_number)
  end

  def today(days = 0)
    Time.now + (days * ONE_DAY) if days > 0
    Time.now - ((days * -1) * ONE_DAY)
  end

  def yesterday
    today(-1)
  end

  def tomorrow
    today(1)
  end
end
