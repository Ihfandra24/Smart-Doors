class Gate < ApplicationRecord
    has_many :gate_groups
    validates :rfid, uniqueness: true

    def self.rfid_access_from_to(from, to)
      joins(gate_groups: [group: :user]).where(users: {rfid: from}, gates: {rfid: to})
    end
end
