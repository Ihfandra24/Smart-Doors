class UserSerializer
  include JSONAPI::Serializer
  attributes :name, :email, :phone, :group_id, :access_token, :expired_at, :rfid
end
