Given(/^that today's date was "([^"]*)"$/) do |today|
  DateSugar::today today
end

When(/^I say "([^"]*)"$/) do |x_days_ago|
  @date = x_days_ago
end

Then(/^I hope which the date is "([^"]*)"$/) do |expect_date|
  expect(@date.to_s).to eq expect_date
end

Then(/^if I say "([^"]*)"$/) do |in_x_days|
  @date = in_x_days
end
