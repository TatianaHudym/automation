Given(/^I logged in as "([^"]*)" user and "([^"]*)" password$/) do |username, password| 
	 visit_page(Loginpage).loginmethod username,password
end

Given(/^I should be logged in$/) do 
expect(on(Dashboard).logged_in?).to be true

end

Given(/^I go to Campaigns page$/) do
    on(Dashboard).go_to_campaign_page
end


Given(/^I click on Create Campaign button$/) do
	on(Campaigns).new_campaign
end

Given(/^I enter "([^"]*)" into the Campaign hashtag field and "([^"]*)" description$/) do |hashtag, description|
	if hashtag == 'any'
	@hashtag = 'AutoCampaign' + Faker::Name.unique.name
	else
	@hashtag = hashtag
	end
	on(Campaigns).create_new_campaign @hashtag, description
end


Given(/^I should be on Campaign Dashboard page$/) do
	expect(on(Campaigndashboard).campaign_name_element.text).to eql('#' + @hashtag.downcase)
	
end


Given(/^I click Create new widget button$/) do
   on(Campaigndashboard).create_new_widget
end

Given(/^I select Interactive Gallery$/) do
	on(Campaigndashboard).select_interactive_gallery
end

Given(/^I publish new widget with "([^"]*)" name visible in the Gallery$/) do |name_visible|
if name_visible == 'any'
	@name_visible = 'Auto Interactive Campaign ' + Faker::Name.unique.name
else
	@name_visible = name_visible
end
 on(Campaigndashboard).create_interactive_gallery @name_visible
end


Given(/^I should see widget name on the Campaign Dashboard page$/) do 
 expect(on(Campaigndashboard).widget_item_element.text).to eql(@name_visible) 
end


Given(/^I select Upload widget$/) do
on(Campaigndashboard).select_upload_widget
end

Given(/^I publish it with "([^"]*)" widget name$/) do |widget_name|
if widget_name == 'any'
	@widget_name = 'Auto Uploader ' + Faker::Name.unique.name
else
	@widget_name = widget_name 
end
on(Campaigndashboard).create_uploader @widget_name
end

Given(/^I should see uploader name on the Campaign Dashboard page$/) do
expect(on(Campaigndashboard).widget_item_element.text).to eql(@widget_name)
end 
