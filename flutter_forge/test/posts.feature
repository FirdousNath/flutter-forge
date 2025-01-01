
Feature: Posts
    Scenario: Users should see list of Posts
    Given the app is running
    Then I see {CircularProgressIndicator} widget
    When I wait
    Then I see posts list
    And I dont see {CircularProgressIndicator} widget

    Scenario: Users should see error while fetching post
    Given the app is running {sendError:true}
    Then I see {"Api failed error"} text
    And I dont see {CircularProgressIndicator} widget
        