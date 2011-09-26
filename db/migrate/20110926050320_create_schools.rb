class CreateSchools < ActiveRecord::Migration
  def self.up
    create_table :schools do |t|
      t.string :name
      t.integer :number
      t.string :street
      t.string :adresscity
      t.string :adress2
      t.string :state
      t.integer :zip
      t.string :phone
      t.string :fax
      t.string :url
      t.string :type
      t.string :fund
      t.string :grades
      t.integer :student_count
      t.integer :district_id

      t.timestamps
    end
  end

  def self.down
    drop_table :schools
  end
end
