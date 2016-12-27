Transform /^STRING\([0-9]*\)$/ do |token|
  eval token
end
