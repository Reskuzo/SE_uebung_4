
Feature: Inserting into lists
  Scenario: Insert into List at position 1
  Given I have the following elements in my list:
    | 7.0   |
    | 16.0  |
    | 128.0 |
  When I insert an element with value 42.0 at Position 2
  Then The list should look like this:
    | 7.0   |
    | 16.0  |
    | 42.0  |
    | 128.0 |

    Scenario: Inserting with too high index
      Given I have the following elements in my list:
        | 7.0   |
        | 16.0  |
        | 128.0 |
      When I insert an element with value 42.0 at Position 4
      Then I should get an IndexOutOfBoundsException

      Scenario: Insert into empty list
        Given An empty list
        When I insert 42.0 at position 0
        Then The list should look like this:
        | 42.0 |
