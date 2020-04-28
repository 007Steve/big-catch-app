class User < ActiveRecord::Base
has_secure_password

has_many :catches

validates :name, :email, presence: true
validates :email, uniqueness: true
end