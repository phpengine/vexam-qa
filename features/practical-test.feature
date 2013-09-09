Feature: Practical Test One
  As a user of Amazon
  I want to search the term ipad
  So that I can use the information to decide whether or not to buy an ipad

  @practical_test_one
  Scenario: Check the amazon home page can be found
    Given I go to the amazon home page
    Then I should see the "amazon logo"
    And I should see the "amazon search box"
    When I enter the configured search term into "amazon search box"
    Then I hit the search submit button
    Then I should see the "amazon logo"
    # Then I find and count the top result lists
    Then I compare the first result in the list

  @practical_test_two
  Scenario: Check the amazon home page can be found
    Given I go to the amazon home page
    Then I should see the "amazon logo"
    And I should see the "amazon search box"
    When I enter the configured search term into "amazon search box"
    Then I hit the search submit button
    Then I should see the "amazon logo"
    # Then I find and count the bottom result lists
    Then I compare the last result in the list

#  @smoke @homepage @smoke_stage_2_10 @smoke_stage_1_2
#  Scenario: Subscribe section should be displayed with link
#    Given I start on the home page
#    Then I should see first sidebar box subscribe