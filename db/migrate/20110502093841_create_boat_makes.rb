class CreateBoatMakes < ActiveRecord::Migration
  def self.up
    create_table :boat_makes do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :boat_makes
  end
end
