class AddImageUrlToDiseases < ActiveRecord::Migration
  def self.up
    add_column :diseases, :image_url, :string
  end

  def self.down
    remove_column :diseases, :image_url
  end
end
