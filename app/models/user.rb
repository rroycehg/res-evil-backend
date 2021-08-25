class User < ApplicationRecord
    has_many :favorites
    has_many :characters, through: :favorites
    has_secure_password

    validates :username, presence: true, uniqueness: true
    validates :password, presence: true
    validates :password_confirmation, presence: true
end
