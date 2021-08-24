class CreateCafes < ActiveRecord::Migration[6.0]
  def change
    create_table :caves do |t|
      t.string      :drink_name,    null: false
      t.text        :text,          null: false
      t.integer     :wifi
      t.integer     :oshare
      t.integer     :shizuka
      t.integer     :concent
      t.integer     :speak
      t.integer     :bright_room
      t.integer     :dark_room
      t.integer     :pet
      t.integer     :smoke_room
      t.string      :address,       null: false
      t.references  :user,          null: false, foreign_key: true
      t.timestamps
    end
  end
end
