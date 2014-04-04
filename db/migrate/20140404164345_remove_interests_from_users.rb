class RemoveInterestsFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :interests
  end
end
