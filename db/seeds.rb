# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


member = Member.create(name: "Shmuly Levitin", password: "123", email: "sam@sam.com", age: 24)
member2 = Member.create(name: "Bassy Levitin", password: "123", email: "sam@bas.com", age: 24)

comm = Community.create(name: "Union st")

CommunityMember.create(member: member, community: comm, facilitator: true)
CommunityMember.create(member: member2, community: comm, facilitator: false)

 bc = Broadcast.create(community: comm, name: "visit grandpa", color: "red")

RequestOffer.create(member: member, assigned: false, content: "lets go tomorrow", offer: false, broadcast: bc)