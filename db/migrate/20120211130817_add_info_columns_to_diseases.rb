class AddInfoColumnsToDiseases < ActiveRecord::Migration
  def self.up
    add_column :diseases, :diseaseinfo, :string
    add_column :diseases, :acquire, :string
    add_column :diseases, :complication, :string
    add_column :diseases, :diagnose, :string
    add_column :diseases, :symptom, :string
    add_column :diseases, :treatment_option, :string
    add_column :diseases, :diseaseinfo_url, :string
    add_column :diseases, :acquire_url, :string
    add_column :diseases, :complication_url, :string
    add_column :diseases, :diagnose_url, :string
    add_column :diseases, :symptom_url, :string
    add_column :diseases, :treatment_option_url, :string
  end

  def self.down
    remove_column :diseases, :treatment_url
    remove_column :diseases, :symptom_url
    remove_column :diseases, :diagnose_url
    remove_column :diseases, :complication_url
    remove_column :diseases, :acquire_url
    remove_column :diseases, :diseaseinfo_url
    remove_column :diseases, :treatment
    remove_column :diseases, :symptom
    remove_column :diseases, :diagnose
    remove_column :diseases, :complication
    remove_column :diseases, :acquire
    remove_column :diseases, :diseaseinfo
  end
end
