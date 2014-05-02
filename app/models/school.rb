class School < ActiveRecord::Base
  has_many :users, :through => :user_schools
end
