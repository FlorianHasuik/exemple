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
    
    it "have a good title" do
      get '/'
      within('head title') { page.should have_content @base_title + " | Accueil" }
      # should have_selector se place sur 'id d'une div 
      #response.should have_selector("title", :content => "Simple App du Tutoriel Ruby on Rails | Accueil")
    end
  end
  
  describe "GET 'help'" do
    it "should be a success" do
      get '/help'
      response.should be_success
    end
    
    it "have a good title" do
      get '/help'
      within('head title') { page.should have_content @base_title + " | Aides" }
      # should have_selector se place sur 'id d'une div 
      #response.should have_selector("title", :content => "Simple App du Tutoriel Ruby on Rails | Accueil")
    end
  end
  
  describe "GET 'contact'" do
    it "should be a success" do
      get '/contact'
      response.should be_success
    end
    
    it "have a good title" do
      get '/contact'
      within('head title') { page.should have_content @base_title + " | Contact" }
      # should have_selector se place sur 'id d'une div 
      #response.should have_selector("title", :content => "Simple App du Tutoriel Ruby on Rails | Accueil")
    end
  end
  
  describe "GET 'about'" do
    it "should be a success" do
      get '/about'
      response.should be_success
    end
    
    it "have a good title" do
      get '/about'
      within('head title') { page.should have_content @base_title + " | A Propos" }
      # should have_selector se place sur 'id d'une div 
      #response.should have_selector("title", :content => "Simple App du Tutoriel Ruby on Rails | Accueil")
    end
  end
end
