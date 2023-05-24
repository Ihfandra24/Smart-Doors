Group.find_or_create_by(name: "Marketing")
Group.find_or_create_by(name: "IT")
Group.find_or_create_by(name: "Gudang")

User.find_or_create_by(name: "Ihfazriel", group_id: Group.first.id, email: "soko@gmail.com",  phone: "093820398").update(password: "12345")
User.find_or_create_by(name: "Yoyo", group_id: Group.last.id, email: "aoks@gmail.com", phone: "091209102").update(password: "67890")

GateGroup.find_or_create_by(gate_id: 1, group_id: 2)

Gate.find_or_create_by(name: "IT Doors")
Gate.find_or_create_by(name: "Marketing Doors")
