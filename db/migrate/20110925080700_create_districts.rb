class CreateDistricts < ActiveRecord::Migration
  def self.up
    create_table :districts do |t|
      t.string :name
      t.string :city
      t.string :county
      t.integer :number
      t.string :street
      t.string :addresscity
      t.string :address2
      t.string :state
      t.integer :zip
      t.string :phone
      t.string :fax
      t.string :url
      t.integer :rating
      t.integer :student_count
      t.integer :elementary_school_count
      t.integer :middle_school_count
      t.integer :high_school_count
      t.integer :other_school_count
      t.decimal :budget
      t.decimal :budget_per_pupil
      t.decimal :budget_per_pupil_state
      t.integer :enrollment

      t.timestamps
    end
  end

  def self.down
    drop_table :districts
  end
end
