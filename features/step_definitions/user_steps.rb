Given(/^there are the following users:$/) do |table|
  table.hashes.each do |attributes|
  		@user= User.create(attributes)
  		@user.save
  end
end


Given(/^I am logged in as them$/) do
steps(%Q{
Given I am on the homepage
When I follow "Sign in"
And I fill in "Email" with "#{@user.email}"
And I fill in "Password" with "1245676"
And I press "Sign in"
Then I should see "You are signed in as #{@user.email}"
})
end
