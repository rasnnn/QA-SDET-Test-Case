Feature: demo sign up page amazon

Scenario: sign up with valid data
Given I new guest
Then I enter my name
And I enter valid email
And I enter valid password
And I enter re-enter password
And I click create your account
Then Redirected to Verify account page

Scenario: sign up with blank data
Given I new guest blank data
Then I enter blank data my name
And I enter blank data email
And I enter blank data password
And I enter blank data re-enter password
And I click create your account blank data
Then showing error

Scenario: sign up with registered data
Given I guest with registered data
Then I enter my name registered
And I enter email registered
And I enter password registered
And I enter re-enter password registered
And I click create your account registered
Then showing error registered
