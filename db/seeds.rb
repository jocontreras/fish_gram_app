Event.delete_all

Event.create(title: "Beach Party", content: "Enjoy your summer vacation at Boracay")
Event.create(title: "Concert Party", content: "Enjoy your awesome party")
Event.create(title: "Bayanihan Party", content: "Enjoy your summer vacation at Boracay")
Event.create(title: "Swimming Party", content: "Enjoy your awesome party")
Event.create(title: "Beach Volleyball", content: "Enjoy your summer vacation at Boracay")
Event.create(title: "Island Hopping", content: "Enjoy your awesome party")

puts "Created #{Event.count} events"
