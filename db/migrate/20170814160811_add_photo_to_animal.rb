class AddPhotoToAnimal < ActiveRecord::Migration[5.0]
  def change
    add_column :animals, :photo, :string
  end
end
