class CreateBoatPosts < ActiveRecord::Migration
  def self.up
    create_table :boat_posts do |t|
      t.integer :boat_type_id
      t.integer :boat_sub_type_id
      t.string :boat_make_id
      t.string :boat_model
      t.date :boat_year_model
      t.string :boat_asking_price
      t.string :boat_body_material
      t.string :boat_color
      t.string :boat_length
      t.string :boat_height
      t.string :boat_width
      t.string :boat_weight
      t.string :boat_draught
      t.string :boat_engine_make_id
      t.date :boat_engine_year_model
      t.string :boat_engine_fuel_type_id
      t.text :boat_note
      t.string :boat_total_owner
      t.string :boat_storage_equipment
      t.integer :boat_domicile_type_id
      t.integer :boat_town_type_section_id

      t.timestamps
    end
  end

  def self.down
    drop_table :boat_posts
  end
end
