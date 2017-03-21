require 'rails_helper'

# feature 'Pages display correct content', js: true do
#   # Capybara.current_session.driver.browser.manage.window.resize_to(1024, 768)
#   # let(:markdown) { double(:markdown) }

#   before do
#     # StripeMock.start
#     # Stripe::Customer.create email: 'me@me.com', card: 'valid_card_token'
#   end

#   context 'Home page shows correct content' do
#     it 'should display landing page content' do
#       visit('/')
#       # expect(page).to have_content('BUILD FINANCIAL MODELS')
#       # expect(page).to have_content('Learn to build high quality financial models')
#     end

#     it 'should display a full navbar' do
#       visit('/')
#       # expect(page).to have_content('Firecracker')
#       # expect(page).to have_content('COURSES')
#       # expect(page).to have_content('ABOUT')
#       # expect(page).to have_content('SUBSCRIBE')
#     end

#     it 'should display sign up and login links' do 
#       visit('/')
#       expect(page).to have_content('SIGN UP')
#     end
#   end

#   context 'home page shows a list of parties' do
#     it 'should show available parties' do
#       create :party
#       visit('/party')
#       expect(page).to have_content('PROJECT1')
#     end
#   end

#   context 'home page links to complete list of parties' do 
#     it "should show all available parties" do 
#       create :party
#       visit('/')
#       click_link('SHOW ME EVERYTHING!')
#       expect(current_path).to eq('/party')
#       expect(page).to have_content('PARTY1')
#     end
#   end

#   context 'user logged in' do
#     before do
#       Party.create name: 'PARTY Z', content: 'My first party', price: 65
#       # sign_up
#     end

#     it 'contains valid party link' do
#       visit('/party')
#       expect(page).to have_css('a[href="/party/1"]', text: 'PARTY Z')
#     end

#     # it 'adds a chosen party to my projects' do
#     #   visit('/project/1')
#     #   click_button 'Take Course!'
#     #   pay_stripe
#     #   visit('/myprojects')
#     #   expect(page).to have_content('PROJECT Z')
#     # end
#   end

#   # context 'user not logged in' do
#   #   it 'redirects user to login if not logged in' do
#   #     create :project
#   #     visit '/project/1'
#   #     click_button 'Take Course!'
#   #     expect(current_path).to eq('/login')
#   #   end
#   # end
# end
