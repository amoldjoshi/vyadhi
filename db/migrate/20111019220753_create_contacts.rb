class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :heading
      t.text :content
      t.string :email
      t.string :url
      t.string :type
      t.integer :typeid

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
