Feature: Heart Rate Monitor Form::
    As a user
    I want to be able to see a form to fill out

    Background: Seeing the Form
        Given I am on the "Home" page

    Scenario: See the form
        Then I should see two inputs

        Examples:
            | Placeholder | Label | Name |
            | Initials | Initials | user |
            | BPM | BPM | bpm |
Feature: Heart Rate Monitor List::
    As a user
    I want to see existing heart rate entries

    Background: Seeing the existing records
        Given I am on the "Home" page
        And there are existing heart rate entires in the API

    Scenario: See existing records:
        Then I see a list of existing heart rate entries
        And I see a chart of heart rate entries,
        And I see the "BPM Minimum" is 5 less than the minimum recorded BPM
        And I see the "BPM Maximum" is 5 greater than the maximum recorded BPM
Feature: Heart Rate Monitor Submit::
    As a user
    I want to fill out the form to log a BPM reading

    Background: Seeing the existing records
        Given I am on the "Home" page
        And there are <existing> heart rate records
        And submit the form with inputs

        Examples:
            | user | bpm |
            | rft | 100 |

    Scenario: The new record shows up
        Then I see there are <existing> + 1 heart rate records
        And I see the last heart rate record is for <user> and <bpm>
