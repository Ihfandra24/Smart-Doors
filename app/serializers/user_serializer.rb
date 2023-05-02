class UserSerializer
  include JSONAPI::Serializer
  attributes :name, :email, :phone, :group_id
end
