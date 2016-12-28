require 'pry'
require 'cucumber-sugar'

Transform /(\d+).*days.*/ do | token |
  binding.pry
end
