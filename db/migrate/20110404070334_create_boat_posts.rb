class CreateBoatPosts < ActiveRecord::Migration
  def self.up
    create_table :boat_posts do |t|
      t.string :boat_type_id
      t.string :subtype_section_id
      t.string :model_section_id
      t.string :boat_make_section_id
      t.string :boat_model
      t.date :year_model
      t.string :asking_price
      t.string :body_material
      t.string :boat_color
      t.string :length
      t.string :height
      t.string :Width
      t.string :weight
      t.string :Draught
      t.text :Note
      t.string :storage_equipment
      t.string :boats_position_town_type
      t.string :boats_domicile_type_section_id

      t.timestamps
    end
  end

  def self.down
    drop_table :boat_posts
  end
end
