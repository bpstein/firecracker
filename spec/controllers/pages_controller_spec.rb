require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  it 'displays home page' do 
    get :home
    expect(response).to render_template('home')
  end
end
