class Catch < ActiveRecord::Base
    belongs_to :user
    
    validates :name, :image, :length, :weight, presence: true
end
