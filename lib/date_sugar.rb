require 'time'

module DateSugar
  ONE_DAY = 60 * 60 * 24
  
  def self.today(days = 0)
    Time.now + (days * ONE_DAY) if days > 0
    Time.now - ((days * -1) * ONE_DAY)
  end

end
