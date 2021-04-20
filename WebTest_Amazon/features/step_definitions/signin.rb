require 'watir'
require 'colorize'

browser = Watir::Browser.new:chrome
Given (/^I am on amazon sign in page$/ ) do
    browser.goto "https://www.amazon.com/ap/signin?openid.pape.max_auth_age=0&openid.return_to=https%3A%2F%2Fwww.amazon.com%2F%3Fref_%3Dnav_ya_signin&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=usflex&openid.mode=checkid_setup&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0&"   
end
When (/^I am enter email$/) do
    browser.text_field(:id,"ap_email").set("rasnawawi@gmail.com")
    sleep(2)
end
And (/^I am click continue button$/) do
    sleep(2)
    browser.button(:id,"continue").click
end
When(/^I am enter password$/) do
    browser.text_field(:id,"ap_password").set("Anonymous1101")
    sleep(2)
end
And (/^I am click sign in button$/) do
    sleep(2)
    browser.button(:id,"signInSubmit").click    
end
Then(/^I should be redirected to home page amazon$/) do
#     $browser.goto "https://www.amazon.com/?ref_=nav_signin&"
puts "Succesfully"
browser.close 
end

browse = Watir::Browser.new:chrome
Given (/^I am on amazon sign in page blank email$/ ) do
    browse.goto "https://www.amazon.com/ap/signin?openid.pape.max_auth_age=0&openid.return_to=https%3A%2F%2Fwww.amazon.com%2F%3Fref_%3Dnav_ya_signin&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=usflex&openid.mode=checkid_setup&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0&"   
end
When (/^I am enter blank email$/) do
    browse.text_field(:id,"ap_email").set(" ")
end
And (/^I am click continue button blank email$/) do
    sleep(2)
    browse.button(:id,"continue").click
end

Then('Show error blank email') do
    puts "Succesfully" 
end

brows = Watir::Browser.new:chrome
Given (/^I am on amazon sign in page blank password$/ ) do
    brows.goto "https://www.amazon.com/ap/signin?openid.pape.max_auth_age=0&openid.return_to=https%3A%2F%2Fwww.amazon.com%2F%3Fref_%3Dnav_ya_signin&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=usflex&openid.mode=checkid_setup&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0&"   
end
When (/^I am enter email blank password$/) do
    brows.text_field(:id,"ap_email").set("rasnawawi@gmail.com")
    sleep(2)
end
And (/^I am click continue button blank password$/) do
    sleep(2)
    brows.button(:id,"continue").click
end
When(/^I am enter password blank password$/) do
    brows.text_field(:id,"ap_password").set("")
    sleep(2)
end
And (/^I am click sign in button blank password$/) do
    sleep(2)
    brows.button(:id,"signInSubmit").click    
end
Then('Show error blank password') do
    puts "Succesfully"
    brows.close
  end
