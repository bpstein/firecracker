require 'rails_helper'

RSpec.describe User, type: :model do
  
  let(:user) { create :user }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password) }

  it 'creates user with valide input' do 
    expect { create :user }.to change { User.count }.by(1)
  end
end
