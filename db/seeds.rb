Event.delete_all
User.delete_all

Event.create(title: "Beach Party", content: "Enjoy your summer vacation at Boracay")
Event.create(title: "Concert Party", content: "Enjoy your awesome party")
Event.create(title: "Bayanihan Party", content: "Enjoy your summer vacation at Boracay")
Event.create(title: "Swimming Party", content: "Enjoy your awesome party")
Event.create(title: "Beach Volleyball", content: "Enjoy your summer vacation at Boracay")
Event.create(title: "Island Hopping", content: "Enjoy your awesome party")

User.create(email: 'user@example.com', nickname: 'UOne', name: 'User One', password: "monkey67")

puts "Created #{Event.count} events"
puts "Created #{User.count} users"
