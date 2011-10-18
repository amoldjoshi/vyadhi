class FixColumnsBooleanInDiseases2 < ActiveRecord::Migration
  def self.up
  	rename_column :diseases, :condom?, :IsCondom
  	rename_column :diseases, :symptoms?, :IsSymptoms
  	rename_column :diseases, :curable?, :IsCurable
  	
  end

  def self.down
  	rename_column :diseases, :IsCondom, :condom?
  	rename_column :diseases, :IsCurable, :curable?
  	rename_column :diseases, :IsSymptoms, :symptoms?
  end
end
