class User < ActiveRecord::Base
    has_many :demands
    has_many :offers
    has_many :appointments
    
    
    validates :name,
           presence: true,
           uniqueness: { case_sensitive: true }

    has_secure_password
    validates :password, length: { minimum: 8 }
end
