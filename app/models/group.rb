class Group < ApplicationRecord
    has_many :user
    has_many :gate_groups
    validates :name ,uniqueness: true
end
