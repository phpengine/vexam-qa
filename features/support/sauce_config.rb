require 'selenium-webdriver'
require 'rubygems'
require 'capybara/cucumber'
require 'capybara/dsl'
require 'anticipate'
require 'yaml'
require 'sauce'
require 'sauce/capybara'

World Anticipate

ondemand = YAML.load_file(File.join(File.dirname(__FILE__), '../../config/ondemand.yml'))

puts ENV["BROWSER_TYPE"];

platforms = YAML.load_file(File.join(File.dirname(__FILE__), '../../config/browsers.yml'))[ENV["BROWSER_TYPE"]]

Sauce.config do |config|
  config[:browser] = platforms['browser']
  config[:os] = platforms['os']
  config[:browser_version] = platforms['browser_version']
  config[:name] = platforms['name']
  config[:username] = ondemand["username"]
  config[:access_key] = ondemand["access_key"]
  config[:'max-duration'] = ondemand["max-duration"]
end