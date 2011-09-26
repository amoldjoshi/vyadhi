class AddDiseaseDetailsToDiseases < ActiveRecord::Migration
  def self.up
    add_column :diseases, :microbes, :string
    add_column :diseases, :severity, :string
    add_column :diseases, :curable?, :boolean
    add_column :diseases, :symptoms?, :boolean
    add_column :diseases, :condom?, :boolean
  end

  def self.down
    remove_column :diseases, :condom?
    remove_column :diseases, :symptoms?
    remove_column :diseases, :curable?
    remove_column :diseases, :severity
    remove_column :diseases, :microbes
  end
end
