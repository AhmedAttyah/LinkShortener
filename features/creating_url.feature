Feature: creating new url 
In order to create a new URL shortener
As a guest/user
I want to be able to do that through an interface

	Scenario: creating URL as a guest with correct inputs
	Given I am on the homepage
	When I follow "New"
	And I fill in "link[in_url]" with "xyz"
	And I fill in "link[out_url]" with "http://google.com"
	And I press "Create Link"
	Then I should see "Link was successfully created."

	Scenario: creating URL as guest with invalid inputs
	Given I am on the homepage
	When I follow "New"
	And I fill in "link[in_url]" with "xyz"
	And I fill in "link[out_url]" with "com"
	And I press "Create Link"
	Then I should see "Link was not created."

	Scenario: creating URL as a guest with correct inputs
	Given there are the following users:
	|email|password|
	|test@test.test|1245676|
	And I am logged in as them
	When I follow "New"
	And I fill in "link[in_url]" with "xyza"
	And I fill in "link[out_url]" with "http://google.com"
	And I press "Create Link"
	Then I should see "Link was successfully created."