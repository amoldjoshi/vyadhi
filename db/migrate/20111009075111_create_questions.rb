class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.integer :disease_id
      t.string :disease_name
      t.text :main_question
      t.string :choice_a
      t.string :choice_b
      t.string :choice_c
      t.string :choice_d
      t.string :correct_choice

      t.timestamps
    end
  end

  def self.down
    drop_table :questions
  end
end
