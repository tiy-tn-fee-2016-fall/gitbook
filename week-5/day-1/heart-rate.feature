Feature: Heart Rate Monitor Form::
    As a user
    I want to be able to see a form to fill out

    Scenario: See the form
        Given I am on the "Home" page
        Then I should see two inputs

        Examples:
            | Placeholder | Label | Name |
            | Initials | Initials | user |
            | BPM | BPM | bpm |
Feature: Heart Rate Monitor List::
    As a user
    I want to see existing heart rate entries

    Scenario: See existing records:
        Given I am on the "Home" page
        And there are existing heart rate entires in the API
        Then I see a list of existing heart rate entries
        And I see a chart of heart rate entries,
        And I see the "BPM Minimum" is 5 less than the minimum recorded BPM
        And I see the "BPM Maximum" is 5 greater than the maximum recorded BPM
Feature: Heart Rate Monitor Submit::
    As a user
    I want to fill out the form to log a BPM reading

    Scenario: The new record shows up
        Given I am on the "Home" page
        And there are <existing> heart rate records
        And submit the form with inputs

        Examples:
            | user | bpm |
            | rft | 100 |
        Then I see there are <existing> + 1 heart rate records
        And I see the last heart rate record is for <user> and <bpm>
