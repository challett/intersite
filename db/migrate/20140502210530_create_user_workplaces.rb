class CreateUserWorkplaces < ActiveRecord::Migration
  def change
    create_table :user_workplaces do |t|

      t.timestamps
    end
  end
end
