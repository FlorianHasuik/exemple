require 'rails_helper'

RSpec.describe "LayoutLinks", :type => :request do
  
  before(:each) do
    @base_title = "Simple App du Tutoriel Ruby on Rails"
  end
  
  describe "GET 'home'" do
    it "should be a success" do
      get '/'
      response.should be_success
    end

  end
  
  describe "GET 'help'" do
    it "should be a success" do
      get '/help'
      response.should be_success
    end
  
  end
  
  describe "GET 'contact'" do
    it "should be a success" do
      get '/contact'
      response.should be_success
    end

  end
  
  describe "GET 'about'" do
    it "should be a success" do
      get '/about'
      response.should be_success
    end
  end
end
