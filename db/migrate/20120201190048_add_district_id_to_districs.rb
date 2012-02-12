class AddDistrictIdToDistrics < ActiveRecord::Migration
  def self.up
    add_column :districts, :District_ID,   :string
    add_column :districts, :District_Code, :string
    add_column :districts, :County_ID,     :string
  end

  def self.down
    remove_column :districts, :District_ID
    remove_column :districts, :District_Code
    remove_column :districts, :County_ID
  end
end
