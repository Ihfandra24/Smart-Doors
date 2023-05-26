class Gate < ApplicationRecord
    has_many :gate_groups
    validates :rfid, uniqueness: true
end
