class AddLatitudeToCafes < ActiveRecord::Migration[6.0]
  def change
    
    add_column :caves, :latitude, :float
    add_column :caves, :longitude, :float
  end
end
