require 'time'

module DateSugar
  MINUTE = 60
  HOUR = MINUTE * 60
  DAY = HOUR * 24
  MONTH = DAY * 30
  YEAR = DAY * 365

  def self.date(increment = 0, factor = 0)
    date = @date.nil? ? Time.new : @date
    return date + increment * factor
  end

  def self.today(date)
    if date.is_a? String
      @date = Time.parse date
    elsif date.is_a? Time
      @date = date
    else
      raise 'Invalid format, use Time or String'
    end
  end

end

Transform /^(\d+) days ago$/ do | days |
  DateSugar::date(-days.to_i, DateSugar::DAY)
end

Transform /^(\d+) day ago$/ do | day |
  DateSugar::date(-day.to_i, DateSugar::DAY)
end

Transform /^in (\d+) days$/ do | days |
  DateSugar::date(days.to_i, DateSugar::DAY)
end

Transform /^in (\d+) day$/ do | day |
  DateSugar::date(day.to_i, DateSugar::DAY)
end
