class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :url
      t.float :latitude
      t.float :longitude
      t.string :image_url
      t.string :address
      t.string :description
      t.integer :zip_code
      t.float :score
      t.string :phone
      t.string :yelp_id

      t.timestamps
    end
  end
end
