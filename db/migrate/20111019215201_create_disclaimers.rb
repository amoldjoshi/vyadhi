class CreateDisclaimers < ActiveRecord::Migration
  def self.up
    create_table :disclaimers do |t|
      t.string :heading
      t.text :content
      t.integer :priority
      t.string :type
      t.integer :typeid

      t.timestamps
    end
  end

  def self.down
    drop_table :disclaimers
  end
end
