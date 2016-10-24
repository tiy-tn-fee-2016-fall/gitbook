Feature: Heart Rate Monitor Form::
    As a user
    I want to be able to see a form to fill out
    #Because ... why?  explain the intentions

    Scenario: See the form
        Given I am on the "Home" page
        Then  I should see two inputs

        Examples:
            | Placeholder | Label | Name |
            | Initials | Initials | user |
            | BPM | BPM | bpm |
            
        # Not sure what those examples are doing^?
            
Feature: Heart Rate Monitor List::
    As a user
    I want to see existing heart rate entries
    #Because ... why?  explain the intentions
    
    Scenario: See existing records:
        Given I am on the "Home" page
        And   there are existing heart rate entires in the API
        Then  I see a list of existing heart rate entries
        And   I see a chart of heart rate entries,
        And   I see the "BPM Minimum" is 5 less than the minimum recorded BPM
        And   I see the "BPM Maximum" is 5 greater than the maximum recorded BPM
        
Feature: Heart Rate Monitor Submit::
    As a user
    I want to fill out the form to log a BPM reading
    #Because ... why?  explain the intentions

    Scenario Outline: The new record shows up
    #To loop through your examples, this has to be a scenario outline
        Given I am on the "Home" page
        And   there are <existing> heart rate records
        #There is no key parameter for <existing> in your examples/  Cucumber wont know what to replace it with
        And   submit the form with inputs
        Then  I see there are <existing> + 1 heart rate records
        And   I see the last heart rate record is for <user> and <bpm>
        
        Examples:
            | user | bpm |
            | rft | 100 |
