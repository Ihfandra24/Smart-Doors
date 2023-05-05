Group.find_or_create_by([{ name: "Marketing" }, { name: "IT" }, { name: "Gudang" }])
User.create([{ name: "Ihfazriel", group_id: Group.first.id, email: "soko@gmail.com", phone: "093820398" },  {name: "Yoyo", group_id: Group.last.id, email: "aoks@gmail.com", phone: "091209102" }])
