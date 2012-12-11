require 'spec_helper'

describe "signup" do
  
  it "should not create user with unmatched passwords" do
    visit '/users/new'
    
    fill_in "Name",         with: "Example User"
    fill_in "Email",        with: "user@example.com"
    fill_in "Password",     with: "password1"
    fill_in "Password confirmation", with: "password2"
    
    expect { click_button "sign up" }.not_to change(User, :count)

  end
  
  it "should create a user user@example.com, password" do
    visit '/users/new'
    
    fill_in "Name",         with: "Example User"
    fill_in "Email",        with: "user@example.com"
    fill_in "Password",     with: "password"
    fill_in "Password confirmation", with: "password"
    
    expect { click_button "sign up" }.to change(User, :count).by(1)
  end
  
  
  
  

  
end



