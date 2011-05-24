class CreateCarPosts < ActiveRecord::Migration
  def self.up
    create_table :car_posts do |t|
      t.string :type_id
      t.string :make_section_id
      t.string :model_section_id
      t.string :subtype
      t.date :year_model
      t.date :registration
      t.date :inspection_date
      t.string :color_id
      t.string :color_type_id
      t.string :price
      t.string :register_number
      t.text :information
      t.string :mileage
      t.string :engine_size_id
      t.string :drive_type_id
      t.string :fuel_type_id
      t.string :gearbox_type_id
      t.string :power
      t.string :emission
      t.string :top_speed
      t.string :acceleration
      t.string :weight
      t.string :domicile_type_id
      t.string :town_type_id

      t.timestamps
    end
  end

  def self.down
    drop_table :car_posts
  end
end
