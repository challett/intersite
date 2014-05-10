class CreateUserInterests < ActiveRecord::Migration
  def change
    create_table :user_interests do |t|

      t.timestamps
    end
  end
end
