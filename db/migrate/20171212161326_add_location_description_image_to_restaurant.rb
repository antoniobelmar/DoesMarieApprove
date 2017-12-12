class AddLocationDescriptionImageToRestaurant < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :location, :string
    add_column :restaurants, :description, :string
    add_column :restaurants, :image, :string
  end
end
