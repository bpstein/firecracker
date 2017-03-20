require 'rails_helper'

RSpec.describe PartyController, type: :controller do

  let(:admin_user) { create :admin_user }

  before(:each) do 
    sign_in admin_user
  end

  describe "GET #index" do
    it "returns http success" do
      party = Party.create! name: 'House Party', 
        description: 'this is a big party',
        content: 'My first party', 
        category: 'Local',
        date: '3 Mar 2018',
        location: 'Austin',
        price: 10.0
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      party = Party.create! name: 'House Party', 
        description: 'this is a big party',
        content: 'My first party', 
        category: 'Local',
        date: '3 Mar 2018',
        location: 'Austin',
        price: 10.0
      get :show, params: { id: 1 }
      expect(response).to have_http_status(:success)
      expect(assigns(:party)).to eq party
    end
  end
end
