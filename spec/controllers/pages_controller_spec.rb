require 'rails_helper'

RSpec.describe PagesController, :type => :controller do

  render_views

  before(:each) do
    @base_title = "Simple App du Tutoriel Ruby on Rails"
  end
  
  describe "GET home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
    
    it "render pages#home" do
      get :home
      expect(response).to render_template 'pages/home'
    end
  end

  describe "GET contact" do
    it "returns http success" do
      get :contact
      expect(response).to have_http_status(:success)
    end
    
    it "render pages#contact" do
      get :contact
      expect(response).to render_template 'pages/contact'
    end
  end
  
  describe "GET about" do
    it "returns http success" do
      get :about
      expect(response).to have_http_status(:success)
    end
    
    it "render pages#about" do
      get :about
      expect(response).to render_template 'pages/about'
    end
  end

  describe "GET help" do
    it "returns http success" do
      get :help
      expect(response).to have_http_status(:success)
    end
    
    it "render pages#help" do
      get :help
      expect(response).to render_template 'pages/help'
    end
  end
end
