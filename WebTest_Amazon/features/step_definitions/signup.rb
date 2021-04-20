require 'watir'
require 'colorize'

browser = Watir::Browser.new :chrome

Given('I new guest') do
browser.goto "https://www.amazon.com/ap/register?showRememberMe=true&openid.pape.max_auth_age=0&openid.return_to=https%3A%2F%2Fwww.amazon.com%2F%3Fref_%3Dnav_custrec_signin&prevRID=JA6RX1J9E36HDZ6RECXY&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=usflex&openid.mode=checkid_setup&prepopulatedLoginId=&failedSignInCount=0&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&pageId=usflex&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0"    
end
  
When('I enter my name') do
  browser.text_field(:id,"ap_customer_name").set("Risky Asn")
  sleep(2)
end
  
When('I enter valid email') do
  browser.text_field(:id,"ap_email").set("lowspace10@gmail.com")
  sleep(2)
end
  
When('I enter valid password') do
  browser.text_field(:id,"ap_password").set("vinividivici2021")
  sleep(2)
end
  
When('I enter re-enter password') do
  browser.text_field(:id,"ap_password_check").set("vinividivici2021")
  sleep(2)
end
  
When('I click create your account') do
  browser.button(:id,"continue").click
  sleep(2)
end
  
Then('Redirected to Verify account page') do
  puts "Succesfully"
  browser.close
end
  
browse = Watir::Browser.new :chrome
Given('I new guest blank data') do
  browse.goto "https://www.amazon.com/ap/register?showRememberMe=true&openid.pape.max_auth_age=0&openid.return_to=https%3A%2F%2Fwww.amazon.com%2F%3Fref_%3Dnav_custrec_signin&prevRID=JA6RX1J9E36HDZ6RECXY&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=usflex&openid.mode=checkid_setup&prepopulatedLoginId=&failedSignInCount=0&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&pageId=usflex&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0"    
end
  
When('I enter blank data my name') do
  browse.text_field(:id,"ap_customer_name").set("")
  sleep(2)
end
  
When('I enter blank data email') do
  browse.text_field(:id,"ap_email").set("")
  sleep(2)
end
  
When('I enter blank data password') do
  browse.text_field(:id,"ap_password").set("")
  sleep(2)
end

When('I enter blank data re-enter password') do
  browse.text_field(:id,"ap_password_check").set("")
  sleep(2)
end
  
When('I click create your account blank data') do
  browse.button(:id,"continue").click
  sleep(2)
end
  
Then('showing error') do
  puts "Succesfully"
  browse.close
end
  
brows = Watir::Browser.new :chrome
Given('I guest with registered data') do
  brows.goto "https://www.amazon.com/ap/register?showRememberMe=true&openid.pape.max_auth_age=0&openid.return_to=https%3A%2F%2Fwww.amazon.com%2F%3Fref_%3Dnav_custrec_signin&prevRID=JA6RX1J9E36HDZ6RECXY&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=usflex&openid.mode=checkid_setup&prepopulatedLoginId=&failedSignInCount=0&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&pageId=usflex&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0"    
end
  
When('I enter my name registered') do
  brows.text_field(:id,"ap_customer_name").set("Risky Asnawawi")
  sleep(2)
end
  
When('I enter email registered') do
  brows.text_field(:id,"ap_email").set("rasnawawi@gmail.com")
  sleep(2)
end
  
When('I enter password registered') do
  brows.text_field(:id,"ap_password").set("Anonymous1101")
  sleep(2)
end

When('I enter re-enter password registered') do
  brows.text_field(:id,"ap_password_check").set("Anonymous1101")
  sleep(2)
end

When('I click create your account registered')do
  brows.text_field(:id,"ap_password_check").set("Anonymous1101")
  sleep(2)
end

Then('showing error registered') do
  puts "Succesfully"
  browse.close
end