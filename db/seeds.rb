# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


member = Member.create(name: "Bob Belcher", password: "123", email: "bob@lighthouseapp.com", age: 44, image: 'https://i.pinimg.com/originals/49/83/2e/49832e1192afcb2562c51320fd74eba4.jpg')
member2 = Member.create(name: "Linda Belcher", password: "123", email: "linda@lighthouseapp.com", age: 38, image: "https://i.pinimg.com/originals/10/fb/be/10fbbecb2ac235254f4f7a4fae94ffcc.jpg")
member3 = Member.create(name: "Tina Belcher", password: "123", email: "tina@lighthouseapp.com", age: 17, image: "https://pbs.twimg.com/profile_images/424545820701380608/yPzDOtaS.jpeg")
member4 = Member.create(name: "Louise Belcher", password: "123", email: "louise@lighthouseapp.com", age: 11, image: "https://cdn.now.howstuffworks.com/media-content/ec1fc006-bb48-4fc6-b988-b2fccf16f902-1920-1080.jpg")
member5 = Member.create(name: "Gene Belcher", password: "123", email: "gene@lighthouseapp.com", age: 10, image: "https://static.wikia.nocookie.net/bobsburgerpedia/images/f/fb/Gene-1.jpg/revision/latest?cb=20150727145612")

comm = Community.create(name: "Ocean City", password: "123")

CommunityMember.create(member: member, community: comm, facilitator: true)
CommunityMember.create(member: member2, community: comm, facilitator: false)
CommunityMember.create(member: member3, community: comm, facilitator: false)
CommunityMember.create(member: member4, community: comm, facilitator: false)
CommunityMember.create(member: member5, community: comm, facilitator: false)

bc = Broadcast.create(community: comm, name: "basic", color: "blue")
Broadcast.create(community: comm, name: "miscellaneous", color: "green", start_date: "1", end_date: "1", location: "1", people: 1, time: "1", url: "1", list: ["1"])
Broadcast.create(community: comm, name: "hospital visits", color: "red", start_date: "1", location: "mount sinai hospital", people: 1, time: "1")

RequestOffer.create(member: member, assigned: false, title: "plumbing", content: "need someone to fix my kitchen sink", offer: false, broadcast: bc, people: 1)
RequestOffer.create(member: member3, assigned: false, title: "zombies", content: "I'm being attacked by attractive zombies and i don't know what to do!", offer: false, broadcast: bc, people: 1)
RequestOffer.create(member: member5, assigned: false, title: "plumbing", content: "need prune juice asap!", offer: false, broadcast: bc, people: 1)
