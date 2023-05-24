class User < ApplicationRecord
    has_secure_password

    belongs_to :group
    #validates_associated :group

    #validates :email, :phone, uniqueness: true, presence: true
    #validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, length: {maximum: 12, minimum: 5}, presence: true
    #validates :phone, numericality: { only_integer: true, message: "only allows Number" }, length: {maximum: 12, minimum: 5}, presence: false
    #validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }, presence: true
    
   # before_validation :ensure_name_has_a_value

    def generate_access_token
        update(access_token: SecureRandom.urlsafe_base64(30),
               expired_at: DateTime.current + 1.hour)
    end

    private
    def ensure_name_has_a_value
        if name.nil?
            self.name = name unless name.blank?
            puts "*" * 100
            
        end
    end
end