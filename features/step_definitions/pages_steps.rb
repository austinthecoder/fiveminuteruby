Then /^I should see the about page$/ do
  within("h2") { page.should have_content("About This Site") }
end