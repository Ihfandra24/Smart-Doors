Group.find_or_create_by(name: "Marketing")
Group.find_or_create_by(name: "IT")
Group.find_or_create_by(name: "Gudang")

User.create!(name: "Ihfazriel", group_id: Group.first.id, email: "soko@gmail.com",  phone: "093820398", password: "12345", rfid: '44444')
User.create!(name: "Yoyo", group_id: Group.last.id, email: "aoks@gmail.com", phone: "091209102", password: "67890", rfid: '3333')

Gate.find_or_create_by(name: "IT Doors", rfid: '55555')
Gate.find_or_create_by(name: "Marketing Doors", rfid: '66666')


GateGroup.find_or_create_by(gate_id: 1, group_id: 2)



# rfid string cant double