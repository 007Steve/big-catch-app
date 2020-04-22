class User < ActiveRecord::Base
has_secure_password
has_many :catch
validates :name,:email,presence: true
end