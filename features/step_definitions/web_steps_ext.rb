Then /^I should see "([^"]*)" image$/ do |src|
  page.should have_selector("img[src$='#{src}']")
  #page.should have_xpath("//img[@src='#{src}']")
end
