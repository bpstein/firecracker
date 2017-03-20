class CreateParties < ActiveRecord::Migration[5.0]
  def change
    create_table :parties do |t|
      t.string :name
      t.string :description
      t.text :content
      t.string :category
      t.date :date
      t.string :location
      t.float :price

      t.timestamps
    end
  end
end
