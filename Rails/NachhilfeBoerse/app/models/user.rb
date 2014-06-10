class User < ActiveRecord::Base
    has_many :demands
    has_many :offers
    has_many :appointments
end
