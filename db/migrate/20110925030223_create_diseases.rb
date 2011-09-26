class CreateDiseases < ActiveRecord::Migration
  def self.up
    create_table :diseases do |t|
      t.string :name
      t.string :scientific_name
      t.string :video
      t.text :introduction
      t.text :infection_mechanism
      t.text :prevention
      t.text :screening_test
      t.text :treatment
      t.integer :severity_rating

      t.timestamps
    end
  end

  def self.down
    drop_table :diseases
  end
end
