class Workplace < ActiveRecord::Base
  has_many :users, :through => :user_workplaces
  validates :name,  presence: true, uniqueness:{ case_sensitive: false }
end
