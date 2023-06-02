class GateSerializer
  include JSONAPI::Serializer
  attributes :name, :rfid
end
