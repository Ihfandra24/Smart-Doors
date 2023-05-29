gr1 = Group.find_or_create_by(name: "Marketing")
gr2 = Group.find_or_create_by(name: "IT")
gr3 = Group.find_or_create_by(name: "Gudang")
gr4 = Group.find_or_create_by(name: "Direksi")

# u1 = User.create!(name: "Ihfazriel", group_id: Group.first.id, email: "soko@gmail.com",  phone: "093820398", password: "12345", rfid: '44444')
# User.create!(name: "Yoyo", group_id: Group.last.id, email: "aoks@gmail.com", phone: "091209102", password: "67890", rfid: '3333')
# User.create!(name: "Mirza", group_id: Group.find_by(name: "IT").id, email: "mirzalazuardi@gmail.com", phone: "081573088881", password: "12345678", rfid: '1111')
# User.create!(name: "Ryan", group_id: Group.first.id, email: "asokd@gmail.com", phone: "089763521234", password: "987654321", rfid: '2222')
# User.create!(name: "Haikal", group_id: Group.first.id, email: "aaaaasokd@gmail.com", phone: "0897635999", password: "987654321", rfid: '5555')
User.create!(name: "Pak Dedi", group_id: Group.find_by(name: "Direksi").id, email: "abbbbasokd@gmail.com", phone: "089123124999", password: "987654321", rfid: '123')

gt1 = Gate.find_or_create_by(name: "IT Doors", rfid: '55555')
gt2 = Gate.find_or_create_by(name: "Marketing Doors", rfid: '66666')
gt3 = Gate.find_or_create_by(name: "Gudang Doors", rfid: '77777')


GateGroup.find_or_create_by(gate_id: 1, group_id: 2)
GateGroup.find_or_create_by(gate_id: gt2.id, group_id: gr1.id)
GateGroup.find_or_create_by(gate_id: gt2.id, group_id: gr4.id)
GateGroup.find_or_create_by(gate_id: gt1.id, group_id: gr4.id)
GateGroup.find_or_create_by(gate_id: gt3.id, group_id: gr4.id)



# rfid string cant double