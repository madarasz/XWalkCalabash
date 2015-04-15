require 'calabash-android/calabash_steps'

Given /^I (do see|do not see) the text "(.*?)" in webview$/ do |existence, text|
  if (existence == 'do see')
    check_element_exists("org.xwalk.core.internal.XWalkContent css:'div,a' {textContent CONTAINS '#{text}'}")
  else
    check_element_does_not_exist("org.xwalk.core.internal.XWalkContent css:'div,a' {textContent CONTAINS '#{text}'}")
  end
end

Then /^I click the text "(.*?)" in webview$/ do |text|
  touch("org.xwalk.core.internal.XWalkContent css:'div,a' {textContent CONTAINS '#{text}'}")
  sleep(3)
end