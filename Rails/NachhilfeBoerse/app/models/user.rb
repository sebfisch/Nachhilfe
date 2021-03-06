class User < ActiveRecord::Base
    has_many :demands, :dependent => :destroy
    has_many :offers, :dependent => :destroy
    has_many :appointments, :dependent => :destroy
    
    
    validates :name,
           presence: true,
           uniqueness: { case_sensitive: true }

    has_secure_password
    validates :password, length: { minimum: 8 }
    
    def User.new_remember_token
      SecureRandom.urlsafe_base64
    end
    
    def User.digest token
      Digest::SHA1.hexdigest(token.to_s)
    end
end
