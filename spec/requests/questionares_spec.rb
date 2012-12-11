require 'spec_helper'

describe "Questionares" do
  it "should have the content 'Survey Questionares'" do
    visit '/questionares' 
    page.should have_content("Survey questionare")

  end
end
  
end
