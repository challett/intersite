class Location < ActiveRecord::Base
  has_many :user_locations
  has_many :users, :through => :user_locations
  validates :name,  presence: true, uniqueness:{ case_sensitive: false }
end
