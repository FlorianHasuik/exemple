require 'rails_helper'

RSpec.describe UsersController, :type => :controller do

  render_views

  before(:each) do
    @base_title = "Simple App du Tutoriel Ruby on Rails"
  end
  
  describe "GET new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
    it "render user#new" do
      get :new
      expect(response).to render_template 'users/new'
    end
   
  end

end
