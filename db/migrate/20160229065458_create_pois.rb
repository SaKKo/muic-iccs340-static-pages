class CreatePois < ActiveRecord::Migration
  def change
    create_table :pois do |t|
      t.text :name
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps null: false
    end
  end
end
