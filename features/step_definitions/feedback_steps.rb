Given /^the following users records$/ do |table|
  table.hashes.each do |user|
    User.create(user)
  end
end

Given /^I am logged in as "([^\"]*)" with password "([^\"]*)"$/ do |username, password|
  unless username.blank?
    visit login_url
    fill_in "username", :with => username
    fill_in "password", :with => password
    click_button "Entrar"
  end
end

Given /^the following feedback records$/ do |table|
  table.hashes.each do |user|
    u = User.find_or_create_by_username(user[:username])
    u.feedbacks.create(:start => user[:start], :continue => user[:continue], :stop => user[:stop])
  end
end

Then /^I should have ([0-9]+) feedback for the user "([^\"]*)"$/ do |count, username|
  u = User.find_by_username(username)
  u.feedbacks.count.should == count.to_i
end

# Given /^the following classifieds records$/ do |table|
#   # table is a Cucumber::Ast::Table
#   table.hashes.each do |classified|
#     Classified.create(classified)
#   end
# end
