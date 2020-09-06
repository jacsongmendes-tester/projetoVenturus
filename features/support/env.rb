require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "rspec"


case ENV["BROWSER"]
when "firefox"
@driver = :selenium
when "chrome"
@driver = :selenium_chrome
when "headless"
@driver = :selenium_chrome_headless
else
    puts "Browser Invalido"
end

Capybara.configure do |config|
    config.default_driver =  @driver
    config.default_max_wait_time = 60
    config.app_host = 'http://localhost:3000/'    
end 
