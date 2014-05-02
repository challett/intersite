class CreateUserSchools < ActiveRecord::Migration
  def change
    create_table :user_schools do |t|

      t.timestamps
    end
  end
end
