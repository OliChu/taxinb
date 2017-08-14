class CreateAnimals < ActiveRecord::Migration[5.0]
  def change
    create_table :animals do |t|
      t.string :title
      t.string :address
      t.text :description
      t.integer :daily_price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
