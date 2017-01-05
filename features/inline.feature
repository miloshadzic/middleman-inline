Feature: Inliner tests

  Scenario: Do something
    Given "middleman_inline" feature is "enabled"
    And the Server is running at "test_app"
    When I go to "/"
    Then the css should be inlined
