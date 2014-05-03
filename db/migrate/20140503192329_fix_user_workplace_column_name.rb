class FixUserWorkplaceColumnName < ActiveRecord::Migration
  def change
    rename_column :user_workplaces, :location_id, :workplace_id
  end
end
