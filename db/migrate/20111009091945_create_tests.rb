class CreateTests < ActiveRecord::Migration
  def self.up
    create_table :tests do |t|
      t.integer :disease_id
      t.integer :no_of_correct
      t.integer :no_of_wrong
      t.boolean :pass_or_fail

      t.timestamps
    end
  end

  def self.down
    drop_table :tests
  end
end
