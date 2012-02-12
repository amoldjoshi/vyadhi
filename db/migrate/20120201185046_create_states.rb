class CreateStates < ActiveRecord::Migration
  def self.up
    create_table :states do |t|
      t.string :State_ID
      t.string :State_Name

      t.timestamps
    end
  end

  def self.down
    drop_table :states
  end
end
