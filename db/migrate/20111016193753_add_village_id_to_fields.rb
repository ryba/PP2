class AddVillageIdToFields < ActiveRecord::Migration
  def self.up
    add_column :fields, :village_id, :integer
  end

  def self.down
    remove_column :fields, :village_id
  end
end
