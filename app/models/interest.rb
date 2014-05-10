class Interest < ActiveRecord::Base
  has_many :user_interests
  
  has_many :users, :through => :user_interests
  validates :name,  presence: true, uniqueness:{ case_sensitive: false }
end
