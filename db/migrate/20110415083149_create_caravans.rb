class CreateCaravans < ActiveRecord::Migration
  def self.up
    create_table :caravans do |t|
      t.integer :industry_id
      t.integer :focusing_section_id

      t.timestamps
    end
  end

  def self.down
    drop_table :caravans
  end
end
