class CreateCounties < ActiveRecord::Migration
  def self.up
    create_table :counties do |t|
      t.string :County_ID
      t.string :County_Name
      t.string :State_ID

      t.timestamps
    end
  end

  def self.down
    drop_table :counties
  end
end
