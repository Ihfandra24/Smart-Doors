class GateGroup < ApplicationRecord
  belongs_to :gate
  belongs_to :group
  validates :gate_id, uniqueness: { scope: :group_id,
    message: "cant duplicate" }
end
