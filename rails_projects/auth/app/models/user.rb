class User < ActiveRecord::Base

  # rails g model user email:string password_digest:string
  has_secure_password
    
  attr_accessible :email, :password, :password_confirmation

  validates_presence_of :password, :on => :create
  validates_confirmation_of :password
  validates_presence_of :email
  validates_uniqueness_of :email
  
  before_create { generate_token(:auth_token) }
    
  def send_password_reset
    generate_token(:password_reset_token)
    self.password_reset_sent_at = Time.zone.now
    save!
    UserMailer.password_reset(self).deliver
  end
      
  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end
  
  # attr_accessor :password
  # before_save :encrypt_password
  # 
  # def self.authenticate(email, password)
  #  user = find_by_email(email)
  #  if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
  #    user
  #  else
  #    nil
  #  end
  # end
  
  # def encrypt_password
  #  if password.present?
  #    self.password_salt = BCrypt::Engine.generate_salt
  #    self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
  #  end
  # end
end
