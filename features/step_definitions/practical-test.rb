Given /^I go to the amazon home page$/ do
  visit ("#{EnvironmentConfig::home_url}")
end

Then /^I should see the "(.*?)"$/ do |option|
  case option
    when "amazon logo"
      find(:css, 'header #navbar #nav-cross-shop #nav-logo')
    when "amazon search box"
      cssPath = 'header #navbar #nav-bar-outer #nav-bar-inner .nav-searchbar-inner .nav-searchfield-outer '
      cssPath = cssPath + ' .nav-searchfield-inner .nav-searchfield-width #nav-iss-attach #twotabsearchtextbox'
      find(:css, cssPath)
  end
end

Then /^I enter the configured search term into "(.*?)"$/ do |option|
  case option
    when "amazon search box"
      cssPath =  'header #navbar #nav-bar-outer #nav-bar-inner .nav-searchbar-inner .nav-searchfield-outer .nav-searchfield-inner .nav-searchfield-width #nav-iss-attach'
      find(:css, cssPath)
      within(cssPath) do
        find(:css, '#twotabsearchtextbox').set("#{EnvironmentConfig::search_term}")
      end
  end
end

Then /^I hit the search submit button$/ do
  cssPath = 'header #navbar #nav-bar-outer #nav-bar-inner .nav-searchbar-inner .nav-submit-button .nav-submit-input'
  find(:css, cssPath).click
end

Then /^I compare the first result in the list$/ do
  find(:css, '#main #searchTemplate #rightContainerATF #rightResultsATF #center #atfResults')
  within(:css, '#main #searchTemplate #rightContainerATF #rightResultsATF #center #atfResults') do
    all('.prod')[0].find('.rsltL .newp a span', :text => "#{EnvironmentConfig::first_item_price}")
  end
end

Then /^I compare the last result in the list$/ do
  find(:css, '#main #searchTemplate #rightContainerATF #rightResultsATF #centerBelow #btfResults')
  within(:css, '#main #searchTemplate #rightContainerATF #rightResultsATF #centerBelow #btfResults') do
    countedDivs = (all('.prod').count) - 1
    all('.prod')[countedDivs].find('.rsltL .newp a span', :text => "#{EnvironmentConfig::last_item_price}")
  end
end