Feature: Inliner tests

  Scenario: Inline everything
    Given "middleman_inline" feature is "enabled"
    And the Server is running at "test_app"
    When I go to "/"
    Then the css should be inlined
    Then the JavaScript should be inlined
