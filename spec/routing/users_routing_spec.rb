require 'spec_helper'

describe UsersController do
  
  describe 'routing' do
    
    it "routes GET /users to :index" do
      expect(get "/users").to route_to("users#index")
    end
    
    it "routes GET /users/create to :create" do
      expect(get "/users/create").to route_to("users#create")
    end
  end
end