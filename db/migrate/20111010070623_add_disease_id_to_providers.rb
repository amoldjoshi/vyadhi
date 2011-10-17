class AddDiseaseIdToProviders < ActiveRecord::Migration
  def self.up
    add_column :providers, :disease_id, :integer
  end

  def self.down
    remove_column :providers, :disease_id
  end
end
