class User < ApplicationRecord
    has_many :reservations, dependent: :delete_all
    has_many :properties, through: :reservations
    has_many :reviews, dependent: :delete_all
    has_many :reviewed_properties, through: :reviews, source: :property

    has_secure_password

    validates :password, :password_confirmation, presence: true, length: { in: 6..25 }
    validates :first_name, :last_name, presence: true, length: { in: 2..50 }
    validates :email, presence: true, length: { in: 6..50 }
    validates :username, presence: true, uniqueness: true, length: { in: 3..12 }
end
