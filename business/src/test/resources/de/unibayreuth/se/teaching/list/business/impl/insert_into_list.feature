
Feature: Inserting into lists
  Scenario: Insert into List at the middle
  Given I have elements with the following values in my list:
    | 7.0   |
    | 16.0  |
    | 128.0 |
  When I insert an element with value 42.0
  Then The list should look like this:
    | 7.0   |
    | 16.0  |
    | 42.0  |
    | 128.0 |

  Scenario: Inserting into unsorted List
      Given I have elements with the following values in my list:
        | 7.0   |
        | 80.0  |
        | 12.80 |
      When I insert an element with value 42.0
      Then The list should look like this:
        | 7.0   |
        | 42.0  |
        | 80.0  |
        | 12.80 |

  Scenario: Insert into empty list
      Given an empty list
      When I insert an element with value 42.0
      Then The list should look like this:
      | 42.0 |
