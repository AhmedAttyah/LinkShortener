require 'spec_helper'

describe "When visiting the home page" do

   it "should show a route add button" do
   		visit "/"
   		page.should have_content("Latest Links By Users and Guests")
   end
end

