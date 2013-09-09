require 'selenium-webdriver'
require 'rubygems'
require 'capybara/cucumber'
require 'capybara/dsl'
require 'yaml'

Capybara.default_driver = :selenium

case ENV['DRIVER']
  when 'firefox'
    Capybara.default_driver = :selenium
  else
    Capybara.default_driver = :sauce
end

Capybara.register_driver :selenium do |app|
  puts "Launching Firefox"
  ENV['HTTP_PROXY'] = ENV['http_proxy'] = nil
  profile = Selenium::WebDriver::Firefox::Profile.new 
  profile['browser.fixup.alternate.enabled'] = 'false'
  profile['browser.fixup.alternate.prefix'] = ''
  client = Selenium::WebDriver::Remote::Http::Default.new
  client.timeout = 180
  Capybara::Selenium::Driver.new(app, :browser => :firefox, :http_client => client, :profile => profile)
end
