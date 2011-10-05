class FixColumnsBooleanInDiseases2 < ActiveRecord::Migration
  def self.up
  	rename_column :diseases, :condom?, :IsCondom
  end

  def self.down
  	rename_column :diseases, :IsCondom, :condom?
  end
end
