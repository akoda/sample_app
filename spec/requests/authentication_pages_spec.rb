require 'spec_helper'

describe "Authentication" do
  
  subject { page }
  
  describe "signin page" do 
    before { visit signin_path }
    
    it { should have_selector('h1', text: 'Sign in') }
    it { should have_selector('title', text: 'Sign in') }
  end
  
  describe "after visiting another page" do
    before { visit root_path }
    it { should_not have_selector('div.alert.alert-error') }
  end
end
