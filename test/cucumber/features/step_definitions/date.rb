Given(/^that I have a boring test$/) do
end

Given(/^I need to use some dates$/) do
end

Given(/^I have today's date$/) do
  @today = Time.now
end

When(/^I use step (\d+) days ago$/) do |date_sugar|
  @date_sugar = date_sugar
end

Then(/^the date should be today's date minus ten days ago$/) do
  expect((@today - (10 * 60 * 60 * 24)).to_s).to eq @date_sugar.to_s
end
