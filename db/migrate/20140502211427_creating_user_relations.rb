class CreatingUserRelations < ActiveRecord::Migration
  def change
    add_column :user_locations, :user_id, :integer
    add_column :user_locations, :location_id, :integer
    
    add_column :user_workplaces, :user_id, :integer
    add_column :user_workplaces, :location_id, :integer
    
    add_column :user_schools, :user_id, :integer
    add_column :user_schools, :school_id, :integer
  end
end
