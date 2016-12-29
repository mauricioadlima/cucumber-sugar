Given(/^that I have a boring test$/) do
end

Given(/^I need to use some dates$/) do
end

Given(/^today's date is "([^"]*)"$/) do |today|
  DateSugar::today today
end

Then(/^the generate date should be "([^"]*)"$/) do |expect_date|
  expect(expect_date).to eq @date_sugar.to_s
end

When(/^I use step "([^"]*)"$/) do |date_sugar|
  @date_sugar = date_sugar
end
