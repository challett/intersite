class InterestRework < ActiveRecord::Migration
  def change
      add_column :user_interests, :user_id, :integer
      add_column :user_interests, :interest_id, :integer
  end
end
