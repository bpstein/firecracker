class Party < ApplicationRecord
  validates :name, presence: true, length: { maximum: 100 }
  validates :description, presence: true, length: { maximum: 500 }
  validates :content, presence: true
  validates :category, presence: true
  validates :location, presence: true 
  validates :date, presence: true
  validates :price, presence: true, numericality: true
end
