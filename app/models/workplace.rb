class Workplace < ActiveRecord::Base
  has_many :users, :through => :user_workplaces
end
