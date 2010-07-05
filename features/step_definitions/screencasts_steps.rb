Given /^the site has some screencasts$/ do
  2.times { Factory(:screencast) }
end

##################################################

Then /^I should see the screencasts$/ do
  within("#screencasts") do
    Screencast.all.each do |s|
      within("#screencast_#{s.id}") do
        within(".title") { page.should have_content(s.title) }
        within(".description") { page.should have_content(s.description) }
      end
    end
  end
end