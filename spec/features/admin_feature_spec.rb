require 'rails_helper'
require 'database_cleaner'

feature "Guests cannot access dashboard" do 
  context 'Guests cannot create projects' do
    it "does not allow guest access" do 
      visit root_path
      expect(page).to_not have_link 'New Post'
    end
  end
end

feature "User can access the admin dashboard" do 
  let(:admin_user) {FactoryBot.create :admin_user}

  context "User can view the admin dashboard " do 
    before do 
      admin_user = FactoryBot.create :admin_user
      sign_in_admin
    end

    it 'renders without fail' do 
      visit '/admin/admin_users'
      expect(page).to have_content('Dashboard')
      expect(page).to have_content('admin@example.com')
    end

    it "should display a list of admin users" do 
      visit('/admin/admin_users')
      expect(page).to have_content('Admin Users')
      expect(page).to have_content('admin@example.com')
    end
  end

  context "User can add valid projects and tasks via dashboard" do 
    before do
      admin_user = FactoryBot.create :admin_user
      party      = FactoryBot.create :party 
      sign_in_admin
      visit('/admin/parties/new')
      fill_in('Name', with: 'Party X')
      fill_in('Description', with: 'Big Party!')
      fill_in('Content', with: 'Party on the Beach')
      fill_in('Category', with: 'Beach Party')
      fill_in('Location', with: 'Venice Beach')
      select "2018", :from => "Year"
      select "March", :from => "Month"
      select "30", :from => "Day"
      fill_in('Price', with: "$50")
      visit '/admin/parties/1'
      expect(page).to have_content('Party X')
    end
  end
end