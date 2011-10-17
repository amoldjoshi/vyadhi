class CreateProviders < ActiveRecord::Migration
  def self.up
    create_table :providers do |t|
      t.string :name
      t.integer :add_number
      t.string :add_street
      t.string :add_2
      t.string :add_city
      t.string :add_state
      t.integer :add_zip
      t.string :phone
      t.string :url

      t.timestamps
    end
  end

  def self.down
    drop_table :providers
  end
end
