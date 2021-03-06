class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  before_create :create_remember_token
  
  validates :name,  presence: true, length: { maximum: 25 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, 
                    uniqueness: { case_sensitive: false } 
                    
  has_secure_password
  has_many :user_interests
  has_many :user_locations
  has_many :user_schools
  has_many :user_workplaces
  
  has_many :interests, :through => :user_interests
  has_many :workplaces, :through => :user_workplaces
  has_many :schools, :through => :user_schools
  has_many :locations, :through => :user_locations
  
  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.hash(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

    def create_remember_token
      self.remember_token = User.hash(User.new_remember_token)
    end
    
end
