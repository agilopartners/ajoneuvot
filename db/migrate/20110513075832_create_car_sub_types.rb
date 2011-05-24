class CreateCarSubTypes < ActiveRecord::Migration
  def self.up
    create_table :car_sub_types do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :car_sub_types
  end
end