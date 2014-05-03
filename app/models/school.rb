class School < ActiveRecord::Base
  has_many :user_schools
  has_many :users, :through => :user_schools
  validates :name,  presence: true, uniqueness:{ case_sensitive: false }
end
