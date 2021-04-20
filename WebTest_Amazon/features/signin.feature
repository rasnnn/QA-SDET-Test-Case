Feature: Demo Page Sign in Amazon

Scenario: sign in on amazon web with valid email
Given I am on amazon sign in page 
When I am enter email
And I am click continue button
When I am enter password
And I am click sign in button
Then I should be redirected to home page amazon

Scenario: sign in on amazon web with blank email
Given I am on amazon sign in page blank email 
When I am enter blank email 
And I am click continue button blank email
Then Show error blank email

Scenario: sign in on amazon web with blank password
Given I am on amazon sign in page blank password 
When I am enter email blank password
And I am click continue button blank password
When I am enter password blank password
And I am click sign in button blank password
Then Show error blank password