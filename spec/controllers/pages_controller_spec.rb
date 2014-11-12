require 'rails_helper'

RSpec.describe PagesController, :type => :controller do

  render_views

  describe "GET home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
    
    it "have a good title" do
      get 'home'
      within('head title') { page.should have_content "Simple App du Tutoriel Ruby on Rails | Accueil" }
      # should have_selector se place sur 'id d'une div 
      #response.should have_selector("title", :content => "Simple App du Tutoriel Ruby on Rails | Accueil")
    end
  end

  describe "GET contact" do
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end
    
    it "have a good title" do
      get 'contact'
      within('head title') { page.should have_content "Simple App du Tutoriel Ruby on Rails | Contact" }
      #response.should have_selector("title", :content => "Simple App du Tutoriel Ruby on Rails | Contact")
    end
  end
  
  describe "GET about" do
    it "returns http success" do
      get :about
      expect(response).to have_http_status(:success)
    end
    
    it "have a good title" do
      get 'about'
      within('head title') { page.should have_content "Simple App du Tutoriel Ruby on Rails | A Propos" }
      #response.should have_selector("title", :content => "Simple App du Tutoriel Ruby on Rails | A Propos")
    end
  end

end
