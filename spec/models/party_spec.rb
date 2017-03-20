require 'rails_helper'

RSpec.describe Party, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_length_of(:name).is_at_most(100) }
  it { should validate_presence_of(:description) }
  it { should validate_length_of(:description).is_at_most(500) }
  it { should validate_presence_of(:location) }
  it { should validate_presence_of(:category) }
  it { should validate_presence_of(:content) }
  it { should validate_presence_of(:price) }
  it { should validate_numericality_of(:price) }
  it { should validate_presence_of(:date) }
end
