class CreateFaqs < ActiveRecord::Migration
  def self.up
    create_table :faqs do |t|
      t.string :heading
      t.text :question
      t.text :answer
      t.integer :priority
      t.string :type
      t.integer :typeid

      t.timestamps
    end
  end

  def self.down
    drop_table :faqs
  end
end
