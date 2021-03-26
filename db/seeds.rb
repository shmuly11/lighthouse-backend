# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


member = Member.create(name: "Bob Belcher", password: "123", email: "bob@lighthouseapp.com", age: 44)
member2 = Member.create(name: "Linda Belcher", password: "123", email: "linda@lighthouseapp.com", age: 40)

comm = Community.create(name: "11213", password: "123")

CommunityMember.create(member: member, community: comm, facilitator: true)
CommunityMember.create(member: member2, community: comm, facilitator: false)

bc = Broadcast.create(community: comm, name: "basic", color: "blue")
Broadcast.create(community: comm, name: "miscellaneous", color: "green", start_date: "1", end_date: "1", location: "1", people: 1, time: "1", url: "1", list: ["1"])
Broadcast.create(community: comm, name: "hospital visits", color: "red", start_date: "1", location: "mount sinai hospital", people: 1, time: "1")

RequestOffer.create(member: member, assigned: false, title: "plumbing", content: "need someone to fix my kitchen sink", offer: false, broadcast: bc)