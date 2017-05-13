Feature: Inliner tests
  Background:
    Given "inline" feature is "enabled"

  Scenario: Inline everything in a template
    Given the Server is running at "test_app"
    When I go to "/"
    Then the css should be inlined
    Then the JavaScript should be inlined

  Scenario: Inline everything in a layout
    Given the Server is running at "layout_app"
    When I go to "/"
    Then the css should be inlined
    Then the JavaScript should be inlined
