class CreateAbouts < ActiveRecord::Migration
  def self.up
    create_table :abouts do |t|
      t.string :heading
      t.text :content
      t.integer :priority
      t.string :type
      t.integer :typeid

      t.timestamps
    end
  end

  def self.down
    drop_table :abouts
  end
end
