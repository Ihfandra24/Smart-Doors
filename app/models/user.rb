class User < ApplicationRecord
    has_secure_password

    belongs_to :group

    # validates :email, :phone, uniqueness: true, presence: true
    # validates :email, format:  {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/}, presence: true
    # validates :phone, numericality: { only_integer: true }, presence: true
    validates :name, presence: true
    validates :rfid, uniqueness: true

   before_create :set_expired_at

    def generate_access_token
        update(access_token: SecureRandom.urlsafe_base64(30),
               expired_at: DateTime.current + 5.minutes)
    end

    private

    def set_expired_at
      self.expired_at = DateTime.now
    end
end
