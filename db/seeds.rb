# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

o1 = Organization.create(title: "Facebook")
o2 = Organization.create(title: "Google")
o3 = Organization.create(title: "Amazon")
o4 = Organization.create(title: "Trakstar")

o1.save!
o2.save!
o3.save!
o4.save!

m1 = Member.create(email: "john@mail.com", password: "password", organization_id: o1.id, kudos_count: 1)
m2 = Member.create(email: "mike@mail.com", password: "password", organization_id: o2.id, kudos_count: 2)
m3 = Member.create(email: "jane@mail.com", password: "password", organization_id: o3.id, kudos_count: 3)
m4 = Member.create(email: "joan@mail.com", password: "password", organization_id: o4.id, kudos_count: 4)
m5 = Member.create(email: "bob@mail.com", password: "password", organization_id: o1.id, kudos_count: 6)
m6 = Member.create(email: "stan@mail.com", password: "password", organization_id: o2.id, kudos_count: 5)
m7 = Member.create(email: "mack@mail.com", password: "password", organization_id: o3.id, kudos_count: 4)
m8 = Member.create(email: "kevin@mail.com", password: "password", organization_id: o4.id, kudos_count: 3)

m1.save!
m2.save!
m3.save!
m4.save!
m5.save!
m6.save!
m7.save!
m8.save!


Kudo.create(description: "Nice Work!", member_id: m2.id, 
             given_by_id: m1.id)
Kudo.create(description: "Great Job!", member_id: m3.id, 
             given_by_id: m2.id)
Kudo.create(description: "Awesome Work!", member_id: m4.id, 
             given_by_id: m3.id)
Kudo.create(description: "You Rock", member_id: m1.id, 
             given_by_id: m5.id)
Kudo.create(description: "Great Job!", member_id: m6.id, 
             given_by_id: m4.id)
Kudo.create(description: "Awesome Work!", member_id: m8.id, 
             given_by_id: m2.id)