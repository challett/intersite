class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  before_create :create_remember_token
  
  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, 
                    uniqueness: { case_sensitive: false } 
                    
  has_secure_password
  has_and_belongs_to_many :interests
  
  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.hash(token)
    Digest::SHA1.hexdigest(token.to_s)
  end
  
  def assign_interest(i)
    interests.find_by_name(i) || ( self.interests << 
      interests.find_or_create_by_name(:name => i)).last 
  end

  private

    def create_remember_token
      self.remember_token = User.hash(User.new_remember_token)
    end
end
