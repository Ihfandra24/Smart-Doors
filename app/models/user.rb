class User < ApplicationRecord
    belongs_to :group
    validates :name, :email, :phone, presence: true
  before_validation :ensure_name_has_a_value

private
def ensure_name_has_a_value
  if name.nil?
    self.name = name unless name.blank?
    puts "x" * 100
  end
end
end