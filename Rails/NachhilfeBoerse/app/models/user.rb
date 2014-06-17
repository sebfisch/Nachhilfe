class User < ActiveRecord::Base
    has_many :demands
    has_many :offers
    has_many :appointments
    
    
    validates :name,
           presence: true,
           uniqueness: { case_sensitive: false }

    before_save { self.name = name.downcase }
    
    has_secure_password
    validates :password, length: { minimum: 8 }
end
