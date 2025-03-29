Feature: Support for skip-columns argument
  Background:
    Given I open file "tests/feature-skip-columns.org"

  Scenario: set the skip-columns paramater to TODO
    When I go to line "5"
    And I press "C-c C-c"
    Then I should see:
    """
    | DONE |
    |------|
    |      |
    |    2 |
    """
