class User < ApplicationRecord
    has_many :favorite_watches
    has_many :watches , through: :favourite_watches
    has_secure_password
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true
end
