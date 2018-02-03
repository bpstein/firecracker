require 'rails_helper'
Devise::Test::ControllerHelpers

RSpec.describe Admin::PartiesController, type: :controller do

  DatabaseCleaner.clean
  render_views
  let(:admin_user) { FactoryBot.create :admin_user }

  before(:each) do
    DatabaseCleaner.clean
    sign_in admin_user
  end

  describe '#index' do 
    it 'renders the index' do
      FactoryBot.create :party
      get :index 
      expect(response).to have_http_status(:success)
    end
  end

  describe 'edit' do
    it 'renders party form' do
      party = Party.create! name: 'Big Pool Party', description: 'my party', content: 'My first party', category: 'local', date: '3 May 2018', location: 'London', price: 65
      get :edit, params: { id: 1 }
      expect(assigns(:party)).to eq party
    end
  end

  describe 'update' do
    it 'updates party' do
      @party = Party.create! name: 'Small Gathering', description: 'My dinner party', content: 'small meal with friends', category: 'homely', date: '2 Feb 2018', location: 'Paris', price: 65
      patch :update, params: {id: @party, 
        party: FactoryBot.attributes_for(:party, 
          name: 'New Party A', 
          description: 'This is my next party',
          content: 'This is a new and improved party.',
          category: 'small event',
          location: 'Tokyo',
          date: '12 June 2019',
          price: 55,
        )
      }
      expect(assigns(:party).name).to eq 'New Party A'
      expect(assigns(:party).content).to eq 'This is a new and improved party.'
    end
  end
end