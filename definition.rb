require 'rspec'

calculator = Calculator.new
result = 0

Given /I have entered (.*) into the calculator/ do |n|
  calculator.push(n.to_i)
end

When(/^I press add$/) do
  result = calculator.add
end

Then(/^the result should be (\d+) on the screen$/) do |sum|
  expect(result).to eq sum.to_i
end
