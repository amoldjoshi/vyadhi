class AddTestIdToQuestions < ActiveRecord::Migration
  def self.up
    add_column :questions, :test_id, :integer
  end

  def self.down
    remove_column :questions, :test_id
  end
end
