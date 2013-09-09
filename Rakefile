require 'cucumber/rake/task'
require 'rake'
require 'rubygems'
require 'yaml'


Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = '--format progress --format json --out build-reports/prototype_cucumber.json --color -- BROWSER_TYPE=ie DRIVER=sauce'
end

Cucumber::Rake::Task.new(:test_group_1_ie) do |t|
  t.cucumber_opts = '--format progress --format json --out build-reports/test_group_1_ie.json --tags @practical_test_one --color -- BROWSER_TYPE=ie DRIVER=sauce'
end

Cucumber::Rake::Task.new(:test_group_2_ie) do |t|
  t.cucumber_opts = '--format progress --format json --out build-reports/test_group_2_ie.json --color -- BROWSER_TYPE=ie DRIVER=sauce'
end

Cucumber::Rake::Task.new(:test_group_1_chrome) do |t|
  t.cucumber_opts = '--format progress --format json --out build-reports/test_group_1_chrome.json --color -- BROWSER_TYPE=chrome DRIVER=sauce'
end

Cucumber::Rake::Task.new(:test_group_2_chrome) do |t|
  t.cucumber_opts = '--format progress --format json --out build-reports/test_group_2_chrome.json --color -- BROWSER_TYPE=chrome DRIVER=sauce'
end

task :default => :features