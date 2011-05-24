class CreateCaravanPosts < ActiveRecord::Migration
  def self.up
    create_table :caravan_posts do |t|
      t.string :name
      t.integer :caravan_type_id
      t.integer :caravan_make_section_id
      t.integer :caravan_model_section_id
      t.date :caravan_year_model
      t.string :caravan_asking_price
      t.string :total_owner
      t.string :caravan_length
      t.string :caravan_dead_weight
      t.string :caravan_gross_weigt
      t.text :caravan_information
      t.string :caravan_mileage
      t.integer :caravan_domicile_type_id
      t.integer :caravan_town_type_section_id

      t.timestamps
    end
  end

  def self.down
    drop_table :caravan_posts
  end
end
