require 'watir-webdriver'
require 'cucumber'


Given(/^users goes to Google$/) do
  @browser = Watir::Browser.new :safari
  @browser.goto("https://www.google.com")
end

When(/^the user searches for "([^"]*)"$/) do |arg|
  @browser.text_field(:id => "lst-ib").set "#{arg}"
  @browser.send_keys :return
end

Then(/^Google should return results for "([^"]*)"$/) do |arg|
  @browser.div(:id => "main").wait_until_present
  assert(@browser.element(:text => "#{arg}"))
  @browser.close
end