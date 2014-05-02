class CreateWorkplaces < ActiveRecord::Migration
  def change
    create_table :workplaces do |t|

      t.timestamps
    end
  end
end
