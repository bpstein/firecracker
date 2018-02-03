# require 'rails_helper'
# Devise::Test::ControllerHelpers

# RSpec.describe Admin::AdminUsersController, type: :controller do
  
#   render_views

#   let(:admin_user_2) { FactoryBot.create :admin_user_2} 

#   before(:each) do
#     DatabaseCleaner.clean
#     sign_in admin_user_2
#   end

#   describe 'edit' do
#     it 'renders user form' do
#       get :edit, params: {id: 2}
#       expect(assigns(:admin_user_2)).to eq admin_user_2
#     end
#   end

#   describe 'update' do
#     it 'updates user' do
#       patch :update, params: { id: 1, admin_user: { email: 'nimda@example.com' }}
#       admin_user.reload
#       expect(admin_user.email).to eq 'nimda@example.com'
#     end
#   end
# end