class AddCwToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :cw_index1, :integer, :default => 0
    add_column :projects, :cw_value1, :integer, :default => 0
    
    add_column :projects, :cw_index2, :integer, :default => 0
    add_column :projects, :cw_value2, :integer, :default => 0
    
    add_column :projects, :cw_index3, :integer, :default => 0
    add_column :projects, :cw_value3, :integer, :default => 0
    
    add_column :projects, :cw_index4, :integer, :default => 0
    add_column :projects, :cw_value4, :integer, :default => 0
    
    add_column :projects, :cw_index5, :integer, :default => 0
    add_column :projects, :cw_value5, :integer, :default => 0
    
    add_column :projects, :cw_index6, :integer, :default => 0
    add_column :projects, :cw_value6, :integer, :default => 0
    
    add_column :projects, :cw_index7, :integer, :default => 0
    add_column :projects, :cw_value7, :integer, :default => 0
    
    add_column :projects, :cw_index8, :integer, :default => 0
    add_column :projects, :cw_value8, :integer, :default => 0
  end
end
