class AddInformationToAdvancedCategories < ActiveRecord::Migration
  def change
    add_column :locations, :name, :string
    
    add_column :workplaces, :name, :string
    
    add_column :schools, :name, :string
  end
end
