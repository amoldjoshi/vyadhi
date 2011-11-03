class AddColumnMouseoverUrlToDiseases < ActiveRecord::Migration
  def self.up
    add_column :diseases, :mouseover_url, :string
  end

  def self.down
    remove_column :diseases, :mouseover_url
  end
end
